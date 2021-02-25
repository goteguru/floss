<!-- vim: set et sw=4 ts=4 : -->

Terjesztés és támogatás (FS-T)
---------------

A nyílt modellből származó termékek terjesztése és a termékhez járó támogatás lehet teljesen megszokott vagy attól erősen eltérő. Amennyiben egy piaci szereplő átvállalja a terjesztést és a támogatást, a FLOSS felhasználó szempontból lényegében megkülönböztethetetlen a COTS termékektől. Amennyiben viszont nincs ilyen szereplő vagy szolgáltatásait nem kívánjuk igénybe venni, a közösségi nyújtotta támogatás és a termék beszerzési módja jelentősen eltér a dobozos termékekétől.

Az eltérések a nyílt közösség szervezeti felépítéséből (lásd [-@sec:FS-K-Sz]. fejezet), egyedi fejlesztési módszertanából (lásd [-@sec:FS-F-P]. fejezet) és terjesztési gyakorlatából következnek és különösen a komponensek terjesztése esetében jelentkezik élesen. 

A FLOSS könnyen elérhető, általában sűrű frissítési ütemezéssel rendelkezik ugyanakkor a közösség szinte egyáltalán nem fektet energiát a  termék népszerűsítésébe. A alábbiakban ezekkel a jellemzőkkel foglalkozom.


### Frissítések, kiadási ütemezés (FS-T-K){#sec:FS-T-K}

A nyílt modell fejlesztői gyorsabb ki tudnak javítani egy-egy hibát [@erturk_case_2012] ám, ha az OSSD kiadási ciklusai túl sűrűek -- előfordulhat, hogy havi 3-4 kiadás is van -- az nem  legkedvezőbb a gazdasági szereplőknek. Bár a hibajavítások sebessége szempontjából előnyös, a frissítés elvégzése idő és munkaigényes [@weikert_model_2013]. 
Ebből kifolyólag előfordulhat, hogy a felhasználó vagy fejlesztő nem tölti le a frissítéseket [@rossi_download_2010]. A komponens alapú fejlesztés hierarchikus felépítésével kombinálva mindez különösen veszélyes helyzethez vezethet, hiszen az alkomponensek hierarchiájában eltemetett kód frissítése és verziójának meghatározása komoly nehézségekbe ütközhet. Empirikus bizonyítékok támasztják alá, hogy a migrációval járó többletmunka miatt a fejlesztők valóban ritkán (<10%) végzik el a komponensek verziófrissítését [@kula_developers_2018; @salza_developers_2018].

Néhány FLOSS saját biztonsági frissítési rendszerrel rendelkezik (mint minden operációs rendszer), ám ha egy komponensről van szó akkor lehet, hogy a sérülékenység javításának a kiadás folyamatos követése az egyetlen módja. A probléma fordított irányban is fennállhat. Lehetséges, hogy a laza ütemezés  folytán a FLOSS következő kiadása késik a felhasználó vagy integrátor ezért elkezdi a fejlesztői változatot használni [@michlmayr_release_2007]. A fejlesztői változat azonban többnyire nem garantálja a hibamentes működést, használata nyilvánvalóan nagyobb kockázattal jár. 


A frissítések terjesztési módján kívül a nyílt és zárt modell között nincs hibajavítás terén eltérés, a hibajavítások sűrűsége és minősége a csapattól függ amely csinálja azt és nem a fejlesztési modelltől. Ha ugyanaz a csapat végez nyílt és zárt környezetben munkát a hibajavítás minősége is hasonló lesz [@schryen_comprehensive_2009;@yu_evaluating_2007]. Az OSSD projektek javítási idejében viszont nagy eltérés tapasztalható, egyes projektekben (pl. AbiWord) akár éveken át javítatlanul maradhat hiba, míg mások napok alatt reagálnak [@orsila_update_2008].

A nyílt modell szociális jellegének hozadéka, hogy nem mindegy milyen módon igényeljük a hibajavítást. Lassenius arra jutott, hogy az udvariasan kért javításokat gyorsabban elvégzik mint az udvariatlanokat [@lassenius_agile_2015]. Ezt nehéz elképzelni az üzleti világban.

Az üzleti fejlesztésben tapasztalható határidő nyomás OSSD esetén nem jellemző[@christl_free_2008]. Elvben lehetséges, hogy az üzleti fejlesztők a határidő nyomására kiadjanak olyan terméket, amelynek minőségellenőrzése még nem zajlott le vagy nem adott megfelelő eredményt [@di_giacomo_cots_2005]. Könnyen hozzáférhető adatok híján ezt azonban nagyon nehéz bizonyítani. A klasszikus nyílt modell általában képesség alapú kiadási ütemezést követ, de napjainkban egyre több projekt tér át az idő alapú ütemezésre [@teixeira_managing_2019].

