Felhasználás (FS-H){#sec:Usage}
--------------------

Ebben a kategóriában a felhasználó szemszögéből vizsgálom a FLOSS rendszereket. Ide soroltam minden olyan tevékenységet
vagy eljárást, amit a FLOSS esetén másképpen, speciális körültekintéssel kell végrehajtani illetve,
amely kifejezetten a felhasználókat jellemző tulajdonság. 

A felhasználó esetünkben nem feltétlenül végfelhasználót jelent, ide tartoznak a belső fejlesztők, rendszerintegrátorok, disztribútorok is amennyiben az adott sajátossággal felhasználóként kerülnek kapcsolatba.


### Széles választék, egyedi minősítő rendszer szükségessége (FS-H-M){#sec:FS-H-M}

Feltételezésem szerint a FLOSS rendszerek minősítésére nem tökéletesek a meglévő minősítési eljárások. A zárt forrású megoldások minősítéséhez készült keretrendszerek módszertana és követelményrendszere nem képes megfelelően lefedni a FLOSS vagy akár a szabad szoftver minden aspektusát.

Akár komplett rendszerről akár komponensekről van szó, a terjesztő hiánya komoly hátrány jelenthet, mivel a COTS beszállítók értékeléséhez használt sztenderdek itt nem használhatók [@ciolkowski_towards_2008]. Az igen népszerű TCO[^tco] alapú becslések alkalmazása korlátozott, mert a meglévő rendszerek csak nagyon költségesen illeszthetők a nyílt forráshoz, ami miatt a vállalkozások gyakran bele se fognak [@shaikh_framing_2011], nem beszélve róla, hogy sem a TCO sem a komplexebb FBV[^fbv] nem alkalmas önmagában arra, hogy egy termék minőségéről részletes képet adjon [@taibi_openbqr_2007]. 
A szabad szoftverek elemzéséhez egyedi SRGM[^SRGM] modellek és rendszerek szükségesek[@zhou_open_2005], de a megfelelő változat kiválasztása itt sem könnyű. Az elemzés -- hosszabb távú projektek esetén -- SCRM szempontjából különösen fontos, hiszen ha az OSSD közösség nem elég stabil, a támogatás megszűnhet, holott bizonyos szektorokban évtizedekig kellene támogatást nyújtani[@host_usage_2011;@gamalielsson_sustainability_2014]. A választás nehézségeinek szemléltetéséhez és egy lehetséges választási módszertan iránt érdeklődőknek Ullah munkásságának tanulmányozását javaslom [@ullah_method_2014].


[^tco]:Total Cost of Ownership: valamennyi direkt és indirekt költség becsült értéke a termék beszerzése és teljes használata során 
[^fbv]: Full Business Value: a befektetés teljes értéke, rendszerhatékonyság, üzleti hatékonyság figyelembevételével] 
[^SRGM]: Software Reliability Growth Model. 

A nyílt forrás egyik jellegzetessége, hogy ugyanazon feladatkörhöz számtalan, egymáshoz nagyon hasonló változat készül (FS-F-P). Következésképpen nem nyilvánvaló, hogy hogyan tudjuk kiválasztani a megfelelő változatot, hogyan különböztetjük meg a jó és rossz projekteket [@de_groot_call_2006; @morandini_risk_2014]. Hauge kutatásaiban a válaszolók egyértelműen bizonytalanok voltak a megfelelő FLOSS megoldás kiválasztását illetőn, sőt a lehetőségek nagy száma problémát jelenthet annak eldöntésében is, hogy a meglévő összetett rendszer helyettesítésére létezik-e egyáltalán FLOSS alternatíva vagy sem [@hauge_risks_2010; @stol_challenges_2010]. 

Kimutatható, hogy a nyílt forrás esetében a felhasználó óriási mennyiségű gyenge minőségű változattal találkozhat. Bár a csúcshoz közeli változatok minősége felveszi a versenyt, esetenként meg is haladhatja a zárt forrású megfelelőik képességeit [@simon_harrer_open_2013], a gyenge változatok torzíthatják az összehasonlítást és megnehezítik a választás.

Nyílt forrás esetében maga a minőség fogalom is átértékelődhet. Garvin négyféle minőséget definiál. A transzcendens minőség kizárólag személyesen tapasztalható meg, a termék-minőség diszkrét mérhető termék karakterisztikákon, a felhasználói-minőség szubjektív fogyasztói elégedettségen alapszik, a gyártói-minőség a specifikációnak való megfelelést jelenti, míg az érték alapú minőség a specifikációknak megfelelést helyezi előtérbe egy adott elfogadható áron. A hagyományos szoftverfejlesztés esetén a felhasználói elégedettség (elégedetlenség) kezelése a problémamegoldással szorosan összefonódik, költséghatékonysági szempontok miatt csak együtt, meghatározott időközönként más foltokkal, javításokkal együtt lehet azt teljesíteni. Következésképpen a zárt forrás esetén Garvin értékszemléletű minőség nézőpontja az uralkodó, ezzel szemben a FLOSS minőségének felfogása a felhasználó alapú minőségi nézőponthoz áll közelebb. Azaz, míg az első esetben a felhasználó az ár függvényében vizsgálja az elérhető képességeket és minőséget, a FLOSS esetén a minőség önálló tényezőnek számít, a felhasználó aszerint választja ki a legmagasabb minőséget, hogy mi elégíti ki leginkább személyes elvárásait [@ruiz_towards_2011].


