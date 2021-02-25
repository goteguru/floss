<!-- vim: set et sw=4 ts=4 : -->


Fejlesztési folyamatok (FS-F)
---------------

Az üzleti szoftverfejlesztési folyamatok nem igazán illeszkednek a klasszikus nyílt fejlesztési közösségekre [@al-ajlan_evolution_2009; @ali_babar_software_2009; @xu_volunteers_2009], a két modell ugyanis kulturálisan különbözik. Míg az zárt modell a fejlesztők ellenőrzésén, fix ütemezése és minőségbiztosítási elveken alapul [@theunissen_search_2005], a nyílt modell a szabadságot, az önszerveződést és az innovációt helyezi előtérbe. Napjainkban a helyzet persze már nem ilyen egyértelmű, hiszen a klasszikus nyílt modell mellett egyre gyakrabban találkozunk cégirányítás alatt álló vagy szponzorált FLOSS projektekkel, amely a delegált fizetett fejlesztőkön keresztül a hagyományos szoftverfejlesztés módszertanát vegyíti a közösségi modellel [@capiluppi_exploring_2012; @wubishet_understanding_2009]. Sőt, ez a folyamat kétirányú, az üzleti fejlesztésben is terjednek a nyitottabb módszerek (Scrum, Kanban) valamint egyre népszerűbb a nyílt modell elveit használó Inner Source irányzat [@melian_lost_2008;@kalliamvakou_open_2015;@riehle_inner_2016] valamint a nyílt forrás folyamatos fejlesztés-fordítás-tesztelés ciklusát átvevő Continous Integration (CI) módszertan is [@rahman_characterizing_2018].  Az alábbiakban elsősorban a klasszikus önkéntes nyílt modell jellemzőre koncentrálok, hiszen innen ered a FLOSS modell eltéréseinek döntő része. 

A nyílt modellt gyakran támadják amiatt, hogy a hagyományos szoftverfejlesztés számos fontosnak tartott eleme, mint a formális követelmény-specifikáció, architektúra dokumentáció vagy minőségbiztosítási szabályozás messze elmarad az üzleti világban elvárt szinttől illetve sok esetben teljesen hiányzik. Előfordul, hogy a rendszer biztonsági architektúrális leírása -- ha létezik -- csak elszórt dokumentációkból gyűjthető össze és nincs szervezett biztonsági képzés [@wen_learning_2018] a számos fiatal fejlesztő és az ellenőrzés hiánya folytán a fejlesztők biztonságtudatossága nem mindig megfelelő [@wen_empirical_2019]. A hibrid vagy szponzorált nyílt fejlesztési közösségek üzleti szemlélete segít kiküszöbölni a hiányosságok egy részét [@capra_firms_2011], ehhez azonban a szervezeteknek megfelelő befolyást kell szereznie a projekt felett. Csakhogy a túlzott befolyás nem előnyös, elriasztja a fejlesztők egy részét [@hauge_providing_2009] illetve extrém esetben forkot kényszeríthet ki (pl. MariaDB vs. Oracle MySQL). A fork egyik gyakori célja a projektmenedzsment megváltoztatása [@sharif_empirically-based_2015]. 

Valójában a tradicionális nyílt közösség önmagában is képes a zárt modellel azonos minőségű kódot előállítani, az eredmény és a növekedés üteme általában nem lesz látványosan jobb, de rosszabb sem [@spinellis_tale_2008; @izurieta_evolution_2006]. Ez a teljesítmény azonban egyáltalán nem a véletlennek vagy a zseniális elméknek, hanem egy eltérő, de éppoly jól szervezett és fegyelmezett módszertannak [@soto_qualoss_2009] köszönhető amely néhány tekintetben hasonlít a zárt modellből ismert Agilis Szoftverfejlesztés[^ASD] módszertanához ám nem azonos azzal [@theunissen_corporate-_2008].

[^ASD]: Angol nevén Agile Software Development, szoftverfejlesztési módszerek egy csoportja, ahol a megoldásokat együttműködés révén önszerveződő multifunkcionális csoportok valósítják meg.

A szoftverfejlesztés hagyományos pillérei a követelmény-specifikálás, tervezési szakasz, a programfejlesztés, tesztelés, kiadás, karbantartás és folyamatot összefogó minőségellenőrzés. A nyílt modell ezeket gyors kiadási ciklusok alkalmazása mellett egymással párhuzamosan végzi, az egyes folyamatok nem is különülnek el élesen.


### Követelmények meghatározásának eltérései (FS-F-K){#sec:FS-F-K}

Több publikációban is megjelenik a FLOSS és üzleti projektek követelmény-rendszere közötti eltérés kérdése. Egyértelmű különbség mutatkozik a projektek magasabb rendű céljai, e célok megfogalmazásának mikéntje, a célok felhasználó-centrikussága és a célok elérésének határideje terén. Az alábbiakban ezeket a tényezőket mutatom be.

