
Irodalomkutatás
--------------

A KC-2 kutatási cél eléréséhez Petersen és társai által javasolt Systematic Mapping Study módszertanát alkalmaztam, amely jól használható, elterjedt módszer a szoftverfejlesztés terén felmerülő osztályozási problémák kezelésére és a téma struktúrálására [petersen_systematic_2008;@petersen_guidelines_2015].

A Systematic Literature Review (SLR) módszerével ellentétben a Systematic Mapping Study (SMS) a témákra bontott tudományos bizonyítékok elérhetőségére koncentrál, kevésbé érzékeny a precízen megfogalmazott keresőkérdésekre és nem igényli a publikációk minőségének értékelését [@napoleao_practical_2017]. Egy szélesebb terület átfogó elemzésére az SMS megfelelőbb eszköz, ugyanis segítségével hatékony képet alkothatunk az egyes részterületek kutatottsági állapotáról és módszereiről.

A Systematic Mapping Study tervezésének vázlatos lépései az alábbiak:

1. téma és kérdésfelvetés;
2. kutatási terv, források és keresőkifejezés meghatározása;
3. tanulmánykiválasztási és elutasítási kritériumok meghatározása;
4. adatgyűjtés;
5. adatelemzés;
6. eredmények előállítása.

### Kutatási cél

A teljes kutatómunka kérdésfelvetésével összhangban az SMS tanulmány az KC-2.1 kutatási célt hivatott megvalósítani, azaz felméri, hogy a FLOSS egyes hatásai mennyira kutatottak a különféle területeken. Az SMS tanulmány által összegyűjtött anyagok egyúttal a jellegzetességek rendszerezésének (KC-2.2) és a sajátosságok meghatározásának (KC-2.3) alapját is képezik.

A kutatási kérdés további bontásával az alábbi részcélokat határoztam meg:

* KC1.1a: A nyílt forrású szoftverek biztonsággal kapcsolatos egyedi sajátosságainak meghatározása.
* KC1.1b: A kutatói közösség milyen súllyal foglalkozik az egyes sajátosságokkal?
* KC1.1c: Milyen típusú kutatásokat végeztek a témában?
* KC1.1d: Milyen témákkal foglalkoznak a kutatók?
* KC1.1e: A jelenlegi FLOSS biztonsággal kapcsolatos eredmények milyen biztonsági hatásokat azonosítanak?

### Alkalmazott protokoll
    
A kereséseket a következő digitális könyvtárakban végeztem : 

* IEEE Digital Library, 
* ACM Digital Library, 
* ScienceDirect,
* és SpringerLink.

A kiválasztott digitális könyvtárak nagy mennyiségű művet indexelnek és vélhetően jól lefedik a területen folyó mértékadó kutatásokat. Az adatgyűjtésben valamennyi, tehát nem csak a szabadon elérhető (Open Access) publikációk kerültek bele, ami sajnálatos módon csökkenti a kutatás reprodukálhatóságát, de úgy véltem, a szabadon elérhető művek relatív alacsony száma miatt a területet csak a teljes anyagmennyiséggel lehet megfelelően lefedni. A különböző könyvtárak azonos művekre is hivatkozhatnak, ezért a keresés után duplum-ellenőrzésre volt szükség. Az SMS vizsgálatot 2016 elején végeztem, ennek megfelelően az SMS eredményeiben csak 2016 márciusa előtti művek szerepelnek.

A források meghatározása után a következő feladata a tanulmányok kiválasztási és szűrési kritériumainak definiálása. A SMS kutatás a következő kiválasztási feltételek szerint végeztem:

*   digitális könyvtárakban kereshető dokumentumok, cikkek folyóiratok és konferencia publikációk amelyek a nyílt forrás vagy annak fejlesztési módszertanának valamilyen biztonsági vonatkozását elemzik vagy összehasonlítják azt a zárt forrású fejlesztési módszertan eredményeivel. 
*   2005 után jelent meg. Ennél régebbi publikációk esetén kicsi az esély, hogy olyan releváns információ található a gyorsan fejlődőt területről, ami később nem jelenik meg sehol.
*   A tanulmány lehet kísérlet, esettanulmány, összehasonlító elemzés, vélemény, tapasztalati
    beszámoló. 
