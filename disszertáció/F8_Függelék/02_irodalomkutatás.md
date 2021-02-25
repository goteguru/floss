# Függelék: Irodalomkutatás {#sec:IKUT}

Az irodalomkutatás során a következő kérdésekre kerestem a választ: 

a. A nyílt forrású szoftverek biztonsággal kapcsolatos egyedi sajátosságainak meghatározása.
b. A kutatói közösség milyen súllyal foglalkozik az egyes sajátosságokkal?
c. Milyen típusú kutatásokat végeztek a témában?
d. Milyen témákkal foglalkoznak a kutatók?
e. A jelenlegi FLOSS biztonsággal kapcsolatos eredmények milyen biztonsági hatásokat azonosítanak?


## Alkalmazott protokoll
    
A kereséseket a következő digitális könyvtárakban végeztem : 

* IEEE Digital Library, 
* ACM Digital Library, 
* ScienceDirect,
* és SpringerLink.

A kiválasztott digitális könyvtárak nagy mennyiségű művet indexelnek és vélhetően jól lefedik a területen folyó mértékadó kutatásokat. Az adatgyűjtésben valamennyi, tehát nem csak a szabadon elérhető (Open Access) publikációk kerültek bele, ami sajnálatos módon csökkenti a kutatás reprodukálhatóságát, de úgy véltem, a szabadon elérhető művek relatív alacsony száma miatt a területet csak a teljes anyagmennyiséggel lehet megfelelően lefedni. A különböző könyvtárak azonos művekre is hivatkozhatnak, ezért a keresés után duplum-ellenőrzésre volt szükség. Az SMS vizsgálatot két részletben 2016 elején és 2020-ban végeztem azonos protokoll szerint, ennek megfelelően az SMS eredményeiben a 2020 márciusa előtt megjelent művek szerepelnek.

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


## Keresési stratégia

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



## Osztályozási séma

A publikációk rendszerezése érdekében hat kvalitatív és egy kvantitatív (év) osztályt vezettem be. Az osztályozás kategóriáit részben korábbi tapasztalatok, részben egy 50 elemű pilot halmaz segítségével határoztam meg. A kategóriák az irodalomkutatás során ennek ellenére bővültek, ezért a bővítés előtti műveket újrakategorizáltam. Az osztályozás mellett szabad szöveges címkézést is alkalmaztam a kereshetőség megkönnyítése végett. Az alkalmazott osztályokat és multiplicitásukat a [-@tbl:SMSClass]. tábla mutatja be. Az "S"-el jelölt osztályok publikációnként csak egy értéket vehetnek fel míg az "M"-el jelöltek többértékűek. 

kód  Osztály                                                                            típus
---- --------------------------------------------                                       ----
Year publikálási év (Year)                                                              S
Type kutatás típusa                                                                     S
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
MÓH Módszerhitelesítés          Új módszereket vizsgál, amelyeket még nem ültettek át
                                a gyakorlatba.
                                A felhasznált módszer lehet például kísérlet.

MÓD Módszervizsgálat            A módszert gyakorlatba is átültették és a értékelték.
                                Bemutatja hogyan működik a módszer a gyakorlatban, és mi az
                                implementáció következményei (előnyök és hátrányok). 
                                Az iparban felmerülő problémák azonosítása is ide tartozik.

PRB Problémavizsgálat           Ismert vagy újonnan felmerült probléma körülményeinek 
                                és jellemzőinek vizsgálata.

JAV Javaslat                    Egy problémára javasol megoldást, amely lehet új vagy egy 
                                meglévő jelentős bővítése. Az alkalmazhatóság potenciális
                                hasznát rövid példával vagy jó érveléssel támasztja alá.

FIL Filozófiai mű               Ez a fajta munka új nézőpontból vizsgálja a már létező dolgokat
                                a témát valamilyen taxonomia vagy koncepcionális keretrendszerbe
                                rendszerezve.

VÉL Vélemény                    Ezek a munkák valakinek a személyes véleményét fejezik ki,
                                miszerint egy adott módszer jó vagy rossz, illetve mi a
                                helyes eljárás egy adott esetben. Nem függenek más munkáktól
                                és kutatási módszertantól

