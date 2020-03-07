---
#vim: set et sw=4 :
---

Metaadatok (FS-M)
---------------

A nyílt és zárt fejlesztések egyik nyilvánvaló különbsége a rendelkezésre álló nagy mennyiségű fejlesztési információ. Elérhető például a belső dokumentáció, a forráskód, a viták archívuma és minden hibajegy illetve azok javítási folyamata. Ezeknek a metaadatoknak a léte, létrehozása, kezelése és vizsgálata hatással lehet az alkalmazó vagy integrátor rendszerének biztonsági szintjére is.

A nyílt fejlesztések során a közösség tagjai között zajló információcsere négy jellemző információs térben valósul meg: 

* egyeztetési tér, amely magába foglalja a levelező listákat, webportálokat, fórumokat, leveleket és blogokat;
* dokumentációs tér, amely magába foglalja a dokumentációt, a webes forrásokat és verzió kezelő rendszerek metaadatait;
* karbantartói tér, amely a hibajegy kezelő rendszerekben tárolt információt jelenti;
* és implementációs tér, azaz maga a forráskód az itt található megjegyzésekkel együtt.

Viorres, Mistrik és Tuunanen [@viorres_major_2007; @tuunanen_automated_2009; @mistrik_collaborative_2010] a karbantartói teret a dokumentációs tér alá sorolják, véleményem szerint azonban a hibajegy követés során alapvetően más jellegű kommunikáció (felhasználó - fejlesztő) zajlik, más célokkal és hangsúllyal, egyfajta átmenetet képezve a dokumentációs és implementációs tér között.


### Karbantartói tér, hibajegyek, hibakommunikáció (FS-M-H){#sec:FS-M-H}

A nyílt forrású projektek jellemzően használnak valamilyen hibakövető (bugtracker) rendszert. A nagy projektek esetében ez arány 96%[@gupta_empirical_2008] míg a közepes és kisebb projektek esetében valamivel kevesebb. Akárcsak a projekt többi része ez is nyílt, az itt tárolt adatok és kommunikáció könnyen hozzáférhető és elemezhető.

Számos szabad hibakövető rendszer áll rendelkezésre (Mantis, Redmine, BugZilla stb.) illetve a népszerű közösségi fejlesztőplatformok (GitHub, GitBucket) beépítetten is biztosítanak ilyen lehetőséget.  Persze a hibakövető rendszer használata önmagában nem egyedi sajátosság, hiszen a zárt fejlesztések, sőt szolgáltatók is alkalmaznak valamilyen vagy éppen valamelyik fent felsorolt hibakövető rendszert. A FLOSS-ra jellemző egyedi jelenség viszont, hogy ezeket a rendszereket bárki -- komolyabb authentikáció nélkül -- használhatja[@bachmann_software_2009]. A használat módja, a felvitt hibajegyek és azok hasznosulása, kivált pedig a teljes információmennyiség folyamatos átláthatóság az, ami megkülönbözteti a nyílt közösséget [@damiani_oss_2009;@petrinja_overview_2008]. 

A szabadon elérhető hibajegy információ automatizált módszerekkel elemezhető[@raja_all_2013;@ko_how_2010;@rossi_analysis_2009], adatbányászati technikákkal, kulcsszó alapú kereséssel értékes információkat kaphatunk a projekt állapotáról, hibajavító képességéről, szociális szerkezetéről [@gupta_nirikshan_2014]. 
A hibajegy-kezelőből kigyűjtött információkat összevethetjük sérülékenység adatbázisok adataival [@anbalagan_mining_2009], illetve alkalmazhatunk egyedi modell alapú hiba-előrejelző rendszert [@tawileh_modelling_2006;@singh_improving_2013] vagy hagyományos szoftver megbízhatósági modelleket [@rossi_modelling_2010]. A publikus hibajegyek negatív hatása, hogy a sérülékenység mindenki számára azonnal elérhetővé válik, így a sérülékenységet elvben kihasználni képes potenciális támadók köre is szélesebb.

Az hibajegyekből néhány általános, a nyílt fejlesztésre jellemző biztonsággal kapcsolatos paramétert is megtudhatunk. Az alábbiakban ilyen adatokat mutatok be röviden kifejtve annak esetleges biztonsági hatásait. 

