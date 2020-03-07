Részkövetkeztetések
-----------------------

A KC-1 célkitűzés keretében a LIRE és a FLOSS elemek kapcsolatát vizsgáltam. Megállapítom, hogy a LIRE többszörös függősége és a FLOSS bujtatott jelenléte folytán a biztonságra gyakorolt hatás rendkívül összetett, elméletileg tetszőleges számú közvetítőn keresztül is létrejöhet. A feltörekvőben lévő felhő és IoT technológiák terjedésével a helyzet különösen kiéleződhet, tekintettel e területek jelentős (gyakran rejtett) FLOSS felhasználására. 

A LIRE direkt FLOSS kitettsége az alábbi négy szint valamelyikén valósulhat meg:

* **I. típus**: A szervezet ületi termékként, viszonteladótól szerzi be a nyílt forrású szoftvert avagy hardver komponensként, nagyobb szoftvercsomag részeként illetve önálló megoldásként alkalmazza azt.
* **II. típus**: A szervezet közvetlenül a fejlesztőközösségtől szerzi be a szoftver terjesztésre szánt változatát, csomagkezelő rendszeren keresztül vagy direkt módon, általában bináris formában.
* **III. típus**: A szervezet saját belső előírásai szerint fordítja le a FLOSS termék stabil vagy fejlesztői változatát az eredeti forráskód felhasználásával. A szervezet ez esetben képes a fordítási opciók illetve akár a forrás módosítására.
* **IV. típus**: A szervezet direkt vagy közvetett módon részt vesz a fejlesztésben, saját fejlesztési ágat vezet, egyedi módosításait a szülő projektbe visszavezeti vagy folyamatosan karbantartja.


Az áttételes hatás tényleges megvalósulási gyakoriságának vizsgálata sajnos objektív akadályokba ütközik, tekintettel a LIRE pontos felépítésének érzékeny és minősített voltára. Hazai LIRE rendszerek üzemeltetőivel folytatott személyes találkozók keretében meggyőzödhettem róla, hogy a kutatásban feltárt hatáspontok legalább egy része mindenképpen valós lehetőség, továbbá a [-@sec:MASODIK]. fejezetben bemutatok néhány konkrét példát is. 


A KC-2.1 célkitűzésnek megfelelően megállapítottam, hogy a tudományos közösség jelentős túlsúllyal foglalkozik a FLOSS fejlesztési módszertan kérdéseivel, míg más aspektusok (biztonság, megfelelőség, életciklus menedzsment) kevésbé kutatottak. A biztonsági kérdéseket is érintő munkák döntő részben a nyílt forrású termékek szoftverminőség-vizsgálatára szorítkoznak. A könnyen hozzáférhető forráskód okán gyakran szerepelnek kutatások adatforrásaként, de a nyiltság konkrét hatásainak vizsgálatával a publikációk általában nem foglalkoznak.

A javasolt módszerek egyenletes eloszlást mutatnak a sajátosságok tekintetében, azaz a kutatói közösség, valamennyit fontosnak tartja, ugyanakkor empirikus adatok és alapkutatási eredmények első sorban a nyílt forrású fejlesztés területén állnak rendelkezésre, ezért az eredmények döntő része is ide koncentrálódik. 

Megállapítottam, hogy a gazdasági hatással, tudati dimenzióval, terméktulajdonságokkal kapcsolatos jellemzők vizsgálatához szükséges adatot jelenleg kizárólag szük területre koncentrálódó (nem reprezentatív) felmérésekből lehet gyűjteni vagy egyáltalán nem áll empirikus eredmény rendelkezésre és csak szakértői véleményekre támaszkodhatunk.

A kutatás első fázisában többszöri finomítással létrehoztam a FLOSS sajátosságok egy lehetséges rendszertanát ([-@fig:FLOSSSaj] ábra) amely megfelel a KC-2.2 célkitűzésnek. Ezt a rendszertant alkalmazom az következő fejezetekben.

Megállapítom, hogy a FLOSS mint jelenség LIRE-re gyakorolt hatásainak vizsgálatához semmiképpen sem elegendő a LIRE elsődleges rendszereinek vizsgálata. A FLOSS esetleges sérülékenységei akkor is jelentős hatást gyakorolhatnak a LIRE komponenseire, ha az információs rendszer közvetlenül (papíron) semmilyen FLOSS megoldást nem használ. 

 