*Funkcionális követelmény meghatározás eltérései.*
Üzleti környezetben általában megengedhetetlen a célok hanyag megfogalmazása, míg egy FLOSS projekt megelégedhet vázlatos funkcionális követelmény-specifikációval [@bergstra_about_2007; @bahamdain_open_2015] ami csak idővel tisztul le [@capiluppi_software_2009] megfelelő mértékben. Más részről nyílt modell gyakran emlegetett jellegzetessége miatt -- nevezetesen, hogy a fejlesztők egyben felhasználók is -- a funkcionalitás stratégiai céljai már a kezdetektől sokkal tisztábbak, nem a fejlesztő és a vásárló hosszú és nehézkes egyeztetése során jönnek létre [@llanos_differences_2012]. A FLOSS fejlesztésben tehát az informális célok általában világosak, de nem jellemző viszont a mérhető célok definiálása [@aberdour_achieving_2007] a követelmények kidolgozása során.
A klasszikus FLOSS projektben általában nincsen formális követelményrendszer, a fejlesztési irányokat közösségi vita dönti el [@damiani_oss_2009; @schofield_levels_2007;@wang_comparative_2015], ezzel ellentétben az üzleti irányítású közösségekben (pl. Android) a célok többnyire világosak, meghatározásuk semmiben nem tér el az üzleti változatokétól, ami nem véletlen, hiszen itt az irányítás egy piaci szereplő kezében van [@bettenburg_management_2015]. 

*Időbeli célok eltérései.*
A FLOSS projekteket nem motiválja az időben történő piacra kerülés. Ez egyrészt biztonsági szempontból kedvező, hiszen nincs határidő nyomás a fejlesztőkön, felhasználói részről viszont kedvezőtlen, hiszen esetleg hosszú időn keresztül nem jutunk hozzá a kívánt funkcióhoz [@ajila_empirical_2007].

*Felhasználó centrikusság.*
A FLOSS fejlesztés alapvetően nem felhasználó-centrikus. Amennyiben kevésbé technikai felhasználók (azaz a fejlesztők halmazán kívül esők) igényelnek valamilyen funkciót, az vagy bekerül a specifikációba vagy nem, szabad kapacitástól függően, ami jelentős különbség ez az üzleti világhoz képest, ahol a felhasználói igény kielégítése a fejlesztés elsődleges iránya. A nyílt modellben nem cél a vásárló elégedettsége [@gurbani_case_2006;@ruhe_management_2014], az igényfelmérést és követelmények meghatározását programozók és nem erre szakosodott szakemberek végzik [@aberdour_achieving_2007] és általában hiányzik az igényekre vonatkozó komplex adatgyűjtés [@bach_floss_2009] is. A felhasználók brainstorming jelleggel, levelező listákon és fórumokon keresztül adhatnak hangot igényeiknek, bizonyos mértékig részt vállalva a projekt tervezésében (legalábbis nagyobb mértékben mint a zárt modell esetén [@johansson_diffusion_2011]). 

Ezt a tervezési módszertant számtalan zsákutca, elvetélt változat és igen lassú haladás jellemzi [@ko_design_2011; @ven_challenges_2008] így hatékonysága és eredményessége megkérdőjelezhető [@laurent_lessons_2009; @noll_requirements_2008], ugyanakkor igaz, hogy ezáltal egy sokkal nagyobb halmaz -- a felhasználói bázis jelentős része -- vesz részt az innovációban [@iivari_discursive_2010]. A funkcionális igény lassú teljesülése LRE rendszerek esetén problematikus lehet, különösen ha ez a hiányzó igény pont a biztonság. A felhasználók alacsony érdekérvényesítő képességére vezethető vissza a FLOSS használhatóságbeli problémái [@raza_open_2012] hiszen a technikailag képzetlenebb felhasználó és a fejlesztést irányító fejlesztő-felhasználó számára a jó használhatóság merőben mást jelenthet (felhasználói interfész kidolgozottsága, beállítási lehetőségek egyszerűsége, beépített segítség stb. vonatkozásában). 

Többnyire az üzleti termékek felhasználóinak sincs lehetőségük beleszólni a fejlesztésbe, de általában bíznak benne, hogy a piaci végül a megfelelő irányba tereli a fejlesztést [@li_empirical_2006]. FLOSS esetén az lesz az irány, amit a "látnok" kijelöl, vagy amit a többség megszavaz (lásd [-@sec:FS-K-Sz]). Emiatt az üzleti felhasználóknak nagyon fontos, hogy megfelelő lobbierővel rendelkezzenek, amit támogatással, de leginkább a közösség munkájában való részvétellel érthetnek el. Nem véletlen, hogy az igazán nagy piaci értéket képviselő FLOSS projektekben (Linux, cloud technológiák területe) általában szerepet vállalnak az technológiát felhasználó nagyvállalatok illetve -- többnyire konzorcium formájában -- egész egyszerűen átveszik annak vezetését.

