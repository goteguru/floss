Irodalomkutatás
--------------

A KC-1 kutatási cél eléréséhez Petersen és társai által javasolt Systematic Mapping Study módszertanát alkalmaztam, amely jól használható, elterjedt módszer a szoftverfejlesztés terén felmerülő osztályozási problémák kezelésére és a téma struktúrálására [petersen_systematic_2008;@petersen_guidelines_2015].

A Systematic Literature Review (SLR) módszerével ellentétben a Systematic Mapping Study (SMS) a témákra bontott tudományos bizonyítékok elérhetőségére koncentrál, kevésbé érzékeny a precízen megfogalmazott keresőkérdésekre és nem igényli a publikációk minőségének értékelését [@napoleao_practical_2017]. Egy szélesebb terület átfogó elemzésére az SMS megfelelőbb eszköz, ugyanis segítségével hatékony képet alkothatunk az egyes részterületek kutatottsági állapotáról és módszereiről.

A Systematic Mapping Study tervezésének vázlatos lépései az alábbiak:

1. téma és kérdésfelvetés;
2. kutatási terv, források és keresőkifejezés meghatározása;
3. tanulmány kiválasztási és elutasítási kritériumok meghatározása;
4. adatgyűjtés;
5. adatelemzés;
6. eredmények előállítása.

A fejezetben csak az irodalomkutatás vázlatát és következtetéseit ismertetem, az eredmények, analízis és a részletes módszertan a [-@sec:IKUT]. függelékben található.

### Kutatási cél és módszertan

A teljes kutatómunka kérdésfelvetésével összhangban az SMS tanulmány az KC-1.1 kutatási célt hivatott megvalósítani, azaz felméri, hogy a FLOSS egyes hatásai mennyire kutatottak a különféle területeken. Az SMS tanulmány által összegyűjtött anyagok egyúttal a jellegzetességek rendszerezésének (KC-1.2) és a sajátosságok meghatározásának (KC-1.3) alapját is képezik.

A kutatási célkitűzés további bontásával az alábbi részcélokat határoztam meg:

* A nyílt forrású szoftverek biztonsággal kapcsolatos egyedi sajátosságainak meghatározása.
* A kutatói közösség milyen súllyal foglalkozik az egyes sajátosságokkal?
* Milyen típusú kutatásokat végeztek a témában?
* Milyen témákkal foglalkoznak a kutatók?
* A jelenlegi FLOSS biztonsággal kapcsolatos eredmények milyen biztonsági hatásokat azonosítanak?

A kereséseket négy nagy digitális könyvtár -- IEEE Digital Library, ACM Digital Library, ScienceDirect és SpringerLink felhasználásával hajtottam végre, amelyek vélhetően megfelelően lefedik a területen folyó mértékadó kutatásokat. Az adatgyűjtésben valamennyi, tehát nem csak a szabadon elérhető (Open Access) publikációk kerültek bele, ami sajnálatos módon csökkenti a kutatás reprodukálhatóságát, de úgy véltem, a szabadon elérhető művek relatív alacsony száma miatt a területet csak a teljes anyagmennyiséggel lehet megfelelően lefedni. 

A kutatásban alkalmazott protokoll (szűrési és kihagyási kritériumok) a függelékben megtalálhatók. A kiválasztást duplum-ellenőrzésre követte. Az adatgyűjtés eredményét SQLite adatbázisban rögzítettem, a szűréseket és vizualizációt saját fejlesztésű szoftverrel végeztem el. A keresés, szűrést, duplumellenőrzést követően összesen 934 publikációt elemeztem.

A publikációk rendszerezése érdekében hat kvalitatív és egy kvantitatív (év) osztályt vezettem be. Az osztályozás kategóriáit részben korábbi tapasztalatok, részben egy 50 elemű pilot halmaz segítségével határoztam meg.  Az elemzésben a következő kategóriákat használtam: "kutatás típusa", "biztonsági kategória", "hozzájárulás", "sajátosság kategória", "téma" és "tudományos módszertan". 

Az osztályok kategória-cimkéit, részletes elemzést és a grafikus eredményeket a függelék tartalmazza.

### Összefoglaló analízis 

Megállapítottam, hogy a leginkább kutatott FLOSS sajátossági kategória a fejlesztési módszertan különbsége. Természetesen ebből nem következik, hogy a biztonságra ez a sajátosság gyakorolja a legnagyobb hatást, de -- legalábbis a publikációk száma alapján -- ez a kérdés a legjobban kutatott, itt várható stabil eredmény, a lehetséges biztonsági problémák legnagyobb lefedettsége.

A vizsgált időszakban a tudományos közösség a probléma megismerésére, megértésére koncentrál. Erre utal a tájékozódó 
módszerek (esettanulmány, felmérés) dominanciája és az uralkodó publikáció típusok (tapasztalatok, értékelések, feltérképezés) száma szemben az elméleti munkák alacsony részarányával. 

Úgy találtam, hogy a javasolt módszerek száma egyenletes, bár a forrásadatok elérhetősége és a módszertan eloszlása kimutathatóan kiegyensúlyozatlan. A kutatói közösség valamennyi FLOSS területet fontosnak tartja, megoldási javaslatokkal is él, ám megfelelő alapkutatások híján bizonyos területeken igen nehéz tudományos eredményeket felmutatni.

A FLOSS biztonsági kérdéseivel kapcsolatos kutatások többnyire szoftverminőség-vizsgálattal kapcsolatos esettanulmányok és adatelemzések. A tudományos közösség a szoftverminőség-vizsgálatra és sérülékenységekre koncentrál, egyéb biztonsági területek (pl. tesztelés, életciklus menedzsment, konfiguráció menedzsment stb.) meglehetősen alacsony. Megállapítom, hogy a FLOSS biztonsági kérdéseinek kutatása a vizsgált időszakban egyoldalú és néhány részterületre fókuszált.

A szűrés és elemzés során számos olyan új sajátosság is felmerült, amely a kutatás korábbi szakaszából származó rendszerezésbe nem volt beilleszthető. Ezeket a jellemzőket a taxonómia bővítésével kezeltem, illetve felvételre kerültek a biztonsági hatásokat nyilvántartó adatbázisba. Ilyen, korábban rendszerezetlen jelentősebb sajátosság volt például a preprocesszor kapcsolók használatának lehetősége, a fejlesztői függetlenség és az ezáltal kialakuló fejlesztői befolyás kérdése, a Trusted Platform technológiákkal való esetleges inkompatibilitás kérdése illetve az egyszerű hozzáférhetőség folytán kialakuló kódmásolás (kódbeszivárgás) problémaköre. A felderített biztonsági hatásokkal részletesen a 2. fejezetben foglalkozom.  



<!-- vim: set ts=4 sw=4 et:-->