A fejlesztésről szóló [-@sec:FS-F-P] fejezetben részletesen tárgyalom az extenzív újrahasznosításokból származó függőségek problémáját. A zárt rendszerek (pl. Microsoft Windows) általában úgy egyszerűsítik a függőségből eredő komplexitást, hogy megtartják a különféle verziókat ami egyrészt rendkívül redundánssá teszi a rendszert, másrészt megnehezíti a frissítést [@orsila_update_2008]. A nyílt módszertanra jellemző függő rendszerben viszont elegendő csak a hibás programkönyvtárat javítani és valamennyi függő rendszerben megszűnik a sérülékenység.


### Terjesztés módja (FS-T-M){#sec:FS-T-M}


A FLOSS termékek -- különösen a szoftverek és programkönytárak -- gyakran bináris formában is hozzáférhetők, de megkülönböztető jegy mindig az elérhető és újrafordítható forráskód. A forráskódban való terjesztés és fordítás átláthatóság szempontjából igen előnyös, ugyanis így garantálható, hogy a bináris valóban abból a forráskódból készült és nem tartalmaz nemkívánatos kiegészítőket. (Valójában ez csak bizonyos szintig igaz, hiszen a fordítókörnyezet, sőt maga a fordítóprogram is tartalmazhat sérülékenységeket vagy kiskapukat, de ettől a lehetőségtől itt most eltekintek.)

Kormányzati nyomásra néhány nagyobb gyártó (NDA[^NDA] kötelezettség mellett) betekinthetővé teszi ugyan a forráskódját [@mike_wheatley_microsoft_2015], de mivel a terjesztett forma bináris, nincs semmi garancia rá, hogy telepített kód valóban abból a forrásból készült. Ez a probléma egyébként FLOSS esetében éppúgy fennáll, amennyiben nem mi fordítottuk le a kódot, a disztribútoron múlik, hogy valóban azt kapjuk-e amit a forráskód állít [@mendez-duron_allocation_2013]. 

Amennyiben egy bináris csomagot auditálunk, sajnos még a forráskód birtokában is nagyon nehéz hitelt érdemlően bizonyítani, hogy a bináris kód az adott forrásból készült. Egyrészt ismernünk kéne a fordításhoz használt valamennyi statikus könyvtár, fordítóprogram és segédprogram verzióját, másrészt tudnunk kéne a használt (optimalizációs és egyéb) fordítási kapcsolókat. Végül, ha minden egyéb azonos, fordítóprogram még akkor is bevihet némi nondeterminizmust a folyamatba időbélyegek, útvonalak vagy fordítási optimalizáció formájában. 

Vannak kezdeményezések amelyek éppen ezt a problémakört igyekeznek orvosolni [@noauthor_reproducible-builds.org_nodate]. Ilyen például a Debian ReproducibleBuilds kezdeményezése, amely -- ha egyszer működik -- a teljes operációs rendszert bináris szinten tanúsíthatóvá teszi [@noauthor_reproduciblebuilds_nodate; @ren_automated_2018].

A bináris tanúsíthatósága fontos kritérium, hiszen a nyílt modell egyik legfőbb előnye -- a forrás átláthatósága és ellenőrizhetősége -- lényegében értelmét veszti ha nem tanúsítható bináris állományokat használunk.

[^NDA]: Non Disclosure Agreement, jogi kötelezettségvállalás az átadott információ bizalmasságának megőrzésére. 


Akár tanúsítható egy bináris akár nem, a bináris sértetlenségének biztosítása nagyon fontos. (Hacsak nem akarjuk elvégezni a tanúsítást minden egyes letöltésnél ami nagyjából értelmetlenné is teszi az egész bináris terjesztési modellt). A bináris letöltés alatti módosítása nagyon is valós támadási vektor [@grobert_software_2009]. Éppen ezért FLOSS binárisok sértetlenségét a legtöbb fejlesztő komolyan veszi és ellenőrző összegeket vagy digitális aláírást biztosítanak valamilyen megbízható(bb) platformon, melyek segítségével a sértetlenség ellenőrizhető. 