*   computer science, software engineering és security profilú folyóiratban jelent meg. 


A kihagyási kritériumok a következőek voltak:

1. Nem angol vagy magyar nyelven íródott.
2. Hálózaton keresztül nem elérhető. Azaz a teljes anyag nem beszerezhető digitális könyvtárak vagy nyílt oldalon keresztül.
3. Invited papers, keynote speeches, szabványok, workshop reports, reviews. 
4. Nem teljes értékű dokumentumok, vázlatok, prezentáció diák és abstractok. Korai elérésű művek.
5. Másodlagos és harmadlagos tanulmányok és meta analízisek.
6. Nem szoftvertervezéssel foglalkozó computer science témájú cikkek (pl. database systems, human-computer interaction, computer networks)
7. Nyílt forrásra csak további, tervezett feladatként hivatkozó munkák. 
9. A publikált eredmény nem köthető a nyílt forráshoz, pusztán a bemutatott vagy felhasznált szoftver(ek) nyílt forrású(ak).
10. nyílt forrású programot elemez, de egyértelműen biztonsági vonatkozások nélkül: teljesítmény elemzés, funkcionális értékelés.
11. Azért foglalkozik nyílt forrással mert könnyen elérhető, de a vizsgált kritériumnak nincs köze a biztonsághoz és nem vizsgálja a zárt forrástól való eltérést. (Példul olyan egyébként nehezen elérhető adatokat vizsgál mint a commit size, loc, stb.)
12. Esettanulmányok, ahol egy adott open source szoftver adott tulajdonságát elemzik, amely nem általánosítható. (pl. USB kezelés Linux alatt)
13. Egy szűkebb open source kategória elemeit hasonlítja össze. (pl. nyílt forrású játékok, ERP, adatbázisok összehasonlító elemzése). 


A információk kinyerését három iterációs lépésben végeztem. A keresőszöveg alapján beazonosított művek feltételeknek való megfelelését a cím és az absztrakt segítségével vizsgáltam. Amennyiben ez alapján a megfelelés nem volt egyértelműen eldönthető, a szöveg átfutásával döntöttem. Második lépésként a bevezetés és a konklúziók alapján besoroltam a megfelelő kategóriákba. A harmadik lépés során a művek teljes átolvasásával beazonosítottam a biztonságra vonatkozó javaslatokat és problémafelvetéseket.

Az adatgyűjtés eredményét SQLite adatbázisban rögzítettem, a szűréseket és vizualizációt saját fejlesztésű szoftverrel végeztem el.


### Keresési stratégia

A nyílt forrás szemantikai rendszere nem teljesen kiforrott, több rövidítés és szó is jelölheti ugyanazt a fogalmat, míg egyes szerzők azonos kifejezés alatt mást érthetnek. A nyílt fejlesztési modellel kapcsolatos publikációkat Klaas-Jan Stol szerint az alábbi kifejezés segítségével lehet beazonosítani [@klaas-jan_stol_supporting_2011]:

~~~~~~~~
"open source software" OR "libre software" OR
"free software" OR "OSS" OR "FOSS" OR "F/OSS"
OR "F/OSSD" OR "FOSSD" OR "FLOSS" OR "F/LOSS"
OR "OSSD"
~~~~~~~~~

Ebből a kifejezésből az "OSS" szöveget Klaas-Jan Stol eltávolította, feltételezve, hogy ha ez a szó szerepel, akkor az első kereső kifejezés szintén szerepel. A keresőkifejezés célja a nyílt és zárt modell eltéréseinek felderítése illetve a biztonsággal kapcsolatot jellemzők meghatározása volt, ennek érdekében a felhasznált keresőszövegnek tartalmaznia vagy a zárt forrásra vonatkozó utalást vagy a a sérülékenységre, biztonságra, problémákra utaló kifejezéseket kell tartalmaznia. A cél elérése érdekében az alábbi keresőkifejezést állítottam össze:

~~~~~~~~
(   "open source software" OR "libre software" OR 
    "free software" OR "FOSS" OR "F/OSS" OR "F/OSSD" OR 
    "FOSSD" OR "FLOSS" OR "F/LOSS" OR "OSSD"
) AND (
    ( 
        ("closed source" OR traditional OR proprietary) AND 
        (comparison OR evaluation OR difference)
    ) OR vulnerability OR (security AND (implication* OR problem* OR weakness* OR issue*))
)
~~~~~~~~

Az IEEE Xplore digitális könyvtár nem volt képes kezelni az összetett keresőkifejezést, ezért a szűrést ebben az esetben két részletben, logikai bontással kellett megvalósítani. Ahol a digitális könyvtár tartalmazott téma szerinti szűrési lehetőséget, a keresést kibővítettem bármely Open Source kulcsszóra amennyiben az SWE és Security témakörbe esett. Ezzel a módszerrel vélhetően sikerült lefedni a témába vágó publikációk döntő részét.


A keresés, duplum eltávolítás és az első kiválasztási forduló alapján elfogadott művek száma a [-@tbl:SMSPubNum]. táblázatban látható módon alakult.

Digitalis könyvtár          |   keresés | első szűrés
----------------------------|-----------|-----------
Springer Link CS/SWE        |   3948    |   285         
IEEE Xplore                 |   256+158 |   74          
Science Direct              |   2829    |   103         
ACM                         |   4613    |   144         
Összesen:                   |   11804   |   606