A hibajegyeket általában (67%) konzisztensen kezelik de a megoldatlan hibák száma 20% körüli[@gupta_empirical_2008].  A minket érintő hibák tehát nem feltétlenül lesznek kijavítva, így fontos a részvétel vagy a megfelelő irányítási és/vagy motivációs lehetőség kiépítése. A sérülékenység száma az idő előrehaladtával általában növekszik (Apache, Mozilla, Linux) [@li_have_2006; @neuhaus_software_2013; @tan_bug_2014], ami első hallásra nem vet túl jó fényt a nyílt fejlesztésekre, bár lehetséges, hogy a hibaszám növekedése nem a minőség romlását jelzi, egyszerűen csak arról van szó, hogy a felhasználók és a fejlesztők egyaránt egyre biztonság-tudatosabbá válnak és jobban odafigyelnek [@tan_bug_2014]. A biztonsági bejelentéseket általában más elbírálásban részesítik és gyorsabban javítják őket [@anbalagan_reliability_2008].

A felhasználói interfésszel kapcsolatos visszajelzések általában hamar megérkeznek[@iivari_usability_2008], ami várható is hiszen ezzel a résszel találkoznak leghamarabb a felhasználók. 
Bizonyos hibák felderítése és különösen reprodukálása ugyanakkor igen nehéz lehet (pl. concurrency, race condition) [@li_have_2006; @tan_bug_2014] ha pedig a reprodukálás valószínűsége alacsony, a fejlesztők elutasíthatják őket. Nagy figyelmet kell fordítani tehát a pontos és minél jobb hibakeresési lehetőséget nyújtó hibajegyek létrehozására, ami különösen nehéz, ha a kiadható gépi információk halmaza nem tisztázott. 

Mivel a nyílt közösségekben nem lehet "kérni a panaszkönyvet", kötelezettség szegési eljárást indítani, de általában reklamálni sem nagyon érdemes, potenciálisan fontos lehet, hogy megtaláljuk azokat a módszereket és személyeket akik meg tudják oldani a problémáinkat. Minél magasabb kapcsolati szinten (lásd. FS-K-SZ) áll egy fejlesztő annál hamarabb javítja a hibákat, viszont minél többet kommunikál, annál lassabban [@datta_how_2014].


A hibabejelentések jelentős része egyszerű segítségkérés, valódi értéke nincs így zajnak tekinthető [@ihara_analysis_2009]. Az értékes hibajegyeket egy szűk felhasználó kör veszi fel, tehát nem csak viszonylag jól definiált fejlesztői és hibajavító csoport, de jól elkülönülő hibakereső halmaz is létezik. Felmerül a kérdés, hogy ezek után a nyílt forrásnál gyakran felhozott "many eyes" elv -- azaz, hogy kellően sok szem minden hibát észrevesz[@gurbani_case_2006] -- mennyiben különbözik egy nagyobb vállalat széles körű béta tesztjétől. Az adatok tanúsága szerint (legalábbis az elemzett Mozilla szoftver esetében) úgy néz ki nem sokban [@ko_how_2010]. (Amint azt a fejlesztésről szóló szakaszban kifejtem (FS-F-P), a meglepően jó teljesítmény nem is a tesztelők számának hanem az egyedi módszertannak köszönhető).

A sok éles szem elvvel szemben más kétség is felmerül. A nagyobb nyílt közösségnek általában van saját biztonsági csapata. A biztonsági csapat méretétől elvben függenie kéne a hibajavítási teljesítménynek, ez azonban statisztikailag nem igazolható (Mozilla, Tomcat, Apache)[@neuhaus_software_2013]. Valószínű, hogy az adott kódrészletet kevesen értik meg vagy kevesen szánják rá az időt, így a hibás részt végül többnyire az eredeti szerző javítja ki.


A kritikus és nem kritikus hibák javítási idejében jelentős eltérés mutatkozhat. A nem kritikus hibák javítása igen nagy mértékben akár évekig is csúszhat, míg a kritikus hibákat a legtöbb közösség 1-3 napon belül javítja [@petrinja_overview_2008].  A hibajavításnál a hiba ellenőrzése tart a legtovább (azaz míg a hibajegy "resolved" állapotból "resolved bug verifed" állapotba kerül) [@ihara_analysis_2009] ami arra enged következtetni, hogy a hangsúly a hiba kijavításán és nem a minőségellenőrzésen van, ezt inkább a közösségre bízzák. Ennek ellenére a hibajavítások általában jók, nincs szükség a hibajavítás javítására [@neuhaus_software_2013], ugyanakkor Francalanci úgy találta, hogy a hibajavítások minősége rendkívül változó[@francalanci_empirical_2008]. A hibajegyek státuszának állítására általában igen sok embernek van lehetősége ami minőségi problémákhoz vezethet [@bachmann_software_2009].