PKI[^PKI] híján az ellenőrzőösszeg vagy az aláírás sem nyújt igazán magas szintű biztonságot, de legnagyobb probléma, hogy a felhasználó gyakran egyáltalán nem is ellenőrzi azt. Néhány projektben -- így a Linux disztribúciókban is -- GPG[^GPG] kulcsokkal aláírt ellenőrző-összeg listák biztosítják a csomagok sértetlenségét, amit az operációs rendszer automatikusan ellenőriz. Természetesen a kulcsok is csak addig megbízhatóak, amíg a kulcs tulajdonosa az. Például bizonyos szolgáltatók szoftverkönyvtáraiból származó Android alkalmazások jelentős része tartalmazhat malware-t [@ishii_understanding_2017].

A csomagkezelőkön keresztül történő disztribúció a FLOSS egyik vezető terjesztési formája. Így közvetítik a bináris és forrás állományokat a már említett Linux disztribúciók, de így jutnak el a felhasználóhoz a  népszerű programozási nyelvek komponensei is. A [-@tbl:repos]. táblázat néhány olyan programozási nyelvet mutat be, amelyeknél kifejezetten szorgalmazott és igen széleskörű a csomagkezelő használata.

programnyelv    tároló                           csomagkezelő     audit lehetőség 
------------    ------------                     --------------   ----------------
perl            CPAN                             ppm              cpan-audit
python          Python Package Index (pyPi)      pip              safety
Node-js         npm                              npm,yarn         npm audit
Haskell         Hackage                          cabal            - 
OCaml           OPAM                             opam             -
ruby            RubyGems                         gems             bundle-audit
java            Central Maven                    mvn              maven plugin