Szerencsére léteznek olyan projekt indikátorok, amelyek segítségével becsülhető a projekt érettsége (maturity level) illetve a későbbi fejlődés iránya. Ilyen lehet például az új kiadások vagy a nyitott ügyek számának változása, amelyek statisztikai módszerekkel elemezhetőek [@petrinja_two_2012]. FLOSS esetén egyedi paraméterek is elemezhetők, úgy mint a felhasználói közösség hosszú és rövid távú  léte, a megfelelő méretű felhasználótábor, licenszelés, felhasznált programozási nyelv egysége, komplexitás, nyelvek támogatottsága, szponzorok száma valamint az elérhető útmutatók minősége és száma [@taibi_towards_2008]. Ezek a más esetben elérhetetlen vagy csak nehezen hozzáférhető információk segíthetnek felbecsülni a projekt állapotát.

A vázolt problémákat felismerve Németország, Malajzia és Ausztrália kormányzata korábban is készített olyan átfogó irányelveket, modellt amelyet a szervezetek az FLOSS értékeléshez felhasználhattak [@di_penta_exploratory_2010] később pedig több uniós projekt is indult a jellemző metrikák nyilvántartására és analízisére. Ilyen, Európai Közösség által finanszírozott projekt volt a FLOSSMetrics[@european_comission_flossmetrics_2010], OSSmeter[^OSSmeter] és a MARKOS[^MARKOS].