Biztonsági szempontból a felhasználó-centrikusság és a piacorientáltság hiánya nem feltétlen hátrány. A felhasználók igazoltan hajlamosabbak fizetni az érdekes funkciókért mint a biztonságért. Egy biztonsági hiányosságokkal terhelt de funkciógazdag termék jobban eladható, mint egy biztonságos, ám funkciószegény változat, még akkor is, ha a hiányzó funkciókat a felhasználók valójában nem is használják [@wright_software_2011]. 

*Hosszú távú tervezés .*
A FLOSS közösség alapvető stratégiai célja nem a profit, az időben való piacra kerülés vagy egy kitűzött specifikáció megvalósítása, hanem az együttműködés egy ötlet körül [@khanjani_aspects_2011;@subramaniam_determinants_2009;@vuorinen_ethical_2007].  A piaci céloktól való függetlenség pozitív hozadéka az jobb hardver kompatibilitás. Egy-egy hardver támogatottsága nem tűnik el pusztán azért, mert már nem gazdaságos azt fenntartani [@kemp_current_2009]. Egy Linux rendszert mind a mai napig le lehet fordítani i386-os architektúrán, Gravis Ultrasound támogatással, holott ezt a hardvert lassan már csak múzeumokban találjuk meg.

A fejlesztés hangsúlya általában az innováción és nem a stabilitáson van [@levine_where_2010; @lorenzi_assessing_2008], bár ezt a problémát a legtöbb projekt stabil, teszt és a legfrissebb "bleeding edge" verziók használatával igyekszik enyhíteni. 

A célok és követelményrendszer megfogalmazásának fent említett eltérése a FLOSS idealista fejlesztőközössége és a cégek vezetőinek gondolkodási különbségeire vezethető vissza. A cégvezetők gyakran nem kevés gyanakvással tekintenek a FLOSS projektekre az üzleti gondolkodástól elütő idealizmusuk miatt [@ellis_open_2009].

A követelményrendszer különbözőségének kezelésére esetleg megoldást jelenthetnének a már ma is létező szabadúszó licit [^Freelancer] vagy crowdsourcing rendszerekhez hasonló platformok kialakítása, ahol a fejlesztésben részt nem vállaló felhasználók a hiányzó funkciókra vagy magára a projektre licitálhatnának. Ez egyúttal a FLOSS fejlesztések finanszírozási problémáin is segítene. Az ilyen irányú próbálkozások a FLOSS esetében egyelőre gyerekcipőben járnak (élő példa többek közt az IssueHunt vagy a BountySource [@kanda_towards_2017]), egy jól működő modellhez a technikai lehetőségen túl valószínűleg mélyreható társadalmi, hozzáállásbeli változások szükségesek. 

Jelenleg a projekt céljainak befolyásolásra az egyetlen gyakorlatban is kivitelezhető megoldás úgy tűnik a projektben való részvétel [@noll_requirements_2010].


[^Freelancer]: Az un. freelancing vagy microjob platformokon különféle részfaladatokra jutalmat kitűzve szabadúszókat bérelhetünk. Ilyen platform a Freelancer.com, Truelancer, Upwork, Guru, Zeerk. 


### Tervezés  (FS-F-P){#sec:FS-F-P}

Általános nézet, hogy a FLOSS projektek nem alkalmaznak formális tervezési módszereket, sőt egyes esetekben a tervezők egyenesen másodrendű állampolgárok a közösségben [@zilouchian_moghaddam_open_2011]. A projektek gyakran azonnal programozással indulnak, átfogó tervek csak a fejlesztés folyamán vagy egyáltalán nem születnek [@aberdour_achieving_2007]. A modellek, különösen a dokumentált modellek használata ritka [@badreddin_modeling_2013], ami problémát jelenthet ha a projektet átlátó régi fejlesztők helyére újaknak kell lépniük, hiszen a betanulási idő igen hosszúra nyúlhat [@rashid_exploring_2017]. A helyzetet jól jellemzi, hogy a GitHub projektek mindössze 0.28% tartalmaz UML[^UML] diagrammot és ezeknek is csak egyharmada tartalmaz egynél többet [@hebig_quest_2016]. 

[^UML]: Unified Modeling Language, általános célú, elterjedt modellező nyelv a szoftverfejlesztés területén.

A közösség alapvetően projekt és nem szervezet központú [@bach_designers_2009] a fejlesztők javításokról vagy funkciókról blogolnak, menedzsment kérdésekről csak egészen elvétve esik szó [@pagano_how_2013].  Jobbára nincs definiált módszertan [@aberdour_achieving_2007; @ali_babar_software_2009; @bahamdain_open_2015], a fejlesztési stratégia dokumentációja többnyire kimerül valamilyen programozási stílus útmutatóban (ami viszont igen gyakori) [@otte_applied_2008]. Ha van is formális követelményrendszer, kisebb projektekben ritkán tartják be és még ritkábban ellenőrzik [@adanna_ezeala_open_2008]. 