:Néhány népszerű programozási nyelv és a hozzá tartozó csomagtárolók {#tbl:repos}

Ezek a csomagkezelők nagy mennyiségű adatot mozgatnak és bonyolult függőségeket kezelnek [@zerouali_empirical_2018], használatuk biztonsági kockázatot jelenthet [@ojamaa_security_2012], s bár minden ilyen rendszer alkalmaz valamiféle sértetlenség védelmet, a csomagkezelő jó támadási vektor lehet, mivel a fejlesztők általában megbíznak benne. 

![Csomagkezelőbe épített biztonsági audit (npm, saját forrás)](ábrák/npm-audit-result.png){#fig:NPM-audit width=70%} 

Fontos megjegyezni, hogy a csomagkezelőkbe felkerült komponensek -- a nyílt forrás világában megszokott módon -- általában nem auditáltak, tehát könnyedén tartalmazhatnak komoly biztonsági sérülékenységet, vagy akár szándékos hátsó kaput is. Minthogy a biztonsági sérülékenység a függőségi fában mélyen eltemetve is megbújhat, a probléma orvoslására néhány csomagkezelő keretrendszer ma már valamilyen biztonsági audit megoldást is kínál. Ezek a csomagkezelőbe integrált vagy integrálható audit megoldások publikusan elérhető (esetleg szolgáltatásként nyújtott) sérülékenység adatbázisok segítségével igyekeznek felhívni a figyelmet a projekt függőségi fájában felfedezhető biztonsági problémákra. A [-@tbl:repos]. táblázat utolsó oszlopában néhány ilyen biztonsági audit megoldást mutatok be, a [-@fig:NPM-audit]. ábrán pedig az npm csomagkezelő biztonsági audit funkciójának kimenete látható a népszerű socket.io egyik komponensének súlyos biztonsági hibája esetén. Sajnos, ma még nem minden nyelvhez létezik kiforrott vizsgálati lehetőség és a megoldások maguk sem egyforma hatékonyságuak. 

A biztonsági audit mellett néhány csomagkezelő a komponens projektek finanszírozási problémáira is megpróbál egységes megoldást találni. Az `npm` csomagkezelő `fund` opciójának kimenete például a következőképpen néz ki egy támogatást igénylő projekt (safe-buffer projekt) esetében:
<!--![Csomagkezelőbe épített támogató keresés.](ábrák/npm-fund-result.png){#fig:NPM-fund} -->

~~~~~~~
$ npm fund safe-buffer@5.2.1
1: github funding available at the following URL: https://github.com/sponsors/feross
2: patreon funding available at the following URL: https://www.patreon.com/feross
3: consulting funding available at the following URL: https://feross.org/support
Run `npm fund [<@scope>/]<pkg> --which=1`, for example, to open the first funding 
URL listed in that package
~~~~~~~

A kimenetben megfigyelhető a közösségi fejlesztési (github) és a személyes támogatáson alapuló finanszírozást nyújtó (patreon) platformok megjelenése, amelyek egyre fontosabb szerepet töltenek be nyílt forrású projektek fenntarthatóságának biztosításában. A megoldás véleményem szerint igen előremutató, mert aktívan felhívja a fejlesztők figyelmét arra, hogy az általunk használt komponensek megfelelő szintű karbantartása nem mágikus folyamat, arra fejlesztői időt vagy megfelelő forrásokat kell biztosítani.

[^PKI]: Public Key Infrastructure
[^GPG]: The GNU Privacy Guard, az egyik népszerű PGP implementáció


### Egyszerű hozzáférhetőség (FS-T-E){#sec:FS-T-E}


A FLOSS természeténél fogva nagyon könnyen elérhető. Nincs szükség vásárlásra, egyezmények elfogadására, nincs demó változat; a beszerzéshez mindössze egy hálózati kapcsolat kell és néhány kattintás. Éppen ez népszerűségének egyik forrása [@kuo_study_2012; @bouras_methodology_2013] és az egyre növekvő mértékű FLOSS komponens felhasználás oka [@wu_mining_2008]. 

A könnyű hozzáférhetőség azonban biztonsági kockázatokat rejthet. 

A nyílt projektek például jóval az elkészülésük előtt hozzáférhetőek lehetnek [@capiluppi_adapting_2007] ami a zárt forrás esetén a legritkább esetben fordul elő. Nem elég tehát kiválasztani a számunkra legmegfelelőbb változatot, annak készültségi állapotáról is meg kell győződni.

A FLOSS komponensek és gyakran a szabad szoftverek beszerzésének legelterjedtebb módja a keresőmotorral való keresés [@chen_survey_2007]. Az ilyen beszerzés komoly kockázatot hordoz, ugyanis a jelentős számú változat és a könnyű bináris készítési lehetőség folytán egyáltalán nem garantált, hogy a beszerző a megfelelő változatot találja meg a megfelelő terjesztőtől. A nyílt közösség marketing tevékenységet ritkán végez (lásd alább) így SEO[^SEO] technikákkal a keresőmotor viszonylag könnyen manipulálható a hibás vagy kiskaput tartalmazó módosított változat a lista elejére juttatható.

[^SEO]: Search Engine Optimalization, weboldalak és azok kapcsolatainak optimalizálása a keresőtalálatban elért helyezések maximalizálása céljából. Egyes változatai (Black SEO) a kereső gyártója által tiltott vagy ellenjavallt módszereket is alkalmaznak.

Az eredeti fejlesztői oldal beazonosítása egyáltalán nem egyértelmű, a GitHub projektek számtalan forkot tartalmaznak, a honlapok pedig nem rendelkeznek egyértelmű azonosító jegyekkel. Az elég széles körben használt és egyértelműen biztonság-kritikus PuTTY SSH kliens program eredeti fejlesztői oldalának címe például https://www.chiark.greenend.org.uk/~sgtatham/putty/. Könnyű elképzelni, hogy a fejlesztési környezetet nem ismerő felhasználó egy putty-dev.com vagy hasonló nevű forrást -- helytelenül -- sokkal hitelesebbnek vélne. Érdemes szem előtt tartani, hogy a klón változatok -- még ha amúgy jószándékúak is -- gyakrabban tartalmaznak súlyos hibákat [@islam_security_2017].

### Lobbitevékenység hiánya (FS-T-L){#sec:FS-T-L}

Több publikáció is eltérésként azonosította a lobbitevékenység hiányát [@ellis_open_2009]. Nem valószínű, hogy a terjesztéssel kapcsolatos de alapvetően gazdasági aspektusnak közvetlen biztonsági hatásai lennének, de a közvetett hatások miatt érdekes lehet foglalkozni vele.

Mint láthattuk a jól megkülönböztethető márkajelzés és cégdizájn hiánya megnehezíti a hiteles változat beazonosítását.
Az gyártók számára nagyon fontos, hogy használják a termékeiket így sokat is költenek rá [@ven_challenges_2008], ezzel szemben a FLOSS használati mértéke általában indifferens az OSSD közösség számára, így még akkor se költenének rá, ha lenne erre fordítható forrásuk. 

Az OSSD kevés figyelmet fordít a marketingtevékenységre. Nincsenek hírlevelek, nincs reklám, a honlapok erősen technikaiak, nehéz beazonosítani a felhasználók számára fontos előnyöket, következésképpen a felfogott érték kevesebb lehet mint zárt forrás esetében [@lavazza_op2a_2012]. A marketing hiánya oda vezet, hogy a felhasználó végül zárt megoldást választja, még ha a FLOSS változat számára sokkal kedvezőbb is lett volna. A szervezetek vezetői magabiztosabbak azokkal a termékekkel kapcsolatban amelyek hatásának jobban ki vannak téve [@ellis_open_2009] függetlenül azok valós értékétől.

### Támogató tevékenység eltérései (FS-T-T){#sec:FS-T-T}

A FLOSS használata ellen felhozott egyik leggyakoribb érv a hivatalos támogatás hiánya [@di_penta_exploratory_2010;@stol_comparative_2011; @li_empirical_2006;bruce_potential_2005;@recker_understanding_2012]. A gyártók szerződésben vállalnak kötelezettséget a frissítések és karbantartás elvégzésére, egy nyílt közösség nem nyújt ilyen garanciát [@raja_all_2013]. Ez természetesen elsősorban a klasszikus nyílt fejlesztésekre vonatkozik, hiszen az irányított nyílt projektek gazdasági szereplőinek gyakran éppen a támogatás nyújtása jelenti a megélhetést (lásd még [-@sec:FS-G-G]).

A klasszikus modell is nyújt valamilyen informális támogatást, ami világméretű, folyamatos és ingyenes [@di_giacomo_cots_2005] ám ez a támogatás sok tekintetben eltér a megszokottól:

* A felhasználónak esetleg sokat kell várnia, nincs szerződésben rögzített időkorlát a javításra [@weikert_model_2013], ha nincs központi frissítési lehetőség, a felhasználó felelős a frissítésekért [@nishimura_analysis_2009]. A javítások támogatással gyorsíthatók, amit adott esetben be is lehet számolni a költségvetésbe [@taibi_openbqr_2007]. A szponzorált nyílt közösségek a szponzorrációval szerzett pénzügyi forrásokat jórészt korrekciós és karbantartási folyamatokra költik hibák javítására kitűzött díjak vagy közvetlen fizetés formájában, ilyenformán az ilyen projektek hibajavító képessége sokkal jobb [@midha_governance_2012].
* a hibakeresés saját erőből is megoldható [@ihara_industry_2014], de szakképzett munkaerőt igényel és bevezet egy újabb kockázati tényezőt, hiszen a nehezen megszerzett szakértő elhagyhatja a céget [@roumani_adopters_2017].
* A segítségnyújtás alternatív csatornákon folyik Q&A portálok (pl. StackExchange), fórumok formájában ami más hozzáállást igényel [@ihara_industry_2014]. Ezek átvehetik a helpdesk szerepét -- gyakran nagyon hatékonyan -- de nem megbízhatóak, nincs garantált megoldás és válaszidő [@hauge_risks_2010;@weikert_model_2013;@almeida_open_2012;@aversano_quality_2013]
* általában lehetőség van támogatást vásárolni a fejlesztésben részt vállaló vagy kifejezetten ilyen szolgáltatást nyújtó cégektől [@lopez_adoption_2015] (pl. kettős licencelés [-@sec:FS-SZ-L]. fejezet))
* A FLOSS támogatottsága nem függ a piaci szereplő piaci sikerétől. Akár sikeres a termék akár nem, amíg fejlesztőket tud vonzani is támogatása biztosított [@capiluppi_adapting_2007]. A FLOSS projekt sem garantálja az üzletfolytonosságot [@ruhe_management_2014] de ha az alapító cég ki is lép a partnerei folytathatják a fejlesztést [@wubishet_understanding_2009]. A 10 évnél idősebb projektek megszűnésének esélye kicsi, ezek általában mindig tovább fejlődnek [@samoladas_survival_2010].
* Nincs képzés. Az oktatás autodidakta módon folyik dokumentációk, fórumok és listák segítségével.
* Nincs szervezett szakemberképzés. Az cégek összetettebb termék esetén odafigyelnek rá, hogy képzések által biztosítsák a szakembereket [@marsan_antecedents_2013]. Az képzett szakembereket nehéz lehet megtalálni, tudásszintjük mérésére nincs formális lehetőség.
* Amennyiben van szolgáltatásként elérhető támogatás, az jobb minőségű lehet a kialakuló verseny miatt. A FLOSS támogatását bárki végezheti, senki nincs monopol helyzetben [@bouras_methodology_2013;@chopra_free_2011].
* Vannak területek (pl. beágyazott termékek piaca) ahol az üzleti támogatás gyenge, a FLOSS szakértők alkalmazása hozhat csak megoldást [@lundell_practitioner_2011].
* A fejlesztők elérhetősége gyakran hiányzik. Ez különösen a biztonsági sérülékenységek bejelentésének esetében jelent problémát, hiszen a sérülékenységet felfedő szakember nem tudja hová forduljon. Vannak szabványosítási kisérletek a probléma orvoslására, de a gyakolatban széles körben egyelőre nem terjedtek el [@carlson_open_2019].