Végezetül érdemes megjegyezni, hogy bár sokan elsőként a honlapokon feltüntetett letöltésszámot vagy megtekintések számát nézik ha megbízható projektet keresnek, ez egyáltalán nem jó mérőszám. Nem mutatható ki összefüggés a hibaszámmal és nem alkalmas a projekt minőségének becslésére [@zhou_open_2005]. 


### Dokumentációs tér, architektúra és API dokumentáció (FS-M-A){#sec:FS-M-A}

Tekintettel a nyílt modell megoszló közösségére és fejlesztési módszerére, logikusan azt várhatnánk, hogy ha egynél több, egymást kevéssé ismerő fejlesztő dolgozik együtt, létfontosságú a  jó minőségű fejlesztői dokumentáció léte. Meglepő módon ez nem mindig van így és legfőképpen nem minden téren teljesül[@ampatzoglou_investigating_2011].

Magát a kódot többnyire elegendő megjegyzéssel látják el, a megjegyzések sűrűsége független a projekt vagy csapatmérettől[@arafat_commenting_2009],  de a jó minőségű dokumentáció létrehozása már kevéssé érdekli a fejlesztőket [@stol_challenges_2010; @stol_comparative_2011] ami valószínűleg a világos szervezeti felelősségek hiányára vezethető vissza, illetve, hogy a fejlesztők az olvasható kódot (vagy abból generált dokumentációt) megfelelő dokumentációnak tekintik[@damiani_oss_2009]. A tudás tárolására jellemző az automatikusan generált dokumentáció és a wiki forma [@ali_babar_software_2009], de előfordul, hogy a résztvevők egy levelező listát használnak dokumentációnak, ami  a projektbe később beszállók számára felettébb kedvezőtlen, hiszen egy adott funkció leírásának megtalálásához nagy számú téma-szálat kell végigolvasni[@gendreau_process_2013]. 
Természetesen a nagy projekteknél ahol több száz vagy ezer fejlesztő dolgozik együtt és a felelősségek rendszere is világosabb, ez a probléma ritkán jelentkezik, ami érthető, hiszen világos fejlesztői dokumentáció nélkül egy ekkora projekt egyszerűen életképtelen lenne.

Az üzleti kódhoz képest (egy eset, megnyitott kódú RDBMS elemzés alapján) a nyílt fejlesztés során készült új részek átlagos komplexitása és függvényenkénti hatékony kódsor mutatója kisebb, szignifikánsan kevesebb megjegyzés sort használtak[@orucevic-alagic_case_2010], ami arra enged következtetni, hogy a nyílt fejlesztők sokszor inkább a kódot tanulmányozzák a megjegyzések helyett. 
Minthogy egy-egy kódrészletnek nincs dedikált tulajdonosa és a fejlesztés kevésbé szervezett előfordul, hogy azonos komponensek több különféle leírással rendelkeznek [@stol_comparative_2011] ami rontja a dokumentáció minőségét. 

Másik fontos kérdés az architektúra dokumentáció megléte, amely segít átfogó képet adni a teljes projekt struktúrájáról és belső összefüggéseiről. Mint kiderült a FLOSS projektek architektúra dokumentációja sok esetben -- akár nagyobb projektek esetében is -- kifejezetten gyenge, elévült, esetenként teljesen hiányzik és a szükséges információt más dokumentációkból illetve a kód átnézésével kell kikövetkeztetni[@ali_babar_software_2009]. 

Biztonsági szempontból ez azért aggályos, mert a sérülékenységeknek csak egy része származik közvetlen kódhibákból, a hibás tervezési döntésekből adódó (esetenként súlyos) biztonsági problémák csak architektúra dokumentáció alapján lennének hatékonyan beazonosíthatóak[@schryen_open_2009] míg kellő erőfeszítéssel egy eltökélt támadó a nyilvános információk alapján feltárhatja ezeket. Természetesen a jelenség nem általános vannak nyílt projektek ahol a szerkezeti felépítés világosan definiált, hiszen megléte fontos lehet a projekt túlélése szempontjából [@stol_importance_2011], a könnyen érthető, jó szerkezeti diagramokkal rendelkező projektek pedig több fejlesztőt vonzanak [@kim_software_2014].