Az önállóan választott feladatok, a szerepkörök egybemosódása kockázatot hordozhat. Nem érthet mindenki mindenhez. A kivitelező szakemberek nem feltétlen képesek jó modelleket alkotni, ahogy a modellező szakember sem biztos, hogy képes jól végrehajtani azt [@kim_software_2014].
A FLOSS közösségek ritkán fogalmaznak meg formális biztonsági követelményeket, a meglévő biztonsági minősítő módszerek is stabil tervezési és fejlesztési folyamatokat feltételeznek, ami megnehezíti a FLOSS biztonsági tanúsítását [@damiani_oss_2009]. Minthogy a megszokott módszerek nehezen használhatók a tanúsítást a kód és a metaadatok elemzésével lehet elvégezni [@mokhov_taxonomy_2008]. 

Az tervezésre jellemző a nagy fokú modularitás és a komponensek extenzív használata [@al-ajlan_evolution_2009;@abate_dependency_2012;@laat_how_2010] amit az adapter pattern gyakori jelenléte is jelez [@ampatzoglou_investigating_2011] ugyanakkor jelentős komplexitást vezet be és verzió-frissítési problémákhoz vezethet. A FLOSS általában valóban modulárisabb mint a zárt modell [@gurbani_case_2006] amire szükség is van, hiszen a nagy számú fejlesztő csak így tud hatékonyan együtt dolgozni elfogadhatatlanul magas integrációs és koordinációs költség nélkül [@sohn_strategic_2008; @luther_why_2010]. Az újonnan érkezők az őket érdeklő részre tudnak fokuszálni, anélkül hogy a többiek munkáját zavarnák [@ali_babar_software_2009]. 
A modularitás további előnye, hogy egyetlen jól meghatározott feladatot végző könyvtárban könnyebb megtalálni a hibát, mint egy komplex rendszerben [@orsila_update_2008].  A modularitás mérhető [@milev_design_2009], a mérőszámok segítségével következtetéseket vonhatunk le a projekt sikerességére vonatkozóan. 


A kódbázisban erős kód-coupling[^coupling] figyelhető meg, ami részben a központi tervezés és modellező eszközök hiányára vezethető vissza [@ahmed_exploration_2014] részben szándékos módszertani következmény. A nyílt modellre általában, a Linux disztribúciók esetében pedig különösen igaz, hogy nagyon sok a függőséget tartalmaznak [@adams_empirical_2015]. A csomagok közötti bonyolult függőségi rendszer ellehetetleníti a különböző kiadások közötti kompatibilitást [@stol_comparative_2011;@abate_adoption_2017], az egy adott verzión futó bináris egyáltalán nem biztos, hogy fut a másikon. (Ugyanez igaz egy szoftveren belül a komponensek tekintetébe is, igaz ezzel a jelenséggel a végfelhasználó csak ritkán találkozik). Ennek oka a magas szintű komponens újrahasznosításban keresendő[@sohn_strategic_2008; @ruhe_management_2014;@zaimi_empirical_2015]. A meglévő komponenseket (bináris programkönyvtárak vagy osztályok) a teljes projekt nagyon sok része használja, viszont a komponensből lehetőség szerint csak egyetlen verziót integrálnak, melynek eredményeképpen jóval kisebb, konzisztensebb, ugyanakkor az ABI/API[^ABI] eltérések miatt sokkal kevésbé kompatibilis rendszerhez jutnak. Ebből kifolyólag egyetlen FLOSS sérülékenységnek igen széles körű hatása lehet [@ahmad_two_2008]. A felhasznált nagyszámú komponens következménye, hogy a komponensek sérülékenységeit is megörökli az új rendszer. A komponensek sérülékenység eloszlása hasonló mintát mutat mint az azokat felhasználó projekteké [@gkortzis_double-edged_2019].

Amikor egy komponens nem illeszkedik tökéletesen gyakran egyszerűen megváltoztatják [@anh_collaborative_2012] és helyi módosításként kerül a kódbázisba, ami további hibalehetőséget visz a rendszerbe (a korábban említett hírhedt openssl sérülékenység is helyi foltként került a disztribúcióba).