[^OSSmeter]: Európai projekt a nyílt forrású szoftverek automatikus analízisére és mérésére (http://www.ossmeter.org/)
[^MARKOS]: EK Projekt: Global, integrated and searchable open-source software (https://www.markosproject.eu/)

A terület fontosságát mutatja, hogy napjainkban már jó néhány minősítő keretrendszerből választhatunk[@wasserman_osspal_2017].  Illusztrációképpen a [@fig:QuESo] a QuESo megbízhatósági modell eredményének vizualizációját mutatja a GNOME projekten. Néhány további lehetséges FLOSS minősítő keretrendszer:

---------------------------------------------------------------------------------------------------
Akronim         Minősítő rendszer                                      Fejlesztő/támogató      Év
--------------- ------------------------------------------------------ ----------------------- ----
QSOS            Methodology of Qualification                           Atos Origin             2005
                and Selection of Open Source Software 

C-OSMM          CapGemini Open Source Maturity Model                   Capgemini               2003

OpenBRR         Open Business Readiness Rating                         Carnegie Mellon West    2005 
                                                                       University, 
                                                                       Spike Source,
                                                                       Intel, O’Reilly’s       

E-OSS           Easiest Open Source                                    SIAD-Laboratory         2015

N-OSMM          Navica Open Source Maturity Model                      Navica software         2004

SQO-OSS         Software Quality Observatory for Open                  European Community’s    2008
                Source Software                                        Sixth Framework
                                                                       Programme                        
----------------------------------------------------------------------------------------------------


![SQO-OSS modell. Forrás: [@spinellis_evaluating_2009]](ábrák/SQO-OSS-modell.pdf)

A CapGemini, QSOS, OpenBRR és SQO-OSS modellek a ISO/IEC 9126 minőségi modell irányelveit követve építik fel a keretrendszert, a QualOSS (és részben az OpenBRR) a CapGemini megoldásának továbbfejlesztései. A három szintű OpenSource Maturity Model az egyetlen amely a Capability Maturity Model [^CMM] módszertanának irányelveit követi.  [@deprez_comparing_2008; @petrinja_comparing_2010; @adewumi_review_2013; @samoladas_sqo-oss_2008;@umm-e-laila_comparison_2017]


![Gnome projekt minősítése QuESo minőségbiztosítási keretrendszerrel Forrás:[@franco-bedoya_measuring_2014]](ábrák/QuESo.pdf){#fig:QuESo}

Az általános és több egyedi [@kritikos_open_2018;@oscar_queso_2014] megbízhatósági modell mellett létezik kifejezetten kockázat alapú minősítő rendszer, ilyen például Siena kockázatmodellje [@siena_modelling_2014], illetve célzottan kódbiztonsági becslést végző modell mint a CodeTrust[@jensen_codetrust_2018].

[^CMM]:Capabilit Maturity Model https://en.wikipedia.org/wiki/Capability_Maturity_Model

A vizsgált tudományos anyagok és a szerzők egyöntetű véleménye alapján kimondható, a FLOSS rendszerek minőségének elbírálásához egyedi keretrendszerek szükségesek, amelyek figyelembe tudják venni a fejlesztési módszertanból, terjesztési eltérésekből és licenszelési különbségekből származó jellegzetességeket. 


### Fejlesztői felhasználás, integráció (FS-H-I){#sec:FS-H-I}

FLOSS termékek integrációja jelentősen csökkentheti a fejlesztési kockázatokat amennyiben a szervezet saját erőből ilyen tevékenységet végez. A fejlesztéshez és teszteléshez szükséges idő drasztikusan csökkenhet, a közösség-alapú fejlesztésnél pedig sokan önként jelentkeznek a fejlesztői munkára [@arakji_virtual_2007; @ajila_empirical_2007].
Az félkész FLOSS komponensek használata erőforrásokat szabadít fel, lerövidíti a fejlesztési szakaszt ami által jobb minőségű szoftverek jöhetnek létre. Ez minden szektorra igaz amelyet az információ technológiai hatásai elkezdtek átformálni, de különösen erősen érzékelhető a fogyasztói elektronikai termékek esetén[@kemp_current_2009]. A zárt forrású fejlesztési módszert alkalmazó harmadik féltől származó komponensek integrációs lehetőségei limitáltak, a FLOSS változatok lényegében tetszőleges mértékben alakíthatók igény szerint [@dilmurad_open_2011].

A komponens integráció két elterjed formája az úgynevezett Black-box és a White-box integráció. Az előbbinél a fejlesztő csak a bináris formát használja fel, így a kód elemzésére nincs lehetőség. Az utóbbi a forrás felhasználására utal, ami többnyire csak FLOSS komponensek esetében lehetséges [@zaimi_empirical_2015]. White-box integráció estén lehetőség nyílik az integrált komponens átalakítására is ami sokszor jelentős előnyt biztosít ugyanakkor a szabályozott interfész megkerülésre révén bizonyos kockázatokat is hordoz.

A FLOSS felhasználásának egyik fő motiváló ereje a függetlenség ígérete. A Szervezet a szállítótól való függetlenedési törekvése során gyakran felismeri, hogy a nyílt forrást stratégiai eszközként használhatja, így a szervezet eredményeit vagy új lehetőségeit tekintve vonzóbbnak találja a FLOSS változatot [@de_pablos_adoption_2010] vagy előnyösebb alku pozícióba kerül a szállítóval szemben.  Az interneten keresztül könnyen elérhető FLOSS komponensek használata ma már kétségtelenül stratégiai szerepet tölt be az iparban. [@ayala_developing_2013]
A nyílt forrású komponens integráció aránya folyamatosan növekszik, maga az integráció, migráció és jogi kérdések problémája viszont sok esetben nem megoldott. Egy esetben 3500 java programozó között végzett felmérés szerint a tipikus java alkalmazások 80%-a tartalmazott FLOSS komponenseket, ugyanakkor a szervezetek 76%-a nem volt képes megfelelően kezelni saját FLOSS felhasználását (2013-as adat) [@silic_dual-use_2013].
A FLOSS alkalmazás felhasználással ellentétben (FS-H-F) komponens integráció tekintetében nem mutatható ki statisztikailag szignifikáns különbség a kis és nagy vállalatok között [@ajila_empirical_2007] azaz a nagyvállalatok  relatíve szívesebben használnak FLOSS komponenseket mint termékeket.

A FLOSS komponensek kiválasztásánál a COTS komponenseknél megszokott módszertan gyakran nem ad elégséges eredményt [@chen_survey_2007] és egyedi metódusokat kell alkalmazni [@huang_development_2006]. A komponens kiválasztása tekintetében két uralkodó megközelítés létezik. Sokan egyszerűen rákeresenek a komponensekre az Interneten, míg mások -- elsősorban kritikus alkalmazások fejlesztése esetén -- FLOSS komponensek kiválasztására szakosodott portálokat használnak [@ayala_system_2018] vagy vállalkozások szaktudását veszik igénybe. A jó komponens kiválasztás módszere kritikus szerepet játszik a fejlesztésben, ugyanakkor az alapja gyakran szubjektív, tapasztalati úton elérhető tudás, így különösen fontos a megszerzett információk megosztása a közösséggel[@ayala_challenges_2009]. A kiválasztást végzők többsége egyáltalán nem használ illetve nem is ismer semmilyen formális módszertant ami a komponens kiválasztási folyamatban segítséget nyújthatna, ehelyett informális módszerekkel dolgoznak és sokszor nem is dokumentálják a kiválasztás és döntés indokait és folyamatát. [@ayala_developing_2013; @merilinna_state_2006]

Pedig az integráció egyáltalán nem veszély nélküli folyamat, az integrátornak számos kihívással szembe kell néznie, a közösségben való részvételnek ugyanis ára van. Sok gondot okozhat a FLOSS komponensek közötti koordináció és figyelembe kell venni, hogy az egyes komponensek kiadási dátuma, frissítési ciklusa, fejlesztési terve eltérő lehet. A projektnek tehát fel kell készülnie saját és a közösség munkájának összehangolására. 
Stol kutatásaiban részletesebb felosztást alkalmaz. Az általa azonosított kihívásokat a [-@tbl:IntKih] táblázat foglalja össze (az ebben a fejezetben nem tárgyalt tényezőket a harmadik oszlopban jelölt kategóriánál dolgoztam fel)[@stol_comparative_2011].


-----------------------------------------------------------------------------------------
Kategória               Azonosított kihívás                             Fejezet
---------------------   --------------------------------------          -----------------
Termékkiválasztás       A minőségi termék beazonosítása nehéz            
                        a bizonytalanság és
                        a nagy számú variáns miatt

.                       Nincs idő a komponensek értékelésére            

.                       A megfelelő fork kiválasztása problematikus     FS-F-P

                        
Dokumentáció            Dokumentáció hiánya vagy gyenge minősége        FS-J-D
                        
.                       Azonos komponens eltérő leírásokkal             FS-J-D

Közösségi támogatás     Függés a közösségtől támogatás és               FS-T-T
és karbantartás         frissítések terén, a támogatás minősége
                        nehezen irányítható, nincs helpdesk
                        vagy technikai segítség

.                       Az egyedi változtatásokat karban kell           
                        tartani, ami időigényes és a jövőbeli
                        változatokkal összeütközésbe kerülhet   
                        
.                       Az FLOSS közösséget nehéz meggyőzni              FS-F-K
                        a változások elfogadásáról, a részvétel
                        drága és nehézkes. A szerkezetet nehéz
                        irányítani ha nem vagyunk tagja a core
                        fejlesztők csapatának.

.                       Bizonytalanság a termék jövőjét illetően
                        a cég termékének vonatkozásában

.                       A közösség tagjai nagyobb beleszólást 
                        akarnak a termék tervezett funkcionalitásába    

.                       A FLOSS projektbe belépés és fejlesztés
                        plusz erőforrásokat igényel

Integráció és           Visszamenőleges kompatibilitási problémák
szerkezeti
felépítés               
                        
.                       Hiányzó képességek vagy a keretrendszerhez 
                        való illesztés miatt módosításokat kell 
                        eszközölni.

.                       Inkompatibilitási problémák a meglévő
                        rendszer és a komponensek között.

.                       Horizontális integráció.

.                       Vertikális integráció, platform vagy              
                        fejlesztői nyelv eltérése.


Migráció és             Konfiguráció komplexitása                       FS-J-H
felhasználás            

.                       Felhasználói képzés költsége                    

Jogi és üzleti          Komplex licenszelési szituációk                 FS-Sz-P
kérdések

.                       Aggályok vagy stratégia hiánya                  FS-J-H
                        az IP és jogi kérdésekben

.                       Egyértelmű üzleti modell hiánya                 FS-T-Ü
                        ami elfogadható lenne az ipar számára

-----------------------------------------------------------------------------------------

: FLOSS integrációja során felmerülő lehetséges kihívások, Stol nyomán [@stol_comparative_2011] {#tbl:IntKih}

Az integráció további veszélyforrása, ha az integrátor nem ismeri a felhasznált kódbázist így akaratlanul is új hibákat vezethet be. A komponensek között bonyolult függőségi viszony létezhet, a komponensek újabb komponensektől függenek, így az azokban rejlő hibák veszélyeztethetik a felhasznált komponens biztonságát is[@adams_empirical_2015]. Ezen kívül, ha a helyi módosítások nem kerülnek be az eredeti kódbázisba, azokat folyamatosan karban kell tartani, ami erőforrás igényes és további hibalehetőségeket hordoz [@adams_empirical_2015; @krzysztof_wnuk_value-based_2012; @anh_collaborative_2012], a komponens változásait minden egyes verzióváltáskor újra ellenőrizni kell, a fejlesztést pedig lehetőség szerint szinkronizálni kell a forrás (upstream) projekttel. A Nokia n800-as táblagépe például nagy számú (428 darab) FLOSS komponenst használt, amelyek jelentős részét (~50%) módosították. Felmerül a kérdés, a gyártó hogyan tudta biztosítani a rendszer stabilitását a módosítások visszavezetése nélkül. 

Minden egyes felhasznált komponens újabb függőséget alakít ki, amely rejtett karbantartási költséget és biztonsági kockázatot jelent. A Debian szoftverkönyvtár-csomagoktól például átlagosan 6.4 másik csomag függ közvetlenül (median: 2.0) és 47.6 tranzitív módon (median: 3.0)  [@adams_empirical_2015]. Jól demonstrálja a jelenség veszélyeit az OpenSSL csomagban feltárt biztonsági hiba, amely helyi javításként került a Debian változatába ahol teljes két éven keresztül (2006-2008) folyamatosan jelen volt. A kriptográfiai kulcs megfelelő véletlenségét biztosító függvényt a helyi javítás megjegyzésbe tette [@nishimura_analysis_2009;@ahmad_two_2008]. A karbantartó kapcsolatba lépett a upstream karbantartókkal, ám mivel nem fedte fel magát és terveit teljes mértékben, lényegében figyelmen kívül hagyták. A biztonsági sérülékenység 44 másik csomagra terjedt át anélkül, hogy a karbantartók vagy a fejlesztők azonosították volna a hibát. 

A kriptográfiai könyvtárak sajnálatosan elterjedt black-box integrációja egyébként is aggályos, hiszen egyetlen biztonsági hibának széles körű következményei lehetnek [@ahmad_two_2008].

Mint korábban erre felhívtam a figyelmet, a változtatásokat, különösen a hibajavitásokat vissza kellene vezetni[@host_usage_2011]. Sajnos ezeket a változtatásokat gyakran nehéz elfogadtatni [@stol_challenges_2010;@rajanen_non-response_2015]. Továbbá a változások és egyéb fejlesztések visszavezetése sok esetben nincs megfelelően szabályozva, pedig világosnak kellene lennie, hogy milyen esetekben és milyen kódot lehet az eredeti projektbe visszajuttatni [@krzysztof_wnuk_value-based_2012].
A nyílttá tett forráskód bizonyos jogi veszélyeket is hordozhat. Amennyiben a kód nem tisztázott állapotú szellemi terméket tartalmaz, a publikáló szervezetnek számolnia kell a pereskedés lehetőségével [@weikert_model_2013] ami sértheti a rendelkezésre állást. 

Az integráció több szinten is megvalósulhat. Integrálhatunk pár soros kódot, vagy középszinten komponens osztályokat, metódusokat, vagy nagyobb skálán teljes fájlokat, funkciókat vagy komplett rendszert. [@ajila_empirical_2007] A forrás birtokában az integráció sokkal rugalmasabbá válik és lényegében feloldja a bináris programkönyvtár interfészek mesterséges határait, viszont egyúttal el is veszítjük ezen interfészek nyújtotta biztonságot. A könyvtárak fejlesztői általában feltételezik, hogy ezeken a határokon belül szabadon módosíthatnak bármit, amire ha nem figyelünk oda kompatibilitási problémákat vagy hibákat vezethetünk be a rendszerünkbe.

A kontrollálatlan integráció súlyos veszélyforrás is lehet.  A népszerű biztonsági segédszoftverek között igen sok a FLOSS termék (FS-H-P) amelynek felhasználása kapcsán ismert olyan eset, ahol a belső hálózatban sérülékeny nyílt forrású biztonsági könyvtárakat és keretrendszereket használnak fel a saját belső alkalmazásaik fejlesztésénél [@silic_dual-use_2013].


Összességében a komponensintegráció kapcsán négyféle kockázati tényezőt lehet megkülönböztetni: 

1. komponens kiválasztás kockázata (nem a megfelelő vagy sérülékeny változatot építünk be);
2. komponens integrációjának kockázata (rosszul integráljuk a komponenst);
3. komponens karbantartásának kockázata (frissítések, új változatok hibákat vezetnek be, megszűnik a támogatás);
4. jogi kockázat[^IntJogKoc]. [@morandini_risk_2014]

[^IntJogKoc]: E négy kategória utolsó elemével a szabályozást tárgyaló fejezetben foglalkozom (FS-Sz).

A nagy számú FLOSS komponenst felhasználó cégeknek szükségük van valamilyen FLOSS menedzsment keretrendszerre, amely segítségével kontrollálni tudják a FLOSS felhasználásukat. A menedzsment keretrendszer követelményei az extenzív FLOSS-felhasználó 
cégek között végzett felmérés alapján az alábbiak[@harutyunyan_understanding_2018]:

1. FLOSS komponensek követése és újrahasznosítása:

	1. Az eszköz azonosítsa a FLOSS komponenseket a kódbázisban;
	2. segítsen jelenteni a FLOSS komponenseket az architektúra modellben;
	3. frissítse a FLOSS komponenseket és metaadataikat;
	4. vezessen nyilvántartást a felhasznált FLOSS komponensekről;
	5. nyújtson lehetőséget a már egyszer felhasznált komponens újrahasznosítására.

2. Licenc megfelelőség:

	1. Az eszköz értelmezze a nyílt licenceket;
	2. dokumentálja a komponens licencét a szervezet adattárában;
	3. segítsen keresni az adattárban;
	4. képes legyen igazolni, hogy a komponens licence megfelel a projekt irányának;
	5. segítsen  olyan licenc kiválasztásában ami kompatibilis az integrál komponensek licencével.

3. FLOSS komponensek keresése és kiválasztása:

	1. Az eszköz nyújtson lehetőséget a FLOSS komponensek közötti keresésre;
	2. segítsen megtalálni a legjobb komponenst;
	3. legyen képes megbecsülni a komponens használatának költségét. 

4. Egyéb követelmények:

	1. Az eszköz képes legyen megtalálni és megelőzni a komponensben található sérülékenységeket;
	2. dokumentálja és kommunikálja a cég FLOSS kezelési stratégiáját, rendszabályait és javasolt gyakorlatát;
	3. segítsen a felhasználónak megismerni a FLOSS kezelés és megfelelőség elveit a fejlesztés és a közösséggel való kommunikáció során.
        


Összefoglalva,  a FLOSS komponens felhasználás biztonsági problémákat okozhat, menedzsmentje kihívásokkal teli komplex feladat. Különösen fontos a bizalom és megbízhatóság, a komponens biztonsági modellezés kérdése és a tesztelés [@nissanke_component_2005]. A közösséggel való kommunikáció nehezen elkerülhető és nem is javasolt. A változásokat lehetőség szerint vissza kell vezetni a forrásprojektbe, ugyanakkor bizonyos információk nem oszthatók meg a nyílt forrású közösséggel. Külön figyelmet kell rá fordítani, hogy ezek az információk ne szivároghassanak ki [@yamakami_challenges_2010].

A téma összetettsége folytán komoly igény mutatkozik a FLOSS komponens integráció célzott oktatására, hiszen a fejlesztőknek egyre inkább oda kell figyelniük rá, hogyan tartják a kapcsolatot a FLOSS világával. [@adams_empirical_2015]

### Gyártófüggetlenség (FS-H-Gy){#sec:FS-H-Gy}

A FLOSS egyik csábító előnye, hogy felhasználásával csökkenthető, vagy akár meg is szüntethető a vendor-lock-in jelensége, azaz a szállítóktól, gyártóktól való függés. Nyílt környezetben nem szükséges elkötelezni magunkat egyetlen cég vagy környezet mellett sem. Továbbá a FLOSS nem kényszeríti a szervezetet szoftver és hardverspirálba, ugyanis a régebbi hardveren is jól használható és a frissítéseket sem követeli meg [@budai_balazs_benjamin_e-kozigazgatas_2008].  Bár a biztonsági frissítések nélküli szoftverhasználat komoly veszélyt jelenthet, bizonyos nyílt projektek (mint minden nagyobb Linux disztribúció) szabott ideig tisztán biztonsági frissítéseket is garantálnak, további képesség-fejlesztések kikényszerítése nélkül.

A rendelkezésre álló felmérések [@luoma_adoption_2011; @ven_field_2010; @valimaki_empirical_2005] azt mutatták, hogy a közszolgálati szektorban a gyártóktól való függetlenedés a FLOSS megoldások egyik legfontosabb előnye. A függetlenség két kulcsfontosságú pontja, hogy a szervezet ne függjön külső szereplőktől az adatbiztonság terén és ne kötődjön bizonyos szoftver termékekhez vagy gyártókhoz [@bouras_policy_2014]. A kívánt függetlenség elérhető tisztán FLOSS rendszerekkel, vagy üzleti és nyílt rendszerek kombinálásával illetve nyílt szabványok használatával.

A FLOSS használatával mérhető módon csökkenthető a függőség [@dilmurad_open_2011]. A függetlenség növekedésével a szervezet nyomást tud gyakorolni a beszállítókra [@hauge_risks_2010]. 

Bár a függetlenség közvetett módon javítja a biztonságot, hiszen nagyobb rugalmasságot szélesebb mozgásteret biztosít, közvetlen biztonsági hatást nem azonosítottam.


### Felhasználói tábor (FS-H-F){#sec:FS-H-F}

A FLOSS felhasználók eloszlása érdekes mintát mutat. Elterjedt nézet, hogy a nyílt forrású rendszereket programozók fejlesztik programozóknak vagy éppen saját maguknak. Ez persze erős általánosítás, de a feldolgozott kutatások azt mutatják, hogy bizonyos mértékig valóban létezik ilyen jelenség. 

A személyi felhasználók közt többségben vannak azok, akik "programokat írnak" még ha nem is feltétlenül professzionális szinten, hanem saját céljaik elérése érdekében ami általában valami más, könyvelés, statisztika, webtervezés, kutatás vagy szórakoztatás [@cheung_designing_2009]. 
A Stack-Overflow kommunikációjának analízise azt mutatta, hogy a fejlesztők tudatában vannak a FLOSS nyújtotta előnyöknek és könnyebben állnak át az ilyen megoldásokra [@barua_what_2014].

A fiatalabb korosztály tagjai statisztikailag hajlamosabbak FLOSS rendszerek használatára, jobban ismerik azt [@marsan_adoption_2012] ami valószínűsíti, hogy a FLOSS felhasználószám növelését a fiatalabb rétegen keresztül lehet megcélozni. [@francalanci_empirical_2008] Ezzel szemben az ellenzők általában tapasztaltabbak, ugyanakkor kevesebb a kapcsolatuk a szabad szoftverekkel. 

Nem meglepő módon a szabad szoftver közösségekben szerepet vállaló személyek körében nagyobb a FLOSS iránti igény, magasabbra is értékelik azt [@gwebu_seeing_2010] és a felhasználótábor (részhalmaza) gyakran egyben maga a fejlesztő közösség is [@khanjani_aspects_2011]. 

Hasonlóan magas a biztonsági szakemberek FLOSS felhasználása. A információ-biztonsági szakemberek általában megbíznak a FLOSS biztonsági eszközökben. Ugyanakkor érdekes módon a nagyvállalatok már kevésbé bíznak a FLOSS biztonsági eszközökben (amiben szerepet játszanak az alább kifejtett okok) [@silic_information_2013, @ardagna_focse_2007]. Li eredményei azt mutatták, hogy a felhasználók biztonság-kritikus területeken mindenképpen igen óvatosak, akár COTS[^COTS] akár FLOSS termékről van szó, a szoftverek biztonsági aspektusát így nem igazán lehet megkülönböztetni. [@li_empirical_2006]

[^COTS]: Commercial Off-The-Self : dobozos termékek, nem helyi, egyedi megoldások. 

A szervezeti felhasználók közt a magukat innovatívnak tartók hajlamosabbak kihasználni a FLOSS nyújtotta lehetőségeket és nagyobb eséllyel jelölik meg jövőbeli célként [@ellis_open_2009]. A FLOSS-használó szervezetek általában kicsik és kevésbé kritikus IT részleggel rendelkeznek mint a FLOSS-t nem vagy kisebb mértékben használó vállalkozások. Ez bizonyos értelemben ellentmond annak nézetnek, hogy az IT szempontból kritikusabb, nagyobb vállalkozások fogékonyabbak az innovációra. A jelenség oka az lehet, hogy a kis vállalkozások az alacsony költség miatt ugródeszkaként használhatják a FLOSS rendszereket, hiszen így gyorsan (és olcsón) hozzájuthatnak a legfrissebb technológiákhoz. Ugyanakkor a támogatás és a szolgáltatás körüli bizonytalanságok miatt a nagyobb vállalatok felelős vezetői inkább kockázatkerülő magatartást követnek  [@li_it_2013].
A mikro és kisvállalkozások a fejlődőfélben lévő FLOSS leggyakoribb támogatói. Gyakran járulnak hozzá a projektekhez, ugyanakkor a méretük miatt ők tudnak a legkevesebbet gazdaságilag profitálni a szabad szoftverekből, számukra tehát elsősorban a korábban említett "gyors-rajt" effektus biztosítja az előnyt. A középvállalkozások kisebb mértékben de hajlandóak kísérletezni fejlődőfélben lévő szabad szoftverekkel, sőt bizonyos esetekben saját szaktudásukat vissza is forgatják a közösség javát szolgálva. A nagyvállalatok általában biztosra mennek és kizárólag a bejáratott, érett megoldásokat hajlandóak felhasználni, amelyek jelentős ideje vannak a piacon és amelyek esetén a biztonsági kockázat a lehető legkisebb. A nagyvállalatok tehát elsősorban erőforrás optimalizálás céljából veszik igénybe a FLOSS termékeket. [@mahajan_technological_2013]

Érdekes módon Spinellis statisztikai elemzése azt mutatta, hogy a gyorsan fejlődő vállaltok és a különösen termelékeny munkavállalók egyáltalán nem részesítik előnyben a FLOSS rendszereket, sőt, ennek épp ellenkezője igaz [@spinellis_organizational_2012]. Az eredmény csak első látásra meglepő, hiszen a szabad szoftver erősségének számító testreszabhatóság (lásd alább) nem nyújt valódi előnyt, ha a piaci termékek -- igaz magasabb árért -- gyorsabban és hatékonyabban le tudják fedni az összes igényt. Ezt pedig mindig megtehetik akár a FLOSS termék vagy annak komponenseinek felhasználásával is. A szabad szoftvereknek tehát továbbra is az alacsony költség marad mint versenyelőny. 

### Jellemző piaci szegmensek (FS-H-P){#sec:FS-H-P}

A FLOSS termékek nem egyformán vannak jelen az egyes piaci területeken. A FLOSS jelenség jellemzően erős az IT szektorban. Jól ismert zászlóshajókat találhatunk itt az operációs rendszerek, webkiszolgálók, böngészők, szoftverfejlesztés, verziókezelés és adatbázis-kezelők piacán. [@barua_what_2014] Hasonlóképpen erős a jelenléte a middleware [@nishimura_analysis_2009], bioinformatika, katonai számítások és az akadémiai kutatások terén [@scacchi_understanding_2009] sőt bizonyos területeket akár teljesen uralhat is [@jaeger_open_2013; @luoma_scenarios_2011]. 
Ezek közül a felhőtechnológia különösen figyelemre méltó, hiszen a FLOSS potenciális problémái a felette futó rendszer sértetlenségét is veszélyeztetik[@mansfield-devine_open_2017].

Érdekes módon a magában is gyakran Létfontosságú Rendszerelemnek számító közszféra információs rendszereiben növekvő érdeklődés tapasztalható a FLOSS rendszerek iránt. Míg korábban elsősorban a FLOSS webszolgáltatásokat használták a szabványkövetés, módosíthatóság és függetlenség nagy vonzerőt jelentenek ebben a szektorban. [@valimaki_empirical_2005; @bouras_policy_2014]
Ebben a szektorban a polgárok jogai odáig is terjedhetnek, hogy az adatok előállításának pontos módszereit is megismerhessék, ami a forrás nyíltsága nélkül aggályos [@bouras_policy_2014].
A FLOSS jelentősége egyértelműen növekszik például az Egyesült Királyság közszolgálati szektorában, a politika egyre inkább felismeri az előnyös hatásokat [@bouras_policy_2014]. 
Belgiumban Viseur erős jelenlétet azonosított a voip, erp és a képzés terén is[@viseur_initial_2014]. A globális gazdasági hatás előnyeivel a vonatkozó részben foglalkozom (FS-G-G).

Más területeken ugyanakkor nincs vagy csak elvétve található jó minőségű (vagy akár minimálisan versenyképes) megoldás.  Nincs értékelhető jelenlét például az ipari célszoftverek piacán [@luoma_adoption_2011]. Jellemző a FLOSS használat az ad-hoc biztonsági megoldások kialakításakor és a tesztelések során, jelentős szerepet játszik az esemény utáni szakértői elemzésekben[^forensic], ugyanakkor a kritikus rendszerekhez már szinte minden esetben üzleti alkalmazásokat használnak a nagyvállalati szektorban [@kuechler_misconceptions_2013].

Bizonyos biztonságkritikus területek kifejezetten kerülik a nyíltsággal járó kockázatokat. Ilyen a DRM[^DRM] védelem, az ATM és POS terminálok vagy a smart card ipar területei[@diehl_law_2016].

[^DRM]: Digital Right Management

[^forensic]: Angol nevén "Forensic Analysis"

### Adatmigráció (FS-H-A){#sec:FS-H-A}

A FLOSS változatra való áttérés általában nem pusztán egy új szoftver telepítését jelenti. A meglévő adatokat migrálni kell, a rendszer más komponensekre irányuló interfészeit újra kell írni. Ez különösen nehézkes lehet a FLOSS diszkriminatív tulajdonsága miatt (FS-Sz-L). [@bouras_methodology_2013]

Egy esetleges migráció során szervezeti problémákkal is szembe kell nézni. A vállalati vezetők a változással szembeni ellenállást, a házon belüli FLOSS szakértelem hiányát és a FLOSS bevezetésével kapcsolatos tapasztalatok hiányát jelölték meg fő akadályként. [@bouras_methodology_2013] 

A nagyvállalatok komplex információs rendszereiben a két legjelentősebb egyedi érték az idők során létrehozott kifinomult algoritmusok és az azt karbantartó kompetens csapat. Az algoritmusok és eljárások általában igen nagy mennyiségű kód integráns részét képezik, amelynek változtatása meglehetősen nehéz. A hosszú idő alatt felépített csapat és az összegyűjtött know-how csak lassú változásokra képes. Nem meglepő, hogy a felső vezetés a rendszer két legfontosabb értékét nem szívesen kockáztatja, ha úgy érzi a FLOSS bevezetése veszélyeztetné őket. [@durand_oss_2012]

Tekintve, hogy a migrációs folyamat nem mindig visszafordítható, a migrálás az integritást sértő esetleges migrációs hibáktól eltekintve is sértheti a rendelkezésre állást elvét, tekintve, hogy a migrálás előtti rendszermentések az újr rendszerbe csak komoly nehézségek árán tölthetők vissza. 

### Egyedi igényekhez alakíthatóság, testreszabás (FS-H-T){#sec:FS-H-T}

A szoftvergyártó-felhasználó értékesítési csatornában a legtöbb esetben megjelennek köztes szereplők, az úgynevezett rendszerintegrátorok. A gyártó nem közvetlenül értékesíti termékét, hanem a rendszerintegrátoron keresztül, melynek termékében központi komponens az adott szoftver, de kiegészítő termékeket és szolgáltatásokat kínál hozzá. A jó minőségű szoftverrendszer előállításánál a FLOSS szinte teljes mértékű módosíthatósága nagy előnyt jelent, hiszen a forráskód birtokában elvben bármilyen átalakítás elvégezhető. [@laszlo_nyilt_2009] 
Egyes vásárlóknak olyan speciális igényei lehetnek, amelyeket a szabványos változattal nem lehet kielégíteni, a kód változtatásának lehetősége pedig megoldást jelenthet erre a problémára, ami az integrátorok számára különösen előnyös.  [@weikert_model_2013] 
Az fejlesztők számára egyetlen késztermék átalakítása kisebb befektetéssel jár hasonló eredmények mellett, mint egy teljesen új termék létrehozása. Teljes funkciókhoz jutnak így ingyenesen, a hiányzó képességeket már könnyebb pótolni. [@akkanen_reusing_2007]
A lokalizáció, azaz a helyi nyelvhez, szokásokhoz illesztés is könnyebben elvégezhető ha a forrás és a fordítást végző közösség rendelkezésre áll. Ez a képesség a FLOSS rendszerek egyik erőssége [@bouras_methodology_2013] bár a lokalizációt célzó SaaS szolgáltatások[^transifex] részlegesen csökkenthetik az üzleti szoftverrendszer lokalizációs terheit, az azonnali és egyedi módosítás továbbra is csak a forrás birtokában lehetséges.

[^transifex]: ilyen SaaS szolgáltatást nyújt például a Transifex (https://www.transifex.com/)

A nyílt kód segítségével egyúttal magasabb biztonsági szint is elérhető, hiszen az esetleges hibák és biztonsági rések kijavíthatóak [@budai_balazs_benjamin_e-kozigazgatas_2008]. A változtatásokat saját időbeosztás szerint bármikor el lehet végezni, nem kell várakozni a gyártó kiadási ciklusaira [@gurbani_case_2006]. A zárt forrású megoldásokba nem lehet belenyúlni, vészhelyzetben nincs lehetőség a reakcióra, az egyetlen azonnali megoldás a folyamat ismételt újraindítása ami nem feltétlenül vezet eredményre. Nyílt forrás esetén megfelelő szaktudás mellett legalább a lehetőség adott [@wubishet_understanding_2009].

A felhasználók szemszögéből nézve a testreszabhatóság kérdése árnyaltabb. Az üzleti megoldások általában rendelkeznek valamilyen szintű beállítási lehetőséggel, de a FLOSS rendszerek testreszabási lehetőségei messze meghaladják ezeket [@sohn_strategic_2008]. Problémát jelent viszont, hogy a testreszabáshoz általában jelentős szakismeret és idő szükséges, ami egy átlagfelhasználó esetén sokszor túlzó elvárás. Ezt igazolták Spinellis korábban említett eredményei, amelyből látható, hogy a gyorsan fejlődő, produktív felhasználók és cégek inkább a piac által számukra előre testreszabott megoldásokat részesítik előnyben. [@spinellis_organizational_2012] 

A változtathatóság előnyeinek pontos értékét azonban nem könnyű felbecsülni [@gurbani_case_2006] a változtatásnak pedig adminisztrációs ára van. Az új verziók változásait a szervezetnek követni kell, ha nem akar lemondani a biztonsági frissítések nyújtotta előnyökről, és ha nem vezeti vagy nem tudja visszavezetni a változtatásait, a közösség támogatása jelentősen csökkenhet ha később problémák merülnek fel. A fentiek miatt a változtatás kizárólag indokolt esetben javasolt. [@host_usage_2011;@kes_sler_customization_2009]

Összefoglalva, a testreszabhatóság elsősorban az integrátorok és fejlesztők számára nyújt valódi előnyöket, a végfelhasználó csak akkor tudja kiaknázni ezeket a lehetőségeket, ha magasan képzett és megfelelő mennyiségű idő áll rendelkezésére. Amennyiben a szervezet belső erőforrásból végez rendszer-fejlesztéseket a testreszabhatóság jelenthet biztonsági előnyt, egyéb esetben ez a hatás nem releváns.

### Összefoglalás

A FLOSS felhasználói szempontból bizonyos mértékig azonos tulajdonsággal rendelkezik mint a COTS termékek (az USA szabályzata egyenesen COTS terméknek tekint minden FLOSS terméket), azonban van néhány fontos eltérés. 
A számtalan változat miatt a számunkra megfelelő termék kiválasztása nem egyértelmű, a megszokott minősítő rendszerek nem használhatóak, egyedi adatbázisok és modellek szükségesek. 

Az igen széles körű FLOSS komponens integráció sajátos problémákkal küzd, amelyből a legfontosabb a helyi változtatások kezelésének és a White-box integráció során elvégzett ellenőrzés meglétének kérdése. 

A gyártófüggetlenség vonzó előny, de közvetlen biztonsági hatást nem sikerült azonosítani. A FLOSS felhasználói tábora bizonyos eltérést mutat az üzleti termékek felhasználói táborától, azonban ez az eltérés nem szignifikáns. Míg bizonyos piaci szegmensekben a FLOSS piacvezető, más szegmensekben rendkívül alacsony a jelenlét és a választék.

A FLOSS migráció szempontjából nem különbözik jelentősen az üzleti termékektől. A vezetés gyakran ad hangot aggodalmának, de ezek az aggodalmakat inkább a bizonytalanság generálja, technikai szempontból nincs jelentős különbség a migráció terén.



<!--vim: set et :-->