Összefoglalva, a projekt integrációja vagy a szoftver minősítés során érdemes figyelembe venni a meglévő dokumentáció minőségét, míg a projektben való részvétel esetén a megfelelő dokumentáció kialakítására és a dokumentálással kapcsolatos feladatkörök tisztázásra kell különös gondot fordítani.




### Egyeztetési tér, a fejlesztői kommunikáció vizsgálata (FS-M-K){#sec:FS-M-K}

A nyílt fejlesztés jellemzője, hogy nyomon lehet követni a teljes fejlesztői tervezési folyamatot, olyan -- egyébként általában privát -- információk is nyilvánosan elérhetőek, mint a fejlesztők egymás közötti kommunikációja. Ez az adathalmaz szintén elemezhető, vizsgálható a fejlesztők reakció ideje, gyakorisága vagy akár a csoport stabilitása is [@ardagna_adopting_2006; @kenett_adoption_2014; @kuwata_study_2014; @groven_security_2010]. 

Az egyeztetési tér tárolási platformja igen változatos. Lehet kifejezetten dedikált célszoftver, wiki platform, nagyon gyakori forma a levelező lista, elemezhető információt hordozhatnak a blogok és a mikroblogok (pl. Twitter) [@galster_exploring_2013].

A kommunikáció statisztikai elemzésével sikeresen elemezhető a projekt fejlődése [@sharif_empirically-based_2015], megjósolható a fennmaradás esélye [@samoladas_survival_2010; @scialdone_group_2009], ugyanakkor a várakozással ellentétben a projekt életciklusának végét nem lehet biztonsággal meghatározni [@foulonneau_analyzing_2013]. Következtetéseket lehet levonni viszont a fejlesztők elkötelezettségére és a támogatói tevékenységre vonatkozóan [@di_ruscio_ossmeter_2015].

Megfigyelhető, hogy a tudásmegosztás egy része a levelező listákról áttevődik a dedikált Kérdés-Válasz kezelő oldalakra (például StackExchange) [@vasilescu_how_2014]. Minthogy ez az anyag is publikus, manuális átnézése vagy automatikus elemzése szintén segíthet képet alkotni a projekt állapotáról. 



### Implementációs tér, a forráskód elemzése (FS-M-I){#sec:FS-M-I}

Az elérhető forrás természetszerűleg lehetővé teszi, hogy a kódminőséget statikus white-box módszerekkel elemezzük [@lavazza_empirical_2012;@taylor_analysis_2011; @counsell_empirical_2008; @bajracharya_sourcerer_2014; @mclean_comparing_2012], ami eleve eltérés a zárt modellhez képest, ahol ez általában nem lehetséges. A nyílt forrás statikus kódelemzése igazoltan csökkenti a biztonsági hibák számát, szignifikáns korreláció mutatható ki a statikus analízis végzése és a CVE sérülékenységek előfordulása között [@kapitsaki_insight_2015]. 

Amennyiben az kód valamilyen szabvány implementációja az ellenőrizhetőség követelmény is lehet. Tiemann szerint az "implementáció nélküli szabványok megbízhatatlanok, azokat az implementációkat, amelyeket nem lehet átvizsgálni, ellenőrizni sem lehet" [@tiemann_objective_2006]. Ugyanígy követelmény lehet a nyílt implementáció a trusted computing területén, azaz mindenhol ahol felmerülhet a felhasználók utáni "kémkedés" kérdése. Különösen fontos lehet ez a LRE területén, ahol magas biztonsági követelményeknek kell megfelelni. Minden ilyen esetben erősen javasolt a TCG[^TCG] kompatibilis nyílt implementáció használata[@di_giacomo_cots_2005; @crane_security_2011].

[^TCG]: Trusted Computing Group, az AMD, IBM, Hewlett-Packard, Intel és Microsoft összefogásával indult csoportamelyek célja a személyi számítógépeken alkalmazandó trusted computing elvek kutatása és definiálása.