A függőségek kérdése azért is nagyon fontos, mert a projektek a függőségeik közt szereplő komponens-projekteket nagyon ritkán monitorozzák [@orsila_update_2008] és ritkán frissítik [@salza_developers_2018]. Kula et al. 4600 GitHub projektre kiterjedő analízise szerint a függőségek több mint 80%-át nem frissítették, így azok idejétmúltak voltak [@kula_developers_2018]. Ebből viszont az következik, hogy ha egy sokat használt komponensben sérülékenységet vezetnek be, az nagyon könnyen és észrevétlenül szétterjedhet, elérve és veszélyeztetve a végfelhasználó rendszereit is. A csomagfüggőségek tetemes karbantartási költséget jelenthetnek, ugyanis hatásuk tranzitív módon érvényesül. A frissítések beolvasztásával a konfliktusok száma nő, tiltásával viszont fontos frissítéseket hagyunk figyelmen kívül [@decan_empirical_2017]. 

Ezen a problémán igyekeznek segíteni a modern csomagkezelő rendszerek biztonsági tanusítást végző funkciói, amelyek a telepített csomagok valamennyi függőségén végighaladva felhívják a figyelmet az ismert sérülékenységekre. A csomagkezelő rendszerek sajátosságait [-@sec:FS-T-M]. fejezetben vizsgálom részletesebben.

[^coupling]: Coupling: a programkódban található objektumok függőségét mutató mérőszám. Az erősen függő (highly coupled) kód nehezen módosítható, mert a változtatás sok más objektum működésére hatással lehet. 
[^ABI]: API: Application Program Interface, ABI: Application Binary Interface

### Minőségbiztosítás (FS-F-M){#sec:FS-F-M}

OSSD esetén többnyire nincs formális minőségbiztosítás [@ardagna_assurance_2009; @de_groot_call_2006] a kisebb projektek nem gyűjtenek minőségre vonatkozó empirikus bizonyítékokat [@aberdour_achieving_2007; @kuwata_study_2014], de alkalmaznak ad hoc megoldásokat és kódminőséget javító módszereket (code readings, walk through, refactoring, peer review) [@otte_applied_2008; @bosu_identifying_2014; rigby_convergent_2013; @ruhe_management_2014]. A kódátnézés módszertana nagyon hasonlít az üzleti fejlesztési módszertanban alkalmazotthoz [@bosu_process_2017]. Nagyobb projekteknél a minőségbiztosítás gyakran patchelés alapú fejlesztési megközelítés pótolja, azaz egy adott módosítás halmaz csak szigorú ellenőrzés és az ellenőrök általi digitális aláírás megszerzése után kerülhet az upstream[^upstream] kódbázisba [@aaltonen_influence_2007].

[^upstream]: Általános értelemben upstream kódbázisnak nevezzük a projekt által felhasznált külső kódot, programkönyvtárakat, modulokat. A verziókezelők esetében azt a verziót nevezik upstreamnek, amelyből a szóban forgó változatot készítették (forkolták). 

A minőségre implicit módon kihatnak pszichológiai tényezők is, hiszen a nyilvánosságból adódóan a kiadott kódot nagyon sokan látják, a kóddal kapcsolatos nézeteiket, a szerintük helyes megközelítést kommunikálják is, ami egyrészt sokat lendít a tanulási folyamaton, másrészt bizonyos kényszerítő erőt jelent a helyes programfejlesztési módszertan és a szabványok követésére [@bouras_methodology_2013]. A kód ellenőrzés lefedettségének növelése a szoftver minőségét és biztonsági szintjét egyaránt erősíti [@thompson_large-scale_2017].

Bizonyos értelemben a zárt modellben implicit míg nyílt modellben explicit minőségellenőrzés végezhető. Míg zárt forrás esetén a minőségbiztosítás elvégzését és szintjét egy tanúsítvány bizonyítja, azaz elsősorban bizalmi kérdés, a nyílt modellben az elvégzett munka közvetlen módon, egyértelműen ellenőrizhető és mérőszámokkal jellemezhető [@khanjani_aspects_2011; @sunindyo_improving_2012].

### Kivitelezési szakasz (FS-F-V){#sec:FS-F-V}

A FLOSS modell sok, hagyományosan elkülönülten kezelt lépést a kivitelezés során végez. A kivitelezéssel párhuzamosan futnak a béta tesztek, a tervezés, hibajavítás, más elemek viszont kimaradnak, általában nem tartják nyilván például a problémák megoldásával járó időt szemben az üzleti világban megszokott eljárással [@asundi_need_2005]. A hagyományos kivitelezési módszertan valószínűleg nem is igazán működne, az esetenként több ezres fejlesztőtábor, magas fluktuáció és az "egyszeri" fejlesztők miatt. Az átlagos közösségben töltött idő egészen alacsony is lehet (Android 65 nap, Linux 24-57 nap[^alacsonyido])[@bettenburg_management_2015] 

[^alacsonyido]: Természetesen vannak állandó fejlesztők is, az átlag az egy-két alkalommal hozzájárulók miatt ilyen alacsony.