TAP Tapasztalat                 Ismerteti, mit és milyen módon hajtottak végre valamit
                                a gyakorlatban. A szerző személyes tapasztalatának kell lennie. 

ELM Elméleti munka              Gyakorlati tapasztalatokat és módszereket nem használó
                                tisztán elméleti munka
-------------------------------------------------------------------------
: Tudományos művek típus szerinti felosztása {#tbl:SMSResKat}



A további osztályok értékei a következők:

kód FLOSS kategória
--- -----------------------
EGY Egyéb
FEJ Fejlesztés
FEL Felhasználás
GAZ Gazdasági hatás
KÖZ Közösség
MET Metaadatok
SZB Szabályozás
TER Terjesztés
TRM Termék
TUD Tudati dimenzió

A biztonsági területek kategóriáit az amerikai MITRE szervezet által használt felosztást követő módon határoztam meg.

kód Biztonsági terület
--- -------------------------
SBT Szoftverbiztonság
BEL Beszállítói lánc
BIS Biztonsági sérülékenységek
KOE Kockázatelemzés
KOK Konfigurációkezelés
ÉLM Életciklus menedzsment
TSZ Teszt
ÚTD Útmutató dokumentumok

kód Tudományos eredmény kategória
--- ---------------------------
ESZ Eszköz: a publikáció felhasználható eszközt ismertet.
FOY Folyamat: a publikáció folyamatleírást tartalmaz.
MET Metrikák: a publikáció empirikus eredményeket közöl numerikus formában.
MDL Modell: új modellt határoz meg.
MSZ Módszer: megoldási módszert javasol egy problémára.
RET Taxonómia: új osztályozást javasol vagy taxonomiát fogalmaz meg.

kód Módszertani kategória
--- ------------------------
ADE Adatelemzés
EMU Elméleti munka
EST Esettanulmány
FEL Felmérés
GRT Grounded theory
HET Helyszíni tanulmány
SMS Irodalmi elemzés (SMS)
KSR Kísérlet
MOA Modellanalízis
SZK Szakirodalmi áttekintés

kód Téma kategória 
--- -----------------------
BZT Biztonság
EGY Egyéb
EFG Elfogadottság
FFE FLOSS felhasználás
FKT FLOSS kutatás
FEJ Fejlesztés
GAZ Gazdaságosság
KÖZ Közösség
MGF Megfelelőség
MIN Minőségbecslés
SZÉ Szoftver életút, fejlődés
VÁT Váltás nyílt forrásra
ÁLT Általános OSS tulajdonságok

## Eredmények

A publikációk osztályozását egy erre a célra fejlesztett web alapú űrlapon keresztül végeztem, a nyers eredményeket további feldolgozásra SQLite adatbázisban tároltam. Az iteratív címkézési eljárás eredményeképpen létrejövő adatbázisból SQL lekérdezésekkel állítottam elő a végső eredményeket. Az numerikus eredményeket az értekezésben halmozott oszlop és buborék diagramok segítségével prezentáltam. Az eredeti nyers adathalmaz valamint a kiértékeléshez és az ábrák készítéséhez használt szoftver forráskódja kutatás szoftvertárházán keresztül szintén elérhetőek. 

A publikáció típusa szerinti évenkénti bontást a [-@fig:SMSYearType] ábra mutatja be. Mint látható a kutatások nagy része módszervizsgálat, problémavizsgálat vagy javaslat. Ez a három kategória az utolsó években különösen domináns. 2008-tól kezdve az uralkodó publikáció típus a Módszervizsgálat (vagy a módszert érvényességét ellenőrző módszerhitelesítés). A tapasztalati eredmények közlése folyamatos, közel változatlan és publikációk mintegy 5%-át teszi ki. Mint arra számítani lehetett a tisztán elméleti munkák száma elenyésző és csak néhány évben jelenik meg, a kutatói közösség a vizsgált intervallumban elsősorban a probléma megértésére koncentrál illetve konkrét megoldási javaslatokat ad. A publikációk évenkénti száma jelentős növekedést mutat, a 2014-es év óta közel megduplázódott. A 2015-ös évre eső publikációk alacsony számának oka nem világos, de a nyílt forrás iránti érdeklődés növekedése egyértelműen látható.

A publikációk téma alapú bontását tekintve -- melyet a [-@fig:SMSYearTopic]. ábra mutat be -- látható, hogy 2008-tól kezdve az uralkodó kutatási terület a nyílt forrású fejlesztés, amely az összes publikáció mintegy 40-50%-át adja. A téma magas aránya nem véletlen, hiszen a nyílt forrás legfőbb egyedi jellegzetessége minden valószínűség szerint fejlesztési módszertanából következik. Az alkalmazással és elfogadottsággal kapcsolatos cikkek száma 2010-es évek elején tetőzött, ezt követően arányaiban visszaesett, feltehetően a nyílt forrás fogalmának széles körben ismertté válása következtében. A minőségvizsgálattal kapcsolatos cikkek folyamatosan szerepelnek a tudományos palettán, ami arra enged következtetni, hogy az ipar és a tudományos közösség érdeklődése élénk, ugyanakkor sok kérdés egyelőre nem tisztázott a területen. A kifejezetten biztonsági fókuszú publikációk száma erősen ingadozó képet mutat, igaz, a téma szinte folyamatosan jelen van. Ez arra enged következtetni, hogy a biztonság kérdése háttérbe szorul a nyílt forrás egyéb hatásainak vizsgálata mellett. Bár a gazdaságosság és a nyílt forrásra való áttérés (vagy éppen visszatérés) kérdése igen gyakran foglalkoztatja a hírportálok cikkíróit, a tudományos közösség ezekkel a témákkal csak marginálisan foglalkozik. 

Az uralkodó alkalmazott módszer az esettanulmány, az adatelemzés és a felmérés. Az esettanulmányok száma csökkenő tendenciát mutat, helyét lassan átveszi az adatelemzés. A felmérések továbbra is jelentős szerepet töltenek be a kutatásokban, ami kiemeli a nyílt forrás tudati dimenziójának jelentőségét. A kérdőívek viszonylag magas száma nem meglepő. Számos jellegzetesség nehezen vagy egyáltalán nem mérhető, esetleg egyenesen szubjektív, így vizsgálata inkább tartozik a társadalom-tudomány mint a mérnöki tudományok hatókörébe. Tekintve azonban, hogy a biztonság definíció szerint hasonlóképpen szubjektív jellegű, 

<div id="fig:SMSByYear">

![Publikáció típusa szerint](ábrák/SMS-Year-Type.svg){#fig:SMSYearType width=50%}
![Publikáció témája szerint](ábrák/SMS-Year-Topic.svg){#fig:SMSYearTopic width=50%}

<!--
![FLOSS tulajdonság szerinti osztályozás](ábrák/SMS-Year-OSP.svg){#fig:SMSYearOSP width=50%}
![Módszertan szerinti osztályozás](ábrák/SMS-Year-MTH.svg){#fig:SMSYearMTH width=50%}

![Biztonsági terület szerinti osztályozás](ábrák/SMS-Year-SEC.svg){#fig:SMSYearSEC width=50%}
![Tudományos eredmények szerinti osztályozás](ábrák/SMS-Year-CTR.svg){#fig:SMSYearCTR width=50%}
-->

SMS osztályok kategóriái évenkénti bontásban (szerkesztette a szerző).

</div>

Érdekes kérdés, hogy az egyes részterületeken mely kutatási módszerek az irányadóak. A [-@fig:SMSOSPMTH]. ábra bemutatja, hogy mely FLOSS kategóriában hány publikáció alkalmazott egy bizonyos kutatási módszert. Mint az korábban kiderült, az uralkodó kutatási módszerek az esettanulmány a felmérés és az adatelemzés, de az eloszlásuk nem teljesen azonos a FLOSS minden területén. A tudati dimenzió és felhasználási kérdéseket elsősorban kérdőíves módszerrel igyekeznek meghatározni -- mint az várható volt -- ezen a területen az esettanulmányok és adatelemzések száma alacsonyabb, minden más módszer elenyésző. A metaadatok területén -- tekintettel a nagy mennyiségű, könnyen feldolgozható adatra -- az uralkodó módszer az adatelemzés, ugyanakkor némiképp meglepő módon a kérdőíves módszereket itt is előszeretettel alkalmazzák. Összességében elmondható, hogy az elemzett publikációk jelentős része -- közel egynegyede -- tartalmaz valamilyen fejlesztéssel kapcsolatos adatelemzést.

A kutatás szempontjából legnagyobb fontossággal bíró terület a biztonság, amelynek módszereit külön vizsgáltam ([-@fig:SMSSECMTH]. ábra). Az alkalmazott módszerek eloszlását tekintve itt sem tapasztalható jelentős eltérés, esettanulmányok, adatelemzések és felmérések adják a publikációk nagy részét. Érdekes megfigyelni, hogy bizonyos módszerek, például a modellanalízis szinte teljesen hiányoznak ezen a területen. Közvetlen tapasztalatszerzésből, terepmunkából származó eredményeket csak a szoftverminőség-vizsgálat, beszállítói lánc elemzése és a sérülékenység-elemzés területén találunk, igaz ezeken a területeken a minták száma túl alacsony ahhoz, hogy az eredményt reprezentatívnak tekinthessük. Összességében elmondható, hogy a FLOSS biztonsággal kapcsolatos kutatások döntő része biztonsági sérülékenységekkel és szoftverbiztonsággal kapcsolatos esettanulmány és adatelemzés. 
 
Fontos kérdés, hogy az egyes részterületeken milyen típusú eredményekkel találkozunk. A [-@fig:SMSOSPCTR]. ábra az eredmények típusait mutatja be FLOSS részterületek szerinti bontásban. Mint látható a tanulmányok eredményeképpen első sorban metrikákat, modelleket és módszereket kapunk, a folyamatleírások, taxonómiák és eszközök ismertetésének száma elenyésző. Numerikus adatokat döntő részben a közösség, fejlesztés és metaadatok kategóriában találhatunk, ami érthető, hiszen a nyílt forrás jellegzetességének számító nyílt fejlesztési modellnek hála ezek a numerikus adatok könnyen hozzáférhetők. A javasolt módszerek száma viszonylag egyenletes, szinte minden kategóriában hasonló a forrásadatok elérhetőségéhez viszonyítva, azaz a kutatók igyekeznek minden részterületen módszereket javasolni. Mindez arra enged következtetni, hogy a részterületek fontosságát a kutatók ismerik, de megfelelő minőségű háttéradatok híján jóval kevesebb megalapozott tudományos eredményt lehet ezeken a területeken felmutatni. Összességében elmondható, hogy az eredmények döntő része a fejlesztés, közösség, módszertan és felhasználás területen előállított metrika, modell és módszertan. 

Az [-@fig:SMSTYPSEC]. ábrán látható milyen típusú kutatások célozzák az egyes biztonsági területeket. Szembeötlő, hogy a biztonság témáját feldolgozó publikációk jelentős részét a szoftverminőség vizsgálat területén már alkalmazott megoldások értékelése adja. Viszonylag jelentős az ugyanezen területen végzett probléma és validációs vizsgálatok, megoldási javaslatok száma, illetve a sérülékenységek területén alkalmazott gyakorlati módszerek vizsgálata. Ugyanakkor feltűnő, hogy sok a "fehér folt", azaz bizonyos biztonsági területeken egyes módszerek teljesen hiányoznak. Nagyon kevés publikáció foglalkozik a konfiguráció menedzsment és a tesztelés területével. A kockázatelemzés területén, más kategóriáktól eltérően, a problémák vizsgálata és a javasolt megoldások az uralkodók a módszervizsgálat túlsúlya itt nem figyelhető meg.

<div id="fig:SMSCategs">

![FLOSS sajátosság szerint alkalmazott módszertan](ábrák/SMS-OSP-MTH.svg){#fig:SMSOSPMTH width=50%}
![Biztonsági területenként alkalmazott módszertan](ábrák/SMS-SEC-MTH.svg){#fig:SMSSECMTH width=50%}

![FLOSS kategóriánként jellemző eredményfajták](ábrák/SMS-OSP-CTR.svg){#fig:SMSOSPCTR width=50%}
![Publikáció típusok biztonsági területenként](ábrák/SMS-SEC-Type.svg){#fig:SMSTYPSEC width=50%}

<!-- ![Tématerületenként alkalmazott módszertan](ábrák/SMS-Topic-MTH.svg){#fig:SMSTOPMTH width=50%} --> 

Publikációk száma az osztályok kategóriái szerint (szerkesztette a szerző).
</div>