A vizsgálat történhet manuálisan egyénileg, ez azonban jelentős szaktudást igényel, ezért a normál felhasználók számára a kód elérhetőség nem jelent semmiféle előnyt, gyakorlatilag ugyanúgy használják, mint a normál COTS termékeket [@li_empirical_2006]. Léteznek viszont megoldások kifejezetten a kód folyamatos vizsgálatára [@ribeiro_ranking_2018]. Ilyen például az amerikai kormányzati támogatással 2006-ban indult Coverity Scan amely "az egyik legnagyobb közösségi-kormányzati projekt a világon, melynek fókuszában a nyílt forrású szoftver minősége és biztonsága áll"[^CovScan]. A regisztrált projekteket folyamatosan nyomon követik és a kódot statikus elemzés módszereivel rendszeresen ellenőrzik, a felderített hibákról pedig jelentéseket küldenek. (A OSI elveinek megfelelő projektek regisztrációja ingyenes.)

[^CovScan]: https://scan.coverity.com/

A forrás-elemzés segíthet megítélni a projekt stabilitását és fejlődési lehetőségeit [@bouktif_predicting_2014]illetve a becsült munkaóra értékét[@robles_estimating_2014], ám a rendkívül nagy számú változat léte nehézséget jelenthet. Ebben nyújthatnak segítséget a nyílt projektkövető rendszerek, amelyek nagy mennyiségű fejlesztői információt tárolnak. Ilyen például az Open Hub[^ohloh] (korábbi nevén Ohloh) vagy a kifejezetten kódanalízis célzatú FLOSSmole. Az itt összegyűjtött adatok által tömegesen is vizsgálhatóvá válnak a FLOSS projektek [@bruntink_towards_2015; @conklin_collaboration_2005].

[^ohloh]: https://www.openhub.net/

A forrás elérhetőségének egy további előnye, hogy sokkal nehezebb elrejteni a biztonsági hibákat. Egy képzett fejlesztő a forrást átfutva részletes elemzés nélkül is képet kaphat a termék általános minőségéről[@lavazza_predicting_2010]. (lásd még: FS-J-Á). 

Elvben a közösség által módosítható forrás a kritikus sérülékenységek elhárítási idejét is lecsökkentheti, tehát a támadásra alkalmas időablak rövidebb, hiszen a támadónak nem egy szűk csapattal, hanem egy sokkal nagyobb fejlesztői csoporttal kell versenyeznie [@di_giacomo_cots_2005]. Ez azonban nehezen mérhető, ráadásul a fejlesztők száma önmagában nem sokat mond a résztvevők motívációjának és szaktudásának (FS-K-R) valamint a projekt frissítési sűrűségének ismerete nélkül (FS-T-K).

A nyílt forráskód logikus támadási felületnek tűnik, ám Erturk szerint -- legalábbis a mobilalkalmazásók piacán --  a sérülékenységeket a támadók általában nem a forráskódban fedezik fel, hanem kívülről, próbálkozással, akárcsak a bármely más esetben [@erturk_case_2012]. Bár ez megnyugtatóan hangzik, egyáltalán nem zárható ki, hogy a kellő erőforrásokkal rendelkező támadó (pl. nemzetállamok kiberhadserege) a forrás elemzésével igyekezzen zero-day sérülékenységeket találni, ahogy az sem elképzelhetetlen, hogy a támadó fél szándékosan beépül a fejlesztői közösségbe, hogy ott álcázott sérülékenységeket helyezzen el (FS-K-SZ). 

Az átláthatóság biztonsági kockázatot is hordozhat. A felfedezett sérülékenységeket morális okokból általában nem szokás felfedni amíg ki nem javítják azokat. Csakhogy a nyílt fejlesztés kódforrásának minden változása azonnal látható, így ha a hibát javítani igyekvő fejlesztők publikálják próbálkozásaikat, a sérülékenység automatziált módszerekkel lokalizálható. A hibajavítások átfutási ideje meglehetősen nagy -- akár 100 nap is lehet -- ami bőséges időablakot nyújt a támadás kivitelezésére. Yang at al. négy projekt (Linux kernel, OpenSSL, phpMyadmin, Mantisbt) automatizált elemzésével a 227 publikált sérülékenységből 140-et sikkerrel azonosítottak ilyen módszerrel, ami riasztó eredmény[@yang_pre-patch_2018].

