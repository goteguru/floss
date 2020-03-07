---
# vim: set expandtab:
---

FLOSS mint termék, terméktulajdonságok (FS-J)
--------------------------------

A FLOSS előnyeivel kapcsolatos kérdésekre adott válaszaikban a megkérdezettek gyakran említik a megbízhatóságot, biztonságot, minőséget, teljesítményt, rugalmasságot, alacsony költséget, jogi rugalmasságot, a gyártófüggetlenséget, megnövekedett együttműködési lehetőségeket [@morgan_benefits_2007; @morgan_beyond_2014; @recker_understanding_2012; @anh_collaborative_2012]. Hátrányként általában a központosított támogatás hiányát, kompatibilitási és telepítési problémákat, felhasználó-barátsággal kapcsolatos aggályokat, irányítás lehetőségének hiányát, változással szembeni ellenállást, a nem megfelelő marketinget és a magasabb betanítási költséget szokás említeni [@morgan_benefits_2007; @damiani_surveying_2015; @joia_closed_2017].

A [-@tbl:Előny]-[-@tbl:Hátrány]. táblázatok rendszerezett formában mutatják be milyen előnyöket és hátráyokat érzékelnek a felhasználók a FLOSS termékkel kapcsolatban. 
                                                                                                                
Table: Műszaki előnyök Morgan és Finnegan szerint [@morgan_benefits_2007] {#tbl:Előny}

--------------- ----------------------------------------------------------------------------------------------
Megbízhatóság   gyakran felhozott előny, különösen magas rendelkezésre állás szükségessége esetén                       

Biztonság       első sorban a forrás nyíltsága miatt, bár ez a hatás inkább csak az idősebb, érett projektekre jellemző 

Minőség         forrása a magasabb fokú ellenőrzés, a fejlesztés és tesztelésminősége                                   

Teljesítmény    elsősorban tárolás és sebesség terén, ugyanakkor gyakran a fordítottját állítják

Rugalmasság     változtatások lehetősége, testreszabás, kísérletezés és választás szabadsága

Kompatibilitás  időtálló formátumok használata (gyakran vitatott)

Harmonizáció    jobb harmonizációs lehetőségek az együttműködés terén
---------------------------------------------------------------------------------------------------------------


Table: FLOSS üzleti előnyei Morgan és Finnegan szerint [@morgan_benefits_2007]

----------------------  ----------------------------------------------------------------------------------------------
Alacsony költség        kisebb díjak licenszelés, frissítés, vírusvédelem terén, alacsonyabb teljes költség.

Jogi rugalmasság        elsősorban költségcsökkentő hatása miatt fontos

Gyártófüggetlenség      szabad választást tesz lehetővé, irányítás érzetét kelti, de FLOSS esetén is elképzelhető! 

Innováció ösztönzése    a forrás elérhetősége segíti az innovációt és új lehetőségeket nyújt

Üzleti lehetőségek      lehetőséget ad kisebb csapatmérettel dolgozni, ami növeli a termelékenységet
---------------------------------------------------------------------------------------------------------------



Table: FLOSS műszaki hátrányai Morgan és Finnegan szerint [@morgan_benefits_2007]

--------------------------      ----------------------------------------------------------------------------------
Kompatibilitási problémák       meglévő technológiákhoz,tudáshoz és feladatokhoz illesztés nehézkes 

Szakértelem hiánya              a hiányzó szakértelem a tájékoztatás hiányából fakadhat

Gyenge dokumentáció             a dokumentáció elavult, frissítése teljesen leállhat a fejlesztés során

Interfész bizonytalanság        nem egyértelmű hogy az egyes kiadások melyiket használják

Funkcionalitás                  az integráció és funkcionalitás nem éri el az üzleti termékekét

Roadmap hiánya                  a szervezet nehezen látja át a stratégiai irányt, ez sokszor teljesen hiányzik is
------------------------------------------------------------------------------------------------------------------



Table: FLOSS gazdasági hátrányai Morgan és Finnegan szerint [@morgan_benefits_2007] {#tbl:Hátrány}

----------------------- ----------------------------------------------------------------------------------------------
Támogatás hiánya        nincs biztonságérzet a támogatás és a háttércég hiánya miatt

Tulajdonos hiánya       nincs felelőségre vonható személy vagy szervezet

Forrás elérhetősége     van, hogy kényelmetlenséget okoz a forrás elérhetősége (rosszul informáltság?)

Marketing hiánya        tulajdonos híján nincs marketing, nincsenek marketing források, "szájhagyomány útján" terjed

Képzés költsége         képzés költsége magasabb lehet, a képzés minősége viszont általában jobb                

Kompetencia 
felkutatása             nehéz a kompetens fejlesztőket és szakértőket megtalálni
---------------------------------------------------------------------------------------------------------------


Ezek egy részével más fejezetekben foglalkozom (FS-Sz; FS-H-Gy; FS-H-T; FS-H-I; FS-H-Gy; FS-T-S; FS-Sz-M) a fennmaradó tulajdonságok hatását ebben a fejezetben elemzem. 

### Technikai átláthatóság (FS-J-Á){#sec:FS-J-Á}

A FLOSS termékek biztonsági szempontból egyik leghasznosabb tulajdonsága a forrás szintű átláthatóság. Ebből az átláthatóságból számos potenciális előny származik, amelyeket az alábbiakban mutatok be.

Egy zárt rendszer stabilitásáról igen nehéz adatokat gyűjteni, hiszen a vállalkozások a vonatkozó adatokat stratégiai információként kezelik amelynek kiszivárgása súlyos üzleti hátrányokhoz vezethet. Ezzel szemben FLOSS esetében viszonylag egyszerű adatokat gyűjteni amivel előrejelző modellek kalibrálhatók és validálhatók. [@bouktif_predicting_2014]

Közszolgálati rendszerekben követelmény lehet az adatelőállítás teljes folyamatának publikálása, hogy az állampolgárok nyomon tudják követni az információ létrehozásához használt eljárásokat és módszereket. Ehhez a felhasznált szoftvernek jól dokumentáltnak kell lennie és nyílt minősítési folyamaton kell keresztülmennie. A FLOSS jelentős versenyelőnnyel rendelkezik ezen a téren [@bouras_policy_2014].

Az átláthatósághoz kötött magasabb biztonság kérdése általában vitatott. Nagyon nehéz eldönteni, hogy a zárt vagy nyílt verziók a sérülékenyebbek. Mind nyílt mind zárt szoftverekben voltak biztonsági sérülékenységek, amelyek éveken keresztül felismeretlenek maradtak [@silic_dual-use_2013]. Bizonyos problémák jól orvosolhatóak a forrás ismeretében. A komponensek megbízhatóságának minősítése és javítása megoldható például külső (harmadik) fél felkérésével, amely a lehetséges biztonsági hiányosságokat feltárja [@ruhe_management_2014]. 

A szoftver belső szerkezeti felépítése gyakran ismeretlen. Előfordulhat, hogy a szerkezet feltárásának egyetlen lehetséges módja a forrás vizsgálata [@stol_importance_2011]. Hasonlóképp, a forrás alapján a rendszer belső minősége is felmérhető, amit általában lehetetlen közvetlenül kivizsgálni zárt forrás esetén [@taibi_openbqr_2007]. A belső minőség-ellenőrzése automatizálható, a szakirodalomban számos metrika létrehozására találunk javaslatokat (lásd. McCabe Cyclomatic Complexity, Chidamber and Kemerer objektum orientált metrikái, Halstead complexity metrika). FLOSS használata esetén lehetőség van tehát olyan hiba és sérülékenység indikátorok előállítására amelyek alapján minőségi és biztonsági előrejelzések készíthetők [@vouk_using_2013]. 
Ugyanakkor az gyártók álláspontja szerint az üzleti megoldások elemzése is vezethet ellenőrizhető eredményekre, amennyiben a gyártó részletes dokumentációt tesz közzé és megfelelő tesztek állnak rendelkezésre a szoftver helyes működését tanúsítandó. Ezek alapján a közösség vagy független szervezetek szintén ellenőrizhetik az minőséget. [@huebner_case_2010]
Pontosan ezen minősítési hiányosság folytán tartalmaznak a biztonsági keretrendszerek (pl. NIST) tesztelési kritériumokat, és végső soron ezt a hiányosságot orvosolja bizonyos szempontból a Common Criteria minősítési rendszere. Az egyedi, "házon belüli" minősítés elméletben ugyan jól hangzik, ugyanakkor az ehhez szükséges jelentős erőforrásigényből kifolyólag csak ritkán kivitelezhető a gyakorlatban. Ha ilyen minősítésre kerül sor, a közösség érdekében mindenképpen érdemes azt publikálni, egyéb esetben az ellenőrzési folyamat erősen redundánssá válik. Természetesen ez esetben nyitott marad a minősítés hitelességének kérdése. 

### Felhasználói dokumentáció (FS-J-D){#sec:FS-J-D}

Szervezett támogatás híján FLOSS alkalmazások esetén különösen fontos a jó minőségű dokumentáció elérhetősége, hiszen gyakorta e dokumentációnak kell betöltenie a támogatás szerepét is. Ennek megfelelően a dokumentáció fontosságát a felhasználók magasra értékelik a felmérések során [@huang_development_2006; @morgan_benefits_2007;@morgan_beyond_2014; @recker_understanding_2012]. A FLOSS projektek gyakran hoznak létre külön alprojekteket a dokumentáció gondozására [@petrinja_overview_2008], de a dokumentáció megvalósítása lehet automatizált vagy félautomatizált, ahol a forráskódba illesztett megjegyzésekből áll elő a dokumentáció (JavaDoc és hasonló meoldások). 

Érdemes megkülönböztetni a felhasználói, fejlesztői és karbantartói dokumentációt. A fejlesztői dokumentáció kérdésével a fejlesztéssel foglalkozó fejezetben foglalkozom bővebben (FS-F-M). A felhasználói és karbantartói dokumentációt, különösen ha az önálló projektként fut, általában bárki bővítheti, ezért egyáltalán nem ritka, hogy a dokumentáció szerzői nem programozók. A dokumentációt többnyire konzisztens licenszek védik (pl. Creative Common). [@petrinja_overview_2008]

Attól függően, hogy a projekt mennyire akkurátusan vezeti a dokumentációt, létezik-e a dokumentáció frissítésére irányú szabályozása, a dokumentáció minősége lehet naprakész, elavult vagy akár egyértelműen hibás is. 

### Használhatóság, hordozhatóság, funkcionalitás (FS-J-H){#sec:FS-J-H}

A használhatóság direkt kapcsolatban áll az FLOSS felhasználási statisztikáival (ellentétben a megbízhatóság vagy a hordozhatóság kérdésével) azaz amennyiben a használhatóság és funkcionalitás nő, az adott FLOSS használata is növekszik. [@sohn_strategic_2008] 
Ugyanakkor a használhatóság hiánya gyakran szerepel a FLOSS rendszerek hátrányainak listáján. Ennek egyik oka a FLOSS közösségi kultúra egyedisége (FS-K-R; FS-K-Sz) illetve az átlagfelhasználó bevonásának hiánya. Egyes területeken, ahol a felhasználó és a fejlesztő közösség halmazának metszete jelentős létszámot képvisel a használhatóság kiváló szintet érhet el. Ilyen például a biztonsági segédszoftverek és a fejlesztőeszközök területe. Máshol, ahol nincs jelentős átfedés a két csoport közt, a végfelhasználó érdek-érvényesítő képessége igen csekély, ami végső soron erősen csökkenti az érzékelt használhatóságot. [@bach_designers_2009] 

A kérdőívekben a használhatóságot magasra értékelő felhasználók általában előzetes FLOSS kapcsolatokkal rendelkeznek [@ellis_open_2009] vagy a használhatóságot az elérhetőséggel és a forrás nyíltságából eredő tulajdonságokhoz kötötték [@hauge_risks_2010]. 

Nagyon gyakori, hogy a felhasználó úgy érzi, a FLOSS nem futáskész, a kezdeti beállítás időigényes, hiányzik az üzleti megoldásoknál megszokott, gyors, "varázsló alapú" indítási lehetőség [@lundell_practitioner_2011]. Következésképpen még ha a tényleges funkcionalitás és használhatóság nem is marad el a versenytársakétól, az érzékelt használhatóság általában kisebb mértékű.

A varázsló-szerű beállítás előnye, hogy normál esetben józan biztonsági beállításokat tartalmaz, a felhasználó tehát különösebb időráfordítás nélkül elérhet egy kielégítő biztonsági szintet. Az időigényes kézi beállítás lehetséges veszélye, hogy a felhasználó türelmét vesztve nem megfelelő biztonsági szintet biztosító beállításokat alkalmaz. Személyes tapasztalataim is azt igazolják, hogy ez a gyakorlatban könnyen előfordulhat. 

Hordozhatóság alatt a felhasználók általában a szerényebb hardverigényen vagy szélesebb platformskálán való futás képességét értik [@budai_balazs_benjamin_e-kozigazgatas_2008]. Zárt forrás esetén a fejlesztők gyakran csak a végső futtatási környezet szűk halmazát ismerik, így nehezen garantálható, hogy a rendszer hordozható lesz az operációs rendszerek és platformok közt [@gurbani_case_2006].


### Interoperabilitás, kompatibilitás, szabványkövetés (FS-J-K){#sec:FS-J-K}

A Létfontosságú Információs Rendszerelemek nagy mennyiségű kritikus adat megőrzéséért felelősek. Az információ hosszú távú elérhetősége azonban nem biztosított, ha a rögzített információ olyan formátumban kerül tárolásra amely a szoftverek új generációval már nem nyitható meg [@laszlo_nyilt_2009]. Hasonlóan fontos, hogy a komplex rendszer komponensei felismerjék egymás adatformátumait és ne legyen szükség az inkompatibilitásból adódó felesleges (esetleg információ vesztéssel járó) konverzióra. Ismert tény, hogy mindkét probléma hosszú távú orvoslásának kulcsa a nyílt szabványok használatában rejlik. 

A FLOSS rendszereket általában nyílt szabványok terén erősnek, (a zárt forrású termékekkel való) kompatibilitás terén gyengébbnek szokás tekinteni. [@ven_field_2010]

Di Penta megállapította, hogy az esetek legnagyobb százalékában (83%) a kormányzatban már eleve használt üzleti alkalmazásokkal való kompatibilitási problémák akadályozzák leginkább a FLOSS implementációját[@di_penta_exploratory_2010;@ellis_open_2009 ]. Hasonló eredményre jutott Marsan az egészségügyi szektort vizsgálva. Az egészségügyi hálózat ugyanis jobbára zárt forrású IT megoldásokat használ, ami igen ritkán kompatibilis a FLOSS rendszerekkel technikai szinten[@marsan_antecedents_2013]. Közismert példák az ilyesfajta inkompatibilitásra a Microsoft Office alkalmazásokkal való nehézkes együttműködés (az elvileg nyílt, XML alapú formátumok megjelenésének ellenére is), valamint a Linux operációs rendszer eszközmeghajtóinak hiánya bizonyos hardverekhez [@dilmurad_open_2011].

Az védett, üzleti formátumok használata a vendor-lock-in, azaz a gyártótól való függés kialakításának egyik bevált eszköze, amivel a gyártók  szívesen élnek is, ha lehetőségük adódik rá. Megfordítva, a nyílt szabványok használatának megkövetelése általában nagyobb szabadságot biztosít a beszállítók kiválasztása terén [@al-ajlan_evolution_2009]. Egyúttal a nyílt szabványok használata az előfeltétele a nemzetközi közös projektek zökkenőmentes lebonyolításának is [@dilmurad_open_2011]. 

A FLOSS támogatói gyakran érvelnek a szabad szoftverek nyílt szabványkövető tulajdonságával.  A FLOSS termékek ugyan valóban szabványkövetőek, hiszen semmilyen okuk nincs rá, hogy ne legyenek azok [@bouras_methodology_2013] de ez a tulajdonságuk nem kizárólagos. Az az elvárás, hogy lehetőleg minden alkalmazás nyílt forrású legyen egyáltalán nem életszerű sőt, a szabványkövetés szempontjából nem is szükségszerű. Elegendő ha minden alkalmazás esetében megköveteljük a nyílt szabványok használatát, legyenek azok nyílt vagy zárt forrásúak [@cerri_open_2007].

Ugyanakkor kétségtelen, hogy a FLOSS használata de facto garantálja a nyílt formátumot (még ha a szabványosságot nem is feltétlenül) implicit módon pedig az interoperabilitás lehetőségét is, ami miatt használata előnyös lehet a közszolgálati szektor szolgáltatásai esetében [@valimaki_empirical_2005].

Végső soron valószínűleg a nyílt forrás fejlődése és előretörése szerepet játszott abban, hogy ma már az üzleti alkalmazások jelentős része is szabványkövető, sőt konzorciumokon keresztül aktívan szerepet vállal a nyílt szabványok kialakításában.

### Alacsony hibaszám, jobb kódminőség (FS-J-M){#sec:FS-J-M}

A FLOSS egyik leggyakrabban emlegetett és hasonlóan gyakran vitatott tulajdonsága a hibák feltételezett alacsony száma. A feltételezés alapja az, hogy a forráskódot nyíltsága révén bárki megtekintheti, így az abban rejlő hibák előbb utóbb napvilágra kerülnek, a hibák felderítése és javítása gyorsabb mint a zárt forrás esetén. [@bahamdain_open_2015]

Az elmélet ellenzői szerint viszont abból, hogy valami bárki számár olvasható, még egyáltalán nem következik, hogy azt mindenki -- vagy egyáltalán valaki -- meg is nézi azt. 

Sajnos a kérdés eldöntése egyáltalán nem egyszerű. A tények azt mutatják, hogy mind a nyílt és zárt forrású megoldások egyaránt tartalmaznak hibákat, ehhez elegendő néhány rövid keresést végezni a CVE[^CVE] sérülékenység adatbázisban. A hibák számában látszólag nincs jelentős különbség, ami a józan ész alapján jelentheti azt is, hogy a felfedezetlen hibák száma is nagyjából azonos, de okoskodhatunk úgy is, hogy a forrás nyíltsága miatt a hibák felderítése könnyebb, így az adatbázisokban szereplő előfordulások az összes hiba nagyobb részét fedik le, tehát a fennmaradó hibák száma kevesebb, következésképpen az összes hiba száma kevesebb.

Huynh és Miller az összes dokumentált sérülékenység döntő részét kiadó webalkalmazások több különböző sérülékenységét[^Miller] célzó analízise során megállapította, hogy sérülékenységek számát tekintve nincs jelentős különbség a nyílt és zárt forrás között [@huynh_empirical_2010] bizonyos területeken a zárt más esetekben a nyílt szoftverek bizonyultak jobbnak, de a különbség egyetlen esetben sem haladta meg a 7%-ot. Achuthan indiai felmérése azt mutatta, hogy felmérésben résztvevők fele teljesen semleges álláspontot képvisel a nyílt és zárt forrású termékek biztonságát illetően [@achuthan_security_2014]. Vouk kutatásai szerint a RedHat Fedora operációs rendszer biztonsági sérülékenységei relatív ritkák és mennyiségük időben állandó, a webalkalmazások elemzése során viszont néhány esetben növekvő, más esetben éppen csökkenő sérülékenység sűrűséget talált míg a sérülékenységek száma és eloszlása igen nagy eltéréseket mutatott [@vouk_using_2013].

Torzíthatja az eredményt az is, hogy a gyártóknak jó okuk van titkolni a sérülékenységeket. Egyetlen sérülékenység bejelentése átlagosan 0.63%-al csökkenti egy cég piaci értékét, a veszteség dollármilliókra rúghat. Kimutatható az is, hogy a piac nem bünteti kevésbé a cégeket ha maguk jelentik be a sérülékenységet mintha egy harmadik fél akad rá arra. Ugyanakkor a hibák felderítésének költsége a felderített hibák számának növekedésével párhuzamosan egyre nő, így a további hibák felderítésének költsége idővel meghaladja a várható megtérülést [@wright_software_2011].

Az üzleti megközelítést és az ellenőrizhetőség problémáit jól illusztrálja a "Horus scenario" néven elhíresült sérülékenység csoport (CVE-2017-9851 -- 9864). A sérülékenységeket feltáró holland szakember szerint a SMA által gyártott napelemek firmwarében fellelhető hibák segítségével széleskörű DDOS támadás indítható az európai elektromos hálózat ellen, amely jól szervezett támadás esetén kritikus méreteket ölthet [@westerhof_theoretical_2017]. A gyártó saját whitepaper kiadványában valamennyi CVE bejelentést tételesen cáfolja vagy bagatellizálja [@sma_whitepaper_2017]. Mivel a termék nem nyílt forrású, a whitepaper lényegi információkat nem tartalmaz, a kérdés továbbra is eldöntetlen és nyitott marad. 

Tovább nehezíti a kérdéskört, hogy a FLOSS termékek palettája igen diverz, egészen gyenge minőségű a csúcskategóriás projektekig terjed. Az elemzések általában a népszerű, gyakran használt változatokat célozzák, holott a kevésbé népszerűek közt igen gyakoriak a biztonsági sérülékenységek, alacsony teljesítmény, hibás és gyenge dokumentáció és holt kódok használata [@akkanen_reusing_2007].

[^Miller]: Az említett publikációban Huynh és Miller a következő sérülékenységeket vizsgálta: XSS, SQL injection, Code injection, Command Execution, Information disclosure, Privilege Escalation

A kódminőség kérdése könnyebben elemezhető hiszen a kódminőségi mérőszámoknak köszönhetően kvantitatív módszerekkel ellenőrizhető. Aberdour 100 nyílt forráskódú alkalmazás elemzése során arra jutott, hogy a kódminőség meghaladja a várakozásokat és összemérhető az üzletileg elérhető alkalmazások minőségével [@aberdour_achieving_2007]. Ennek egyik oka az lehet, hogy maga a modell kényszeríti a fejlesztőket átláthatóbb és szabványkövetőbb kód írására, részben a mindenki által látható munka presztízsértéke miatt, részben mert csak így garantálható a nagy létszámú, gyorsan változó és nemzetközi fejlesztői közösséggel való hatékony interakció. Az átlátható kód pedig végső soron a biztonsági ellenőrzést is megkönnyíti [@khelifi_enhancing_2013].

A nyílt forrás nagy előnye, hogy praktikusan lehetetlen elrejteni a kódminőségbeli hiányosságokat. Akár gyenge akár jó minőségű termékről van szó, a forráskód elemzésével az eredmény mindenki számára nyilvánvaló. A fórumok átnézése során további információ gyűjthető az esetleges sérülékenységekről, míg ezek az információk üzleti alkalmazások esetében legfeljebb csak apró mozaik-darabkákból állíthatók össze, a kód megtekintése pedig szinte mindig kötelezettség vállalással jár, amennyiben egyáltalán lehetséges. [@alhazmi_security_2005]



[^CVE]: Common Vulnerability Enumeration, a MITRE vállalat nemzetközileg ismert sérülékenység adatbázisa amely egységes számozást biztosít a már felfedett biztonsági sérülékenységekhez. 

A fentiek alapján az alacsonyabb hibaszám és kódminőség hipotézisét nem tartom igazolhatónak. A vizsgált kutatások nem támasztja alá a kódminőség vagy hibák számának statisztikailag szignifikáns eltérését.



### Összefoglalás 


A FLOSS termékek belső tulajdonságaik tekintetében nem térnek el az üzleti verzióktól. A felhasználók gyakran említenek különféle problémákat ezek azonban elsősorban a támogatás hiányára, a nem megfelelő képzésre vezethetők vissza. A FLOSS támogatói 
hasonlóképpen hosszasan sorolják az előnyöket, ugyanakkor ezek az előnyök sem termékjellemzők, inkább a rugalmas felhasználást érintő előnyök. Az egyetlen valós terméktulajdonság a magasabb minőség és biztonsági szint, ez azonban nem ellenőrizhető a téma kapcsán folyamatosan ellentétes eredmények születnek. Mindkét modellből származnak kimagaslóan jó minőségű és gyenge termékek.  A különbség elsősorban a minőség tanúsításának módjában és a tanúsítás ellenőrizhetőségében mutatkozik meg és nem a termék tulajdonságaiban. 

Valós biztonsági hatást jelent a dokumentáció esetleges hiánya vagy gyenge volta, ugyanakkor ez sem specifikusan FLOSS jelenség, az üzleti termékek esetén is előfordul, a gyakoriság szignifikáns eltérése pedig nehezen bizonyítható.

Gyakran említett eltérés a magas szintű konfigurálhatóságból származó nehéz beállítás és az ezt megkönnyítű automatizált "varázslók" hiánya. Ez az eltérés sem általános, ráadásul nehéz eldönteni, hogy az alapértelmezés megléte vagy hiánya hat-e hátrányosabban a biztonságra. Az ésszerű alapértelmezés segíthet elkerülni a kezdeti hibákat, ugyanakkor a dokumentáció figyelmen kívül hagyására ösztönöz, márpedi a beállítások részletes ismere nélkül nyilvánvalón alacsonyabb biztonsági szint érhető el, mint ha azok megértését a termék kikényszeríti.

A FLOSS termékek átlagosan hordozhatóbbak de a hordozhatóság kötvetlen biztonsági hatásait nem sikerült azonosítani.

Összességében megállapítottam, hogy a FLOSS terméktulajdonságai révén nem befolyásolja jelentősen a biztonságot.

