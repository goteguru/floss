<?php
# db editor
error_reporting(E_ALL);
$database = "database/paper.sqlite"; 
$editor = new Editor($database);

#die();
#
#	Controller :)
#

if (isset($_POST['store'])) {
	$editor->store($_POST['store']);
	if (isset($_GET['paper'])) header('Location: tool.php?paper='.$_GET['paper']);
	die($_POST['store']. " stored.");
} elseif (isset($_GET['save'])) { # save temporary list
	$editor->save();
	header('Location: tool.php');
} elseif (isset($_POST['list'])) { # set search results
	$fields = ['ZotKey', 'Title', 'Purpose', 'Type', 'Topic'];
	$order = ['InsertDate','Topic', 'Title'];
	$editor->setSearchResults($_POST['list']);
	$editor->showSearchResults($fields,$order);
} elseif (isset($_GET['list'])) { # show results
	$fields = ['ZotKey', 'Title', 'Purpose', 'Type', 'Topic','InsertDate'];
	$order = ['InsertDate','Topic', 'Title'];
	$editor->showSearchResults($fields,$order);
} elseif (isset($_GET['paper'])) {
	$editor->show($_GET['paper']);
} elseif (isset($_GET['json'])) {
	switch ($_GET['json']) {
	case "byYear":		$editor->statByYear(getdef('categ','Tipus')); break;
	case "byCateg": 	$editor->statByCateg(getdef('cat1','Tipus'), getdef('cat2','Biztonsag')); break;
	case "sqlScatter": 	$editor->sqlScatter(getdef('sqlx',''), getdef('sqly','')); break;
	case "sqlBar": 		$editor->sqlBar(getdef('sql','')); break;
	case "sums": 		$editor->statistics(); break;
	default: die('unknown statistics');
	}
} elseif (isset($_GET['stat'])) {
	include "tool_statistics.phtml";
} elseif (isset($_GET['chart'])) {
	$chart=$_GET['chart'];
	$categories = Editor::categories;
	switch ($chart){
	case 'byYear': 	
			$categ = getdef('categ', 'Tipus');
			include "tool_chart.phtml";
			break;
	case 'byCateg':	
			$cat1 = getdef('cat1', 'Tipus');
			$cat2 = getdef('cat2', 'Biztonsag');
			include "tool_chart_scatter.phtml";
			break;
	case 'SQLScatter':	
			$title = getdef('title', 'Scatter');
			$sqlx = getdef('sqlx', 'SELECT ZotKey as id, Year as value FROM papers WHERE Empirical="PRI"');
			$sqly = getdef('sqly', 'SELECT ZotKey as id, value FROM properties WHERE Property = "SEC"');
			include "tool_sql_scatter.phtml";
			break;
	case 'SQLBar':	
			$title = getdef('title', 'BarChart of ...');
			$sql = getdef('sql', 'SELECT Year as group, Type as value, count(*) as DB FROM papers');
			include "tool_sql_bar.phtml";
			break;
	default: 	
			die ("unknown schart $chart");
	}
} else {
	$editor->search();
}


function getdef($var, $def) {
	return (isset($_GET[$var]) ? $_GET[$var] : $def);
}

#
# Editor osztály
#

class Editor {
	protected $dataFields = ['Title','Author','InsertDate','Purpose'];
	const prop1Fields = ["Type", "Empirical", "Topic", "Year"];
	const propNFields = ["OSP", "MTH", "SEC", "FLG", "CTR"];
	const categories = ["OSP", "MTH", "SEC", "FLG", "CTR", "Type", "Empirical", "Topic", "Year"];

	protected $srcTab = 'papers'; # lehetséges értékeket innen vesszük
	protected $srcTabProp = 'properties';

	protected $dstTab = 'work'; 	# Ezeket a táblákat módosítjuk
	protected $dstTabProp = 'propwork';
	protected $options = [];