A legmagasabb biztonsági követelmények teljesítését igénylő feladatok esetében a szervezet formális bizonyítást lehetővé tevő nyelveken írt nyílt forrású kódot is alkalmazhat. Ilyen nyelv például a coq vagy az Agda [@stump_verified_2016]. Valójában épp a formális ellenőrzés lehetősége az ami a nyílt modellt legnagyobb előnye lehetne, sajnos azonban a kihasználásához szükséges tanulási görbe igen meredek, azaz mind fejlesztői mind felhasználói oldalon jól képzett szakemberekre van szükség 
. Jó példa a formálisan ellenőrizhető, biztonsági szempontból igen hasznos nyílt projektre a COMPCERT, ez magas biztonságú (C99) fordítóprogram, amellyel tanúsítható, mégis hatékony kód generálható[^compcert][@ruef_programming_2015]. További lehetőség olyan programozási nyelv használata, amely garantálni tudja a típusok és osztályhatárok megbízhatóságát. Nem tévesztendő össze a Type Safety tulajdonsággal, ami sok népszerű nyelvnek sajátja (többek közt a Java nyelv is ilyen). A Type Safety önmagában nem nyújt garanciát a rosszindulatú fejlesztői használat ellen, csak abban az esetben, ha a nyelv emellett garantálni tudja, hogy a futtatott -- potenciálisan kártékony -- kód semmilyen módon nem tudja áthágni a típusok és modulok általl felállított szabályrendszert. Ilyen nyelv például a SafeHaskell [@terei_safe_2012]. 

[^compcert]:http://compcert.inria.fr/



A nyílt közösségekre jellemző a verziókezelő rendszerek (git, svn, mercurial stb.) általános és magas fokú használata[@llanos_differences_2012]. A projektek többsége (>80%) nemcsak tárolja, de rendszeresen frissíti is az itt összegyűjtött információt[@gupta_empirical_2008]. Az utóbbi évtizedben a forráskód tárolása részben áttevődött az kifejezetten ilyen céllal készült portálokra (GitHub, BitBucket, GitLab stb.) amelyek az eredeti funkciók megtartása mellett további kiegészítő szervezési és kommunikációs lehetőségeket nyújtanak (pl. fórum, bug-tracker, pull-requests). 

Az elérhető forrás segíthet tisztázni a felelősség kérdését is. Üzleti COTS alkalmazások használata esetén egy komplex rendszerben nehéz bizonyítani, hogy a hibajelenség valóban az adott szoftver vagy komponens hibás működéséből származik. FLOSS használata esetén ez mindig igazolható [@li_empirical_2006; @lundell_practitioner_2011].


Mint látható a forrás nyíltsága biztonság szempontjából a korábban említett "több szem többet lát" elven messze túlmutat, kritikus alkalmazás esetén pedig jelentős előnyöket biztosít. Különös módon az IT döntéshozók közül viszonylag kevesen tulajdonítanak neki megfelelő jelentőséget[@damiani_surveying_2015].


### Összefoglalás

A FLOSS rendszerek és az üzleti termékek legfőbb eltérése a metaadatok kapcsán a nyíltság. Szabadon elérhető a forráskód, a rendszer API dokumentációja, a rendszerterv, a hibabajelentések, az azokra kapott válaszok, sőt sok esetben a hibák javítására tett kísérletek is. 

Ez az átláthatóság néhány egyedülálló lehetőséget biztosít és egyben biztonsági kockázatokat is okoz. A metaadatok alapján kvalitatív vagy akár kvantitatív mérőszámokkal jellemezhető a projekt és a közösség minősége, készültségi foka, reakcióideje és általános állapota. Beazonosíthatóak a kulcsemberek, az egyes kódrészeket fejlesztők személye. Megfelelő keretrendszer esetén a teljes forráskód működésének helyessége formálisa igazolható.  Ezzel szemben a hibajegyeken vagy a forráskódon keresztül érzékeny információ válhat publikussá, a forrás és a hibajegyek elemzésével még javítás előtt felderíthetőek a sérülékenységek, a forrás manipulálásával az összes felhasználó támadható. 

A hibajegyek analízise alapján elmondható, hogy a hibajavítás folyamatához másként kell hozzáállni, mint az üzleti alkalmazások esetében, a hibajegyek nem megfelelő felvitele esetén azok javítása késhet vagy el is maradhat.