: SMS kiválasztási és elutasítási kritériumok eredménye. {#tbl:SMSPubNum}



### Osztályozási séma

A publikációk rendszerezése érdekében hat kvalitatív és egy kvantitatív (év) osztályt vezettem be. Az osztályozás kategóriáit részben korábbi tapasztalatok, részben egy 50 elemű pilot halmaz segítségével határoztam meg. A kategóriák az irodalomkutatás során ennek ellenére bővültek, ezért a bővítés elötti műveket újrakategorizáltam. Az osztályozás mellett szabad szöveges címkézést is alkalmaztam a kereshetőség megkönnyítése végett. Az alkalmazott osztályokat és multiplicitásukat a [-@tbl:SMSClass]. tábla mutatja be. Az "S"-el jelölt osztályok publikációnként csak egy értéket vehetnek fel míg az "M"-el jelöltek többértékűek. 

kód  Osztály                                                                            típus
---- --------------------------------------------                                       ----
Year publikálási év (Year)                                                              S
TYP  kutatás típusa                                                                     S
OSP  előző kutatásban meghatározott FLOSS jellemzők                                     M
SEC  biztonsági terület                                                                 M
CTR  a publikáció eredményének típusa                                                   M
MTH  módszertani kategória                                                              M
TOP  a publikáció témája                                                                S  
--------------------------------------------------------------------------------------------
: SMS osztályok {#tbl:SMSClass}


A kutatás típusa szerinti besorolást Petersen [@petersen_systematic_2008] által javasolt felosztás szerint végeztem, a [-@tbl:SMSResKat]. táblázatban bemutatott definíciók alapján.

-------------------------------------------------------------------------
Kód Típus kategória             Leírás
--- --------------------------  ------------------------------------------
VAL Validation Research         Új módszereket vizsgál, amelyeket még nem ültettek át
                                a gyakorlatba.
                                A felhasznált módszer lehet például kísérlet.

EVA Evaluation Research         A módszert gyakorlatba is átültették és a értékelték.
                                Bemutatja hogyan működik a módszer a gyakorlatban, és mi az
                                implementáció következményei (előnyök és hátrányok). 
                                Az iparban felmerülő problémák azonosítása is ide tartozik.

PRB Problem Investigation	Ismert vagy újonnan felmerült probléma körülményeinek 
				és jellemzőinek vizsgálata.

SOL Solution Proposal           Egy problémára javasol megoldást, amely lehet új vagy egy 
                                meglévő jelentős bővítése. Az alkalmazhatóság potenciális
                                hasznát rövid példával vagy jó érveléssel támasztja alá.

PHI Filozófiai publikáció       Ez a fajta munka új nézőpontból vizsgálja a már létező dolgokat
                                a témát valamilyen taxonomia vagy koncepcionális keretrendszerbe
                                rendszerezve.

OPI Vélemény                    Ezek a munkák valakinek a személyes véleményét fejezik ki,
                                miszerint egy adott módszer jó vagy rossz, illetve mi a
                                helyes eljárás egy adott esetben. Nem függenek más munkáktól
                                és kutatási módszertantól

EXP Tapasztalat                 Ismerteti, mit és milyen módon hajtottak végre valamit
                                a gyakorlatban. A szerző személyes tapasztalatának kell lennie. 

-------------------------------------------------------------------------
: Tudományos művek típus szerinti felosztása {#tbl:SMSResKat}

A további osztályok értékei a következők:

kód FLOSS kategória (OSP)
--- -----------------------
COM Közösség 
DEV Fejlesztés 
DIS Terjesztés 
ECO Gazdasági hatás 
MET Metaadatok 
OTH Egyéb 
POL Szabályozás 
PRD Termék 
SOC Tudati dimenzió 
USG Felhasználás 

A biztonsági területek kategóriáit az amerikai MITRE szervezet által használt felosztást követő módon határoztam meg.

kód Biztonsági terület (SEC)
--- -------------------------
SWA Szoftverminőség vizsgálat 
SCM Beszállítói lánc
VUL Sérülékenységek
RIM Kockázatelemzés
CFM Konfiguráció-menedzsment
LCS Életciklus menedzsment 
TST Tesztelés 

kód Tudományos eredmény kategória (CTR)
--- ---------------------------
PRT Eszköz: a publikáció felhasználható eszközt ismertet.
PRS Folyamat: a publikáció folyamatleírást tartalmaz.
MTR Metrikák: a publikáció empirikus eredményeket közöl numerikus formában.
MOD Modell: új modellt határoz meg.
MET Módszer: megoldási módszert javasol egy problémára.
TXN Taxonómia: új osztályozást javasol vagy taxonomiát fogalmaz meg.

kód Módszertani kategória (MTH)
--- ------------------------
CST Esettanulmány
DAN Adatelemzés
SRV Felmérés
GRT Grounded theory
FST Field study
EXP Kísérlet
SMR Systematic review
THW Elméleti munka
MOA Modellanalízis
SMS Systematic Mapping study


kód Téma kategória (TOP)
--- -----------------------
ADP Elfogadottság 
CVT Áttértés zártról nyílt modellre
CPL Jogi és szabályozási megfelelőség 
DEV Fejlesztés 
ECO Gazdaságosság 
OIT FLOSS integráció
RSR FLOSS kutatás 
OTH Egyéb
SEC Biztonság
EVO Szoftver életút, fejlődés
QAA Minőségvizsgálat
GEN Általános OSS tulajdonságok 


### Eredmények

A publikációk osztályozását egy erre a célra fejlesztett web alapú űrlapon keresztül végeztem, a nyers eredményeket további feldolgozásra SQLite adatbázisban tároltam. Az iteratív címkézési eljárás eredményeképpen létrejövő adatbázisból SQL lekérdezésekkel állítottam elő a végső eredményeket. Az numerikus eredményeket az értekezésben halmozott oszlop és buborék diagramok segítségével prezentáltam. Az eredeti nyers adathalmaz valamint a kiértékeléshez és az ábrák készítéséhez használt szoftver forráskódja kutatás szoftvertárházán keresztül szintén elérhetőek. 

Az egyes FLOSS sajátosságok kategóriáiba eső publikációk számának évenkénti bontását a [-@fig:SMSYearOSP] ábra mutatja be (KC1.1a, KC1.1b). Kutatottság szempontjából legjelentősebb sajátosságok a közösség szerepe és a fejlesztési módszertan eltérései.  A fejlesztési eltérésekkel foglalkozó publikációk 2009 környékén tetőztek, de a kérdés vizsgálata folyamatosan jelentős részét képezi az összes kutatásnak. Láthatóan minden évben állandó szereplők még a FLOSS sajátos felhasználási problémáit boncolgató munkák. Az egyes kategóriákba eső publikációk számát tekintve nincs jellemző tendencia, tehát nem állíthatjuk, hogy egyes sajátosság az előtérbe kerültek vagy háttérbe szorultak volna.


A publikáció típusa szerinti évenkénti bontást a [-@fig:SMSYearTYP] ábra mutatja be. Jól látható, hogy 2008-tól kezdve az uralkodó kutatási módszer a kiértékelő kutatás (Evaluation Research). A tapasztalati eredmények közlése közel változatlan és a publikációk mintegy ötödét teszi ki. Jelentős szerepet játszik a közvetlen javaslatokat ismertető Solution Proposal kategória, amely szintén közelítőleg azonos részarány jellemez a vizsgált időintervallumban. Mint arra számítani lehetett a tisztán elméleti munkák száma elenyésző és csak néhány évben jelenik meg. A kutatói közösség a vizsgált intervallumban elsősorban a probléma megértésére koncentrál.

A publikációk téma alapú bontását tekintve -- melyet a [-@fig:SMSYearTOP]. ábra mutat be -- látható, hogy 2008-tól kezdve az uralkodó kutatási terület a nyílt forrású fejlesztés (DEV), amely az összes publikáció mintegy 40-50%-át adja. A téma magas aránya nem véletlen, hiszen a nyílt forrás legfőbb egyedi jellegzetessége minden valószínűség szerint fejlesztési módszertanából következik. Az alkalmazással és elfogadottsággal kapcsolatos cikkek (ADP) száma 2011 körül tetőzött, ezt követően visszaesett, feltehetően a nyílt forrás fogalmának széles körben ismertté válása következtében. A minőségvizsgálattal kapcsolatos cikkek (QAA) folyamatosan szerepelnek a tudományos palettán, ami arra enged következtetni, hogy az ipar és a tudományos közösség érdeklődése élénk, ugyanakkor sok kérdés egyelőre nem tisztázott a területen. A kifejezetten biztonsági fókuszú publikációk (SEC) száma erősen ingadozó képet mutat, igaz, a téma folyamatosan jelen van. Ez arra enged következtetni, hogy a biztonság kérdése háttérbe szorul a nyílt forrás egyéb hatásainak vizsgálata mellett. Bár a gazdaságosság és a nyílt forrásra való áttérés (vagy éppen visszatérés) kérdése igen gyakran foglalkoztatja a hírportálok cikkíróit, a tudományos közösség ezekkel a témákkal csak marginálisan foglalkozik. 

A [-@fig:SMSYearMTH]. ábra az alkalmazott módszereket mutatja be évenkénti bontásban. Az uralkodó alkalmazott módszer az esettanulmány, az adatelemzés és a felmérés. Az esettanulmányok száma csökkenő tendenciát mutat, helyét lassan átveszi az adatelemzés. A felmérések továbbra is jelentős szerepet töltenek be a kutatásokban, ami kiemeli a nyílt forrás tudati dimenziójának jelentőségét. A kérdőívek viszonylag magas száma nem meglepő. Számos jellegzetesség nehezen vagy egyáltalán nem mérhető, esetleg egyenesen szubjektív, így vizsgálata inkább tartozik a társadalom-tudomány mint a mérnöki tudományok hatókörébe. Tekintve azonban, hogy a biztonság definíció szerint hasonlóképpen szubjektív jellegű, 

<div id="fig:SMSByYear">

![Publikáció típusa szerint](ábrák/SMS-Year-TYP.svg){#fig:SMSYearTYP width=50%}
![Publikáció témája szerint](ábrák/SMS-Year-TOP.svg){#fig:SMSYearTOP width=50%}

![FLOSS tulajdonság szerinti osztályozás](ábrák/SMS-Year-OSP.svg){#fig:SMSYearOSP width=50%}
![Módszertan szerinti osztályozás](ábrák/SMS-Year-MTH.svg){#fig:SMSYearMTH width=50%}

<!--
![Biztonsági terület szerinti osztályozás](ábrák/SMS-Year-SEC.svg){#fig:SMSYearSEC width=50%}
![Tudományos eredmények szerinti osztályozás](ábrák/SMS-Year-CTR.svg){#fig:SMSYearCTR width=50%}
-->

SMS osztályok kategóriái évenkénti bontásban (szerkesztette a szerző).

</div>

Érdekes kérdés, hogy az egyes részterületeken mely kutatási módszerek az irányadóak. A [-@fig:SMSOSPMTH]. ábra bemutatja, hogy mely FLOSS kategóriában hány publikáció alkalmazott egy bizonyos kutatási módszert. Mint az korábban kiderült, az uralkodó kutatási módszerek az esettanulmány a felmérés és az adatelemzés, de az eloszlásuk nem teljesen azonos a FLOSS minden területén. A tudati dimenzió és felhasználási kérdéseket elsősorban kérdőíves módszerrel igyekeznek meghatározni -- mint az várható volt -- ezen a területen az esettanulmányok és adatelemzések száma alacsonyabb, minden más módszer elenyésző. Elméleti munkát kizárólag a fejlesztés és a módszertan területein találunk, más kategóriákban nincsenek formális módszereket alkalmazó vagy javasló megoldások. A metaadatok területén -- tekintettel a nagy mennyiségű, könnyen feldolgozható adatra -- az uralkodó módszer az adatelemzés, de némiképp meglepő módon a kérdőíves módszereket itt is előszeretettel alkalmazzák.

A kutatás szempontjából legnagyobb fontossággal bíró terület a biztonság, amelynek módszereit külön vizsgáltam ([-@fig:SMSSECMTH]. ábra). Az alkalmazott módszerek eloszlását tekintve itt sem tapasztalható jelentős eltérés, esettanulmányok, adatelemzések és felmérések adják a publikációk nagy részét. Érdekes megfigyelni, hogy bizonyos módszerek, mint például a SMS/SMR, modellanalízis, elméleti munkák szinte teljesen hiányoznak ezen a területen. Közvetlen tapasztalatszerzésből (Field Study) származó eredményeket csak a szoftverminőség-vizsgálat, beszállítói lánc elemzése és a sérülékenység-elemzés területén találunk, igaz ezeken a területeken a minták száma túl alacsony ahhoz, hogy az eredményt reprezentatívnak tekinthessük. Összességében elmondható, hogy a FLOSS biztonsággal kapcsolatos kutatások döntő része (jóval több mint fele) Szoftverminőség-vizsgálattal kapcsolatos esettanulmány és adatelemzés. 
 

Fontos kérdés, hogy az egyes részterületeken milyen típusú eredményekkel találkozunk. A [-@fig:SMSOSPCTR]. ábra az eredmények típusait mutatja be FLOSS részterületek szerinti bontásban. Mint látható a tanulmányok eredményeképpen első sorban metrikákat, modelleket és módszereket kapunk, a folyamatleírások, taxonómiák és eszközök ismertetésének száma elenyésző. Numerikus adatokat döntő részben a közösség, fejlesztés és metaadatok kategóriában találhatunk, ami érthető, hiszen a nyílt forrás jellegzetességének számító nyílt fejlesztési modellnek hála ezek a numerikus adatok könnyen hozzáférhetők. A javasolt módszerek száma meglepő módon egyenletes, szinte minden kategóriában hasonló, azaz annak ellenére, hogy a forrásadatok elérhetősége és a módszertan eloszlása kimutathatóan kiegyensúlyozatlan, a kutatók igyekeznek minden részterületen módszereket javasolni. Mindez arra enged következtetni, hogy a részterületek fontosságát a kutatók ismerik, de megfelelő minőségű háttéradatok híján jóval kevesebb megalapozott tudományos eredményt lehet ezeken a területeken felmutatni.


A [-@fig:SMSTYPSEC]. ábrán látható milyen típusú kutatások célozzák az egyes biztonsági területeket. Szembeötlő, hogy a biztonság témáját feldolgozó publikációk jelentős részét a szoftverminőség vizsgálat területén már alkalmazott megoldások értékelése (Evaluation Research) adja. Viszonylag jelentős az ugyanezen területen végzett probléma és validációs vizsgálatok, megoldási javaslatok száma, illetve a sérülékenységek területén alkalmazott gyakorlati módszerek vizsgálata. Ugyanakkor feltűnő, hogy sok a "fehér folt", azaz bizonyos biztonsági területeken egyes módszerek teljesen hiányoznak. Nagyon kevés publikáció foglalkozik a konfiguráció menedzsment és a tesztelés területével. A kockázatelemzés területén, más kategóriáktól eltérően, a problémák vizsgálata és a javasolt megoldások az uralkodók.

<div id="fig:SMSCategs">

![FLOSS sajátosság szerint alkalmazott módszertan](ábrák/SMS-OSP-MTH.svg){#fig:SMSOSPMTH width=50%}
![Biztonsági területenként alkalmazott módszertan](ábrák/SMS-SEC-MTH.svg){#fig:SMSSECMTH width=50%}

![Publikáció típusonként jellemző eredményfajták](ábrák/SMS-OSP-CTR.svg){#fig:SMSOSPCTR width=50%}
![Publikáció típusok biztonsági területenként](ábrák/SMS-TYP-SEC.svg){#fig:SMSTYPSEC width=50%}

Publikációk száma az osztályok kategóriái szerint (szerkesztette a szerző).
</div>

### Összefoglaló analízis 
<!--
TODO: check válaszok erre?
* KC1.1a: A nyílt forrású szoftverek biztonsággal kapcsolatos egyedi sajátosságainak meghatározása.
* KC1.1b: A kutatói közösség milyen súllyal foglalkozik az egyes sajátosságokkal?
* KC1.1c: Milyen típusú kutatásokat végeztek a témában?
* KC1.1d: Milyen témákkal foglalkoznak a kutatók?
* KC1.1e: A jelenlegi FLOSS biztonsággal kapcsolatos eredmények milyen biztonsági hatásokat azonosítanak?
-->

Megállapítottam, hogy a leginkább kutatott FLOSS sajátossági kategória a fejlesztési módszertan különbsége. Természetesen ebből nem következik, hogy a biztonságra ez a sajátosság gyakorolja a legnagyobb hatást, de -- legalábbis a publikációk száma alapján -- ez a kérdés a legjobban kutatott, itt várható stabil eredmény, a lehetséges biztonsági problémák legnagyobb lefedettsége.

A vizsgált időszakban a tudományos közösség a probléma megismerésére, megértésére koncentrál. Erre utal a tájékozódó 
módszerek (esettanulmány, felmérés) dominanciája és az uralkodó publikáció típusok (tapasztalatok, értékelések, feltérképezés) száma szemben az elméleti munkák alacsony részarányával. 

Úgy találtam, hogy a javasolt módszerek száma egyenletes, bár a forrásadatok elérhetősége és a módszertan eloszlása kimutathatóan kiegyensúlyozatlan. A kutatói közösség valamennyi FLOSS területet fontosnak tartja, megoldási javaslatokkal is él, ám megfelelő alapkutatások híján bizonyos területeken igen nehéz tudományos eredményeket felmutatni.

A FLOSS biztonsági kérdéseivel kapcsolatos kutatások többnyire szoftverminőség-vizsgálattal kapcsolatos esettanulmányok és adatelemzések. A tudományos közösség a szoftverminőség-vizsgálatra és sérülékenységekre koncentrál, egyéb biztonsági területek (pl. tesztelés, életciklus menedzsment, konfiguráció menedzsment stb.) meglehetősen alacsony. Megállapítom, hogy a FLOSS biztonsági kérdéseinek kutatása a vizsgált időszakban egyoldalú és néhány részterületre fókuszált.

A szűrés és elemzés során számos olyan új sajátosság is felmerült, amely a kutatás korábbi szakaszából származó rendszerezésbe nem volt beilleszthető. Ezeket a jellemzőket a taxonómia bővítésével kezeltem, illetve felvételre kerültek a biztonsági hatásokat nyilvántartó adatbázisba. Ilyen, korábban rendszerzetlen jelentősebb sajátosság volt például a preprocesszor kapcsolók használatának lehetősége, a fejlesztői függetlenség és az ezáltal kialakuló fejlesztői befolyás kérdése, a Trusted Platform technológiákkal való esetleges inkompatibilitás kérdése illetve az egyszerű hozzáférhetőség folytán kialakuló kódmásolás (kódbeszivárgás) problémaköre. A felderített biztonsági hatásokkal részletesen a 2. fejezetben foglalkozom.  



<!-- vim: set ts=4 sw=4 et:-->