	function __construct($dbname) {
		$this->db = new PDO ( 
			"sqlite:$dbname" , '','',
			array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION) 
		) or die('Database not found:'.$dbname);
		$this->readOptions();
		$this->paper = new stdClass();
	}

	# 
	# Get Static options data
	#
	
	function readOptions() {
		# multiple properties
		$st = $this->db->query(
			"SELECT Property, Value, Magyar AS Description FROM (
			SELECT DISTINCT Property, Value FROM $this->srcTabProp 
			UNION
			SELECT DISTINCT Property, Value FROM $this->dstTabProp 
			) LEFT JOIN prop_values ON Property=prid AND Value=vid ORDER BY Description
			");
		while ($d = $st->fetch(PDO::FETCH_OBJ)) 
			$this->options[$d->Property][$d->Value] = "$d->Description ($d->Value)";

		# single props
		foreach (Editor::prop1Fields as $p) {
			$st = $this->db->query(
				"SELECT $p as value, Magyar AS description FROM (
					SELECT DISTINCT $p FROM $this->srcTab 
					UNION SELECT DISTINCT $p FROM $this->dstTab
				   ) LEFT JOIN prop_values ON prid='$p' AND vid=value
					ORDER BY description
					");
			while ($d = $st->fetch(PDO::FETCH_OBJ)) 
				$this->options[$p][$d->value] = "$d->description ($d->value)";
		}

	}

	# 
	# Store data
	#

	function store($store_id) {
		$db = &$this->db;
		$update = array();
		foreach (Editor::prop1Fields as $p) 
			$update[$p] = isset($_POST[$p])? $_POST[$p] : NULL;
		
		$db->beginTransaction();

		$st = $db->prepare("UPDATE $this->dstTab SET Purpose=? WHERE ZotKey=?");
		$st->execute(array($_POST['Purpose'], $store_id));
		$qmarks = array_map( function($n){return "$n=:$n";}, Editor::prop1Fields);
		$st = $db->prepare("UPDATE $this->dstTab SET ".join(',',$qmarks)." WHERE ZotKey=:id");
		assert(count($update) == count($qmarks));
		$update['id'] = $store_id;
		$st->execute($update);
		
		// multi props
		$st = $db->prepare("DELETE FROM $this->dstTabProp WHERE ZotKey=? ");
		$st->execute(array($store_id));

		$st = $db->prepare("INSERT INTO $this->dstTabProp (ZotKey, Property, Value) VALUES (:id,:prop,:val)");
		$st->bindParam(':id', $store_id, PDO::PARAM_STR);
		$st->bindParam(':prop', $prop, PDO::PARAM_STR);
		$st->bindParam(':val', $val, PDO::PARAM_STR);
		foreach (Editor::propNFields as $prop) 
			if (isset($_POST[$prop])) 
				foreach ($_POST[$prop] as $val)  
					$st->execute();
		
		$db->commit();
	}

	#
	# get and display paper data 
	#
	function show($paper_id) {
		$db = &$this->db;
		$paper = &$this->paper;
		$paper_next='';
		$paper_prev='';
		foreach (Editor::propNFields as $p) $paper->$p = array(); 
		foreach (Editor::prop1Fields as $p) $paper->$p = '';
		foreach ($this->dataFields as $p)  $paper->$p = '';

		# $paper basic data and property init
		$st = $db->prepare("SELECT * FROM $this->dstTab where ZotKey=?");
		$st->execute(array($paper_id));
		$data = $st->fetch(PDO::FETCH_ASSOC) or die("No such id: $paper_id");
		foreach ( $data as $field=>$val)
			$paper->$field = $val;

		# paper multi properties
		$st = $db->prepare(
			"SELECT Property,Value FROM $this->dstTabProp WHERE ZotKey=?");
		$st->execute(array($paper_id));
		while ($p = $st->fetch(PDO::FETCH_OBJ)) 
			$paper->{$p->Property}[] = $p->Value; 

		# paper attachments
		$st = $db->prepare(
			"SELECT path FROM attachments WHERE itemKey=?");
		$st->execute(array($paper_id));
		$attachm = 	$st->fetchALL(PDO::FETCH_COLUMN);
		$paper->Attachments = array_map(
			function($k) {return implode('/', array_map('rawurlencode', explode('/',utf8_decode($k))));}, 
			$attachm); 

		# find next and previous
		$paper_prev = False;
		$st = $db->query(
			"SELECT ZotKey FROM $this->dstTab ORDER BY InsertDate");
		while ($pid = $st->fetch(PDO::FETCH_COLUMN)) {
			if ($pid == $paper_id) break;
			$paper_prev = $pid;
		}
		$paper_next = $st->fetch(PDO::FETCH_COLUMN);

		$cb = function($property) {
			$options = $this->options[$property];
			$values = $this->paper->$property;
			return HtmlUtil::createCheckBox($property,$options,$values);
		}; 

		$radio = function($property) {
			$options = $this->options[$property];
			$value = $this->paper->$property;
			return HtmlUtil::createRadio($property,$options,$value);
		};

		extract((array)$paper);

		# show
		#  $paper	 		cikk adatai
		#  $paper_id		cikk zotero id
		#  $paper_next		következő cikk id vagy false
		#  $paper_prev		előző cikk id vagy false
		#
		#  $properties		lehetséges tulajdonságok értéklistájának listája
		#
		include "tool.phtml";
	}

	/* 
	 * search by properties 
	 */
	function search() {
		$paper = &$this->paper;
		$paper_next='';
		$paper_prev='';

		foreach ($this->dataFields as $d) $$d = "";

		$cb = function($property) {
			$options = $this->options[$property];
			$values = array();
			return HtmlUtil::createCheckBox($property,$options,$values);
		}; 

		$radio = function($property) {
			$options = $this->options[$property];
			$options['NULL'] = "IS NULL";
			$value = false;
			return HtmlUtil::createRadio($property,$options,$value);
		};
		$paper_id='';
		$search = true;
		
		include "tool.phtml";
	}

	function showSearchResults($fields, $order=[1]) {
		$fieldlist = join(',',$fields);
		$orderlist = join(',',$order);
		$list = $this->db->query("SELECT DISTINCT ZotKey, $fieldlist 
				FROM $this->dstTab LEFT JOIN $this->dstTabProp USING (ZotKey) 
				ORDER BY $orderlist;"
				)->fetchAll(PDO::FETCH_ASSOC) ;
		include "tool_list.phtml";
	}

	function setSearchResults($id) {
		$db = &$this->db;
		$filter = array();
		$where = array("1");
		foreach (Editor::prop1Fields as $f) 
			if (isset($_POST[$f])) {
				if ($f == 'NULL') {
					$where[] = "$f IS NULL";
				} else {
					$filter[$f]=$_POST[$f];
					$where[] = "$f=:$f";
				}
			};
		foreach (Editor::propNFields as $nf) 
			if (isset($_POST[$nf])) { 
				foreach ($_POST[$nf] as $ix=>$value) {
					$valid = $nf.$ix;
					$filter[$valid] = $value;
					$value_expr[] = ":$valid";
				};
				$val_list = join(',',$value_expr);
				$filter[$nf] = $nf;
				$where[] = "(Property=:{$nf} AND Value IN ($val_list))";
			};
		$where = join(' AND ', $where);
		$db->beginTransaction();
		$db->exec("DROP TABLE $this->dstTab;");
		$db->exec("DROP TABLE $this->dstTabProp;");
		$sql = <<<SQL
			CREATE TABLE $this->dstTab AS
				SELECT DISTINCT st.* 
				FROM {$this->srcTab} AS st
				LEFT JOIN $this->srcTabProp USING (ZotKey)
				WHERE $where ORDER BY insertdate;
SQL;
		//debug($sql);
		$st = $this->db->prepare($sql);
		$st->execute($filter);
		$db->exec("CREATE TABLE $this->dstTabProp AS 
				SELECT * FROM $this->srcTabProp 
				WHERE Zotkey in (SELECT ZotKey FROM $this->dstTab);");
		$db->commit();
	}
	
	# 
	# Save temporary table
	#

	function save() {
		$this->db->exec(<<<SQL
		BEGIN;
		DELETE FROM $this->srcTab WHERE Zotkey in (SELECT Zotkey FROM $this->dstTab);
		DELETE FROM $this->srcTabProp WHERE Zotkey in (SELECT Zotkey FROM $this->dstTab);
		INSERT INTO $this->srcTab SELECT * FROM $this->dstTab;
		INSERT INTO $this->srcTabProp SELECT * FROM $this->dstTabProp;
		COMMIT;
SQL
);
	}
		
	# 
	#  Data statistics
	#
	function statistics() {
		$res = new stdClass();
		$res->single = array();
		$res->multi = array();
		foreach ( Editor::prop1Fields as $f ) {
			$res->single[$f] = $this->db->query("
				SELECT $f as value, count(*) as db 
				FROM $this->srcTab group by $f ORDER BY db desc
				")->fetchAll(PDO::FETCH_OBJ);
		}
		
		foreach ( Editor::propNFields as $f ) {
			$res->multi[$f] = $this->db->query("
				SELECT Value as value, count(*) as db 
				FROM $this->srcTabProp 
				WHERE property='$f' 
				GROUP BY value
				ORDER BY db desc
				")->fetchAll(PDO::FETCH_OBJ);
		}

		echo json_encode($res);
	}

	function statByYear($colname) {
		$ret = array();
		if (! in_array($colname , Editor::categories)) die('no such column');

		$st = $this->db->prepare("SELECT DISTINCT Value FROM propView WHERE Property=? ORDER BY 1");
		$st->execute(array($colname));
		$ret['categories'] = $st->fetchAll(PDO::FETCH_COLUMN);

		$sql = "
			SELECT cast(year as integer) as year, Value as cats, count(*) as db 
				FROM propView LEFT JOIN $this->srcTab USING (ZotKey)
				WHERE property=?
				GROUP BY cats,Year
				ORDER BY Year,cats
				";
		$st = $this->db->prepare($sql);
		$st->execute(array($colname));

		$tmp = array();
		while ($o = $st->fetch(PDO::FETCH_OBJ)) {
			$tmp[$o->year][$o->cats]=(integer) $o->db;
		};

		foreach ($tmp as $y=>$t) {
			$t['year'] = $y;
			$ret['data'][] = $t;
		}
		//var_dump($ret);
		echo json_encode($ret);
	}

	/*
	 * scatter by categories
	 * return number of papers by two qualitative property
	 *
	 */
	function statByCateg($categ1,$categ2) {
		$ret = array();
		if (! in_array($categ1 , Editor::categories)) die("no such column: $categ1");
		if (! in_array($categ2 , Editor::categories)) die("no such column: $categ2");
		$st = $this->db->prepare("SELECT DISTINCT Value FROM propView WHERE Property=?");
		$st->execute(array($categ1));
		$ret['values1'] = $st->fetchAll(PDO::FETCH_COLUMN);
		$st->execute(array($categ2));
		$ret['values2'] = $st->fetchAll(PDO::FETCH_COLUMN);
		$st = $this->db->prepare("
			SELECT a.value val1, b.value val2, count(*) as db 
			FROM (SELECT * FROM propView WHERE Property=?) a 
			JOIN (SELECT * FROM propview WHERE Property=?) b 
				USING (ZotKey) GROUP BY a.value, b.value ;
			");
		$st->execute(array($categ1,$categ2));
		$tmp =  $st->fetchAll(PDO::FETCH_ASSOC);
		// ugly hack to fix PDO (data type info lost)
		$ret['data'] = array_map( function($x){$x['db']=(integer)$x['db'] ; return $x;}, $tmp);
		echo json_encode($ret);
	}
	
	/*
	 * Scatter by SQL query
	 * sqlx = x tengely ( SELECT id, value ....)
	 * sqly = y tengely ( SELECT id, value ....)
	 * return number of papers by two qualitative property
	 */
	function sqlScatter($sqlx, $sqly) {
		try {
			$ret = array();
			$st = $this->db->prepare("SELECT DISTINCT value FROM ($sqlx)");
			$st->execute();
			$ret['valuesx'] = $st->fetchAll(PDO::FETCH_COLUMN);
			$st = $this->db->prepare("SELECT DISTINCT value FROM ($sqly)");
			$st->execute();
			$ret['valuesy'] = $st->fetchAll(PDO::FETCH_COLUMN);
			$st = $this->db->prepare("
				SELECT a.value valuex, b.value valuey, count(*) as db 
				FROM ($sqlx) a 
				JOIN ($sqly) b 
					USING (id) GROUP BY a.value, b.value ;
				");
			$st->execute();
			$tmp =  $st->fetchAll(PDO::FETCH_ASSOC);
			// ugly hack to fix PDO (data type info lost)
			$ret['data'] = array_map( function($x){$x['db']=(integer)$x['db'] ; return $x;}, $tmp);
			echo json_encode($ret);
		} catch (Exception $e) {
			http_response_code(404);
			echo "Wrong SQL or database error:";
			echo $e->getMessage();
		}
	}
	
	/*
	 * Bar chart by SQL query
	 * sql = kategória tengely ( SELECT group, prop, number ....)
	 * return number of papers by some property and by a grouping property
	 */
	function sqlBar($sql) {
		$ret = array();
		$legend = array();
		
		try {
			$st = $this->db->prepare("SELECT * FROM ($sql) GROUP BY 1");
			$st->execute();

			$tmp = array();
			while ($o = $st->fetch(PDO::FETCH_ASSOC)) {
				// collect data
				$tmp[$o[0]][$o[1]] = (integer) $o[3];
				// collect legend
				$legend[] = $o[1]; 
			};

			// reformat data (group array + data array)
			foreach ($tmp as $y=>$t) {
				$t['group'] = $y;
				$ret['data'][] = $t;
			}

			// create set of legend items
			$ret['categories'] = array_unique($legend);

			//var_dump($ret);
			echo json_encode($ret);
		
		} catch (Exception $e) {
			http_response_code(404);
			echo "Wrong SQL or database error:";
			echo $e->getMessage();
		}

	}
}

# utility
class HtmlUtil {
	static function createCheckBox($varname, $options, $values) {
		$out="<ul>";
		foreach ($options as $i=>$v) {
			$out .= "\t<li><input type=\"checkbox\" name=\"{$varname}[{$i}]\"";
			$out .= " value=\"{$i}\" ";
			if (in_array($i, $values)) $out .= " checked";
			$out .= "><label>$v</label></li>\n";
		}
		return $out."</ul>";
	}
	static function createRadio($varname, $options, $value) {
		$out="<ul>";
		foreach ($options as $i=>$v) {
			$out .= "\t<li><input type=\"radio\" name=\"{$varname}\" ";
			$out .= " value=\"{$i}\" ";
			if ($i === $value) $out .= " checked";
			$out .= "><label>$v</label></li>\n";
		}
		return $out."</ul>";$_POST[$f];
	}
}

function debug($a,$s='') {
	echo "<pre>";
	if ($s) echo "$s: ";
	var_dump($a);
	echo "</pre>";
}



###### debug info ###########
if (isset($_GET['debug'])) {
	echo '<p style="clear:both" /p>';
	debug($editor);
}

# vim: set ts=4 sw=4 :