Minthogy a fejlesztés közösségi hozzájárulásokon alapszik, ezeknek a kódmódosításoknak valahogy be kell kerülniük az upstream kódbázisba. Ez a folyamat általában szabályozott és gyakran igen komoly követelményeknek kell megfelelni [@rigby_convergent_2013; @sethanandha_managing_2010]:

1. A kódmódosítás halmaznak az aktuális fejlesztői verzióból kell származnia és alkalmazkodnia kell a projektben elvárt fejlesztési sztenderdekhez.
2.  A külső féltől származó hozzájárulásokat általában valaki elemzi. E lépés célja a megfelelő minőség biztosítása, funkcionális ellenőrzés. A kódellenőrzést általában több kis csoport végzi, melyek mindegyike egy-egy területre koncentrál [@wang_behind_2011], a jó ellenőr megtalálása nem mindig könnyű, ami jelentősen megnövelheti az átfutási időt [@thongtanunam_who_2015].
3. A kódot addig módosítják amíg el nem éri a közösség által elvárt szintet.
4. Ezek után a projekt valamely szenior tagjának jóvá kell hagynia a módosítást biztosítva, hogy az új kód hibamentes és teljesíti a regressziós teszteket;
5. végül a kód integrálásra kerül a kódbázisba. 

![Módosítás elfogadásának mechanizmusa OSSD esetén. (Saját szerkesztés, Bettenburg nyomán [@bettenburg_management_2015])](ábrák/hozzájárulás-módja-bettenburg_management_2015.pdf){width=78%}

A teljes folyamat elég erőforrásigényes, kivitelezése gyakran meghaladja a kisebb projektek lehetőségeit, melyeknek így nehézségeket okoz a hozzájárulások menedzselése [@bettenburg_management_2015]. Ezen a problémán segít a közösségi fejlesztőportálok (pl. Github) pull request[^pullrequest] funkciója, amely az elfogadási folyamat bürokratikus terhét részben leveszi a magfejlesztők válláról [@chen_predicting_2014;@yu_empirical_2014;@zhu_effectiveness_2016].

Ez a többlépcsős kódelfogadási módszer fontos pillére az kódminőség biztosításának, ugyanis a tapasztalatlan fejlesztők 2-20x annyi sérülékenységet vezetnek be mint a tapasztaltabb belső fejlesztők. Érdekes módon megfigyelhető, hogy a fizetett fejlesztők is nagyobb eséllyel vezetnek be új sérülékenységet mint a közösség többi tagja [@bosu_identifying_2014].

A perifériáról a mag közelébe kerülők ráhatása jóval nagyobb a projektre.  A magfejlesztők változtatásait sokkal nagyobb valószínűséggel fogadják el és sokkal hamarabb kapnak visszajelzést [@bosu_impact_2014] is.

Általában igaz, hogy a FLOSS fejlesztésekben a változások sokkal gyakoribbak, sokkal nagyobb számú (később fel sem használt) változat, kiterjesztés, módosítás jellemzi őket ami esetenként olyan méreteket ölthet, ami már a projekt stabilitását veszélyezteti [@bouktif_predicting_2014].
A rengeteg párhuzamosan futó változat és változtatás eredménye, hogy sokszor bizonyos részt többen is megírnak vagy módosítanak, a különféle verziók között sokkal több a konfliktus mint zárt forrás esetében. Verziókezelő szoftverek nélkül ez a fejlesztési modell gyakorlatilag kivitelezhetetlen lenne, de még így is rengeteg a nehezen feloldható konfliktus a kódmódosítások integrálása során [@brun_early_2013]. 

[^pullrequest]: közösségi fejlesztő-portálokon alkalmazott eljárás, amely formális keretet biztosítva leegyszerűsíti a kódelfogadás folyamatát. A kérelmező saját kódváltozatából létrehozott módosításkészletet elküldi a projekt fejlesztőjének, aki azt soronként átnézheti, a változáskészlethez megjegyzéseket fűzhet, módosításokat kérhet, illetve igény szerint elfogadhatja azt. 

A nyílt fejlesztés egyik fontos velejárója a saját, alternatív változat, a fork készítésének lehetősége. Sokak szerint a forkolás joga nélkül az nyílt forrás nem is nyílt forrás, a szabad szoftver nem is szabad szoftver többé [@nyman_hackers_2014]. A forkolást két tényező teszi lehetővé és két fontos okból kerülhet rá sor. Egyrészt könnyű végrehajtani hiszen garantált a jogi lehetőség a másolásra, másrészt egyszerű a technikai megvalósítás a kiterjedt (D)VCS használat révén. Az indíték lehet szociális amikor a vezetéssel elégedetlen (pl. MariaDB) vagy nézetkülönbségek által megosztott közösség (pl. ffmpeg / libav) kettéválik, illetve technikai, ahol a fork a fejlesztés eszköze, szándékosan és nagy tömegben hozzák létre munkaszervezési céllal vagy egy-egy új funkció tesztelése végett (feature branch). 

Az előbbit gyakran negatív felhanggal említik, ám ha a kódot a DNS lánchoz hasonlítjuk a projektek osztódása és kihalása egészséges természetes szelekciónak tekinthető[@hao_study_2008; @nyman_perspectives_2012] ami segít túlélni a környezet extrém változásait (pl. akvizíció) és ösztönzi a folyamatos fejlődést. 

Egyértelmű negatív hatásai az alábbiak:

* nagy számú, eltérő képességű, állapotú és kompatibilitási szintű változat kialakulása, amelyből adott esetben nehéz lehet kiválasztani a megfelelőt [@ihara_industry_2014]; 
* duplikált erőfeszítés, az emberi erőforrások megosztása;
* valamint, hogy kompatibilitási problémákat okozhat [@nyman_hackers_2014].

A technikai fork egyértelműen pozitív, funkcionális jelenség, nem jár a közösség felosztásával és a modern DVCS[^DVCS] rendszerek központi funkciója (branching). A közösségi fejlesztőoldalak tulajdonképpen erre a képességre építik projektkezelési stratégiájukat. A különféle fejlesztői, feature és topic-branch forkok egymással könnyen összehasonlíthatók, szükség esetén egyesíthetők, párhuzamosan futtathatók és köztük kiválasztott kódrészretek relatíve egyszerűen mozgathatók.

A LRE területén, különösen a kormányzati szférában lehetőleg kerülni kell a szociális eredetű forkok kialakulását mert az egyedi változat karbantartása nagy megterhelést róhat az új tulajdonosra aki így nem tudja kihasználni a fejlődő eredeti változat képességeit és biztonsági frissítéseit [@bjorgvinsson_software_2007]. Amennyiben a szervezet technikai forkot használ változtatásokat lehetőség szerint vissza kell vezetni az eredeti projektbe. Az legfrissebb fejlesztői változatot általában nem javasolt éles környezetben használni az alább ismertetett kiadási jellegzetességek miatt, ilyen esetekben megoldást jelenthet a snapshotting, azaz a szervezet huzamosabb ideig egy stabilnak ítélt változatot használ és csak ellenőrzést és tesztelést követően vált a következőre. A stabil változatba csak az esetleges biztonsági foltokat vezeti vissza.



### Tesztelési és kiadási szakasz (FS-F-T){#sec:FS-F-T}

Gyakran hiányoznak a struktúrált tesztelési eljárások, illetve a tesztelési folyamat a projekt életének igen hosszú szakaszán át általában folyamatosan tart [@otte_applied_2008]. A kisebb projektek néha egyáltalán nem alkalmaznak teszteket, ezt teljes egészében a közösségre hagyják [@takasawa_open_2014; @capra_framework_2008;@gupta_empirical_2008]. Nem minden projekt alkalmaz tesztelési dokumentációt, tesztelési keretrendszer pedig csak kivételes esetben jelenik meg [@tosi_survey_2013]. A legjellemzőbb alkalmazott tesztelési eljárás a unit tesztek írása [@de_groot_call_2006]. Takasawa kimutatta, hogy a megjegyzések és a tesztek fedettsége korrelációban áll a tesztek eredményeivel, így tesztek sikeressége futtatás nélkül a metrikákból becsülhető[@takasawa_open_2014]. A tesztek egyértelműen pozitívan befolyásolják a projekt sikerességeét. Kimutatható, hogy a tesztekre nagyobb erőforrást fordító FLOSS projektek sikeresebbek [@hanoglu_empirical_2019]. 

A kiadások ütemezésénél megfigyelhető, hogy előszeretettel használnak minél hamarabbi és gyakoribb kiadásokat [@stol_comparative_2011] illetve, hogy a kiadás, tesztelés, kódellenőrzés és karbantartás egyidőben, párhuzamosan folyik [@khanjani_aspects_2011]. Jó minőségű szoftver előállításához hosszas tesztelési időszak szükséges, ami látszólag ellentmondásban áll a nyílt modell gyakori kiadási ütemezésével [@li_reliability_2011]. A párhuzamos munkavégzés és a nagy számú folyamatos teszt következtében [@ruhe_management_2014] a legújabb funkciót még nem tartalmazó stabil változatok megbízhatósága végső soron egyáltalán nem marad el az üzleti modellben elérttől. A gyors ütemezés célja, hogy minnél hamarabb minnél több emberhez eljusson a termék, ne csak a fejlesztők nézzék át a kódot, ezáltal a hibák gyorsan felszínre kerülhessenek. A felhasználói bázis mérete valóban korrelációban áll a hibajavítás minőségével [@dashevskyi_security_2016].

A gyors kiadási ütemezés általános módszertana a következő[@teixeira_release_2017]:

* Tervezés
* Megvalósítás 
* Fagyasztás (feature freeze): a fejlesztést egy adott állapotban rögzítik és a hibajavításra koncentrálnak [@francalanci_empirical_2008]. 
* Ütemezés: Viszonylag kevés projekt alkalmazza de elengedhetetlen az időhöz kötött ütemezés esetében, ami elsősorban a szponzorált nyílt forrás sajátja. Más projektekben a kiadások ütemezése alapvetően funkcionális, azaz az új funkciócsoport megjelenéséhez köthető[@otte_applied_2008].
* Mérföldkövek meghatározása: Nem minden projektnél található meg és általában csak lazán megfogalmazottak. Semmilyen garancia nincs, hogy azokat el is érik, inkább csak tájékoztató jellegűek [@michlmayr_release_2007].
* Határidők: sok projekt határoz meg határidőket, amiket nem mindig sikerül tartani, hiszen a kiadásért felelősszemélynek nincs befolyása a fejlesztők felett.
* Fordítás különféle architektúrákra: előnyös lehet, ugyanis bizonyos hibák csak bizonyos architektúrákon kerülnek elő [@michlmayr_release_2007].
* Felhasználói teszt: a kiadások legfőbb előnye a visszajelzések gyors és közvetlen begyűjtése a tesztverziót használó (rendszerint jól képzett) felhasználóktól. Még a kiterjedt tesztelési eljárásokat használó fejlesztők is úgy tartják, a leghasznosabb visszajelzések a felhasználóktól származnak.
* Kiadási ellenőrző lista: sok projekt használ kiadási feladatlistát, ami biztosítja hogy egyetlen lépés sem marad ki.
* Kiadás minősítés: kevés projekt rendelkezik formális kiadás-minősítő eljárással, a minősítés informálisan levelező-listákon és fórumokon zajlik.

A nyílt modell hibajavító képessége meglepően jó, és a várakozásokkal ellentétben nem függ a projekt méretétől, azaz a nagyobb projektek éppen olyan jól képesek elvégezni a korrekciós feladatokat [@midha_governance_2012].


### Eszközhasználat (FS-F-E){#sec:FS-F-E}

A nyílt modell jellemző eszközöket használ [@krafft_how_2016; @raza_empirical_2019], ezek döntő többsége fejlesztői eszköz [@petrinja_overview_2008]. A nyílt modell sok eszköze átszivárgott a zárt fejlesztésbe is, így az eltérés ma már nem kiugró. Általában igaz, hogy a közösség szinte kizárólag nyílt fejlesztésből származó eszközöket alkalmaz, erősen jellemző a DVCS használata [@matos_open_2013; @de_alwis_why_2009] amelyek kiváló minőségűek. Jó példa az eredetileg a Linux kernelhez fejlesztett git verziókövető rendszer világméretű térhódítása. Zárt eszközök használata általában nem támogatott, hiszen ezzel korlátoznák a potenciális csatlakozók körét, ami viszont a zárt és nyílt fejlesztések együttműködésében zavart okozhat [@asundi_need_2005]. 

[^DVCS]: Distributed Version Control System, megosztott változáskezelő rendszerek, pl. Git, darcs, mercurial.

A nyílt fejlesztőeszközök jó minősége nem véletlen, hiszen klasszikusan teljesíti a fejlesztő egyben felhasználó is elvet, amely a nyílt fejlesztések egyik fő motiváló ereje. 

A fejlesztőeszközök terén is igaz, hogy nem dominál a felhasználó-centrikusság, azaz, az eszközök technikai szempontból rendkívül jó minőségűek és széles képességkészlettel rendelkeznek, használatuk egyáltalán nem biztos hogy felhasználóbarát vagy kényelmes (ez természetesen szubjektív). Megfigyelhető, hogy az egységes fejlesztői környezet nem idomul az eltérő fejlesztési szerepkörökhöz (koordinátor, magfejlesztő, hibajavító, bejelentő stb.) ami hátrányosan befolyásolhatja a produktivitást [@cheng_activity-based_2019]. Ugyanakkor, az iparban elterjedt üzleti fejlesztőeszközökkel és modellező rendszerekkel a nyílt fejlesztési modell egyébként hatékony eszközei nem mindig kompatibilisek ezért a két világ közötti átjárás kihívást jelenthet [@zolotas_bridging_2020].  

Mind a hibakeresés mind a fejlesztés során gyakori a kódrészletek cseréjét lehetővé tevő alkalmazások (pl pastebin) használata [@damiani_diffusion_2015], a kiterjedt információ csere fórumokon és kérdezőoldalakon (pl. Stack Overflow) valamint a kódtárházak közötti másolás [@gharehyazie_here_2017]. Mára ez a különbség is elmosódni látszik, mert a zárt fejlesztésekben is kiterjedten alkalmazzák ezeket a módszereket. 
