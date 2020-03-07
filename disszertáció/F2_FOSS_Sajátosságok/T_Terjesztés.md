---
#vim: set et sw=4:
---

Terjesztés és támogatás (FS-T)
---------------

A nyílt modellből származó termékek terjesztése és a termékhez járó támogatás lehet teljesen megszokott vagy attól erősen eltérő. Amennyiben egy piaci szereplő átvállalja a terjesztést és a támogatást, a FLOSS felhasználó szempontból lényegében megkülönböztethetetlen a COTS termékektől. Amennyben viszont nincs ilyen szereplő vagy szolgáltatásait nem kívánjuk igénybe venni, a közösségi nyújtotta támogatás és a termék beszerzési módja jelentősen eltér a dobozos termékekétől.

Az eltérések a nyílt közösség szervezeti felépítéséből (FS-K-Sz), egyedi fejlesztési módszertanából (FS-F-P) és terjesztési gyakorlatából következnek és különösen a komponensek terjesztése esetében jelentkezik élesen. 

A FLOSS könnyen elérhető, általában sűrű frissítési ütemezéssel rendelkezik ugyanakkor a közösség szinte egyáltalán nem fektet energiát a  termék népszerűsítésébe. A alábbiakban ezekkel a jellemzőkkel foglalkozom.


### Frissítések, kiadási ütemezés (FS-T-K){#sec:FS-T-K}

A nyílt modell fejlesztői gyorsabb ki tudnak javítani egy-egy hibát [@erturk_case_2012] ám, ha az OSSD kiadási ciklusai túl sűrűek (FS-F-P) -- előfordulhat, hogy havi 3-4 kiadás is van -- az nem  legkedvezőbb a gazdasági szereplőknek. Bár a hibajavítások sebessége szempontjából előnyös, a frissítés elvégzése idő és munkaigényes [@weikert_model_2013]. 
Ebből kifolyólag előfordulhat, hogy a felhasználó vagy fejlesztő nem tölti le a frissítéseket [@rossi_download_2010]. Néhány FLOSS saját biztonsági frissítési rendszerrel rendelkezik (mint minden operációs rendszer), ám ha egy komponensről van szó akkor lehet, hogy a sérülékenység javításának a kiadás folyamatos követése az egyetlen módja. A probléma fordított irányban is fennállhat. Lehetséges, hogy a laza ütemezés  folytán a FLOSS következő kiadása késik a felhasználó vagy integrátor ezért elkezdi a fejlesztői változatot használni[@michlmayr_release_2007]. A fejlesztői változat azonban többnyire nem garantálja a hibamentes működést, használata nyilvánvalóan nagyobb kockázattal jár. 


A frissítések terjesztési módján kívül a nyílt és zárt modell között nincs hibajavítás terén eltérés, a hibajavítások sűrűsége és minősége a csapattól függ amely csinálja azt és nem a fejlesztési modelltől. Ha ugyanaz a csapat végez nyílt és zárt környezetben munkát a hibajavítás minősége is hasonló lesz [@schryen_comprehensive_2009;@yu_evaluating_2007]. Az OSSD projektek javítási idejében viszont nagy eltérés tapasztalható, egyes projektekben (pl. AbiWord) akár éveken át javítatlanul maradhat hiba, míg mások napok alatt reagálnak [@orsila_update_2008].

A nyílt modell szociális jellegének hozadéka, hogy nem mindegy milyen módon igényeljük a hibajavítást. Lassenius arra jutott, hogy az udvariasan kért javításokat gyorsabban elvégzik mint az udvariatlanokat [@lassenius_agile_2015]. Ezt nehéz elképzelni az üzleti világban.

Az üzleti fejlesztésben tapasztalható határidő nyomás OSSD esetén nem jellemző[@christl_free_2008]. Elvben lehetséges, hogy az üzleti fejlesztők a határidő nyomására kiadjanak olyan terméket, amelynek minőségellenőrzése még nem zajlott le vagy nem adott megfelelő eredményt [@di_giacomo_cots_2005]. Könnyen hozzáférhető adatok híján ezt azonban nagyon nehéz bizonyítani.

A fejlesztésről szóló fejezetben (FS-F-P) részletesen tárgyalom az extenzív újrahasznosításokból származó függőségek problémáját. A zárt rendszerek (pl. Microsoft Windows) általában úgy egyszerűsítik a függőségből eredő komplexitást, hogy megtartják a különféle verziókat ami egyrészt rendkívül redundánssá teszi a rendszert, másrészt megnehezíti a frissítést[@orsila_update_2008]. A nyílt módszertanra jellemző függő rendszerben viszont elegendő csak a hibás programkönyvtárat javítani és valamennyi függő rendszerben megszűnik a sérülékenység.


### Terjesztés módja (FS-T-M){#sec:FS-T-M}


A FLOSS termékek -- különösen a szoftverek és programkönytárak -- gyakran bináris formában is hozzáférhetők, de megkülönböztető jegy mindig az elérhető és újrafordítható forráskód. A forráskódban való terjesztés és fordítás átláthatóság szempontjából igen előnyös, ugyanis így garantálható, hogy a bináris valóban abból a forráskódból készült és nem tartalmaz nemkívánatos kiegészítőket. (Valójában ez csak bizonyos szintig igaz, hiszen a fordítókörnyezet, sőt maga a fordítóprogram is tartalmazhat sérülékenységeket vagy kiskapukat, de ettől a lehetőségtől itt most eltekintek.)

Kormányzati nyomásra néhány nagyobb gyártó (NDA[^NDA] kötelezettség mellett) betekinthetővé teszi ugyan a forráskódját [@mike_wheatley_microsoft_2015], de mivel a terjesztett forma bináris, nincs semmi garancia rá, hogy telepített kód valóban abból a forrásból készült. Ez a probléma egyébként FLOSS esetében éppúgy fennáll, amennyiben nem mi fordítottuk le a kódot, a disztribútoron múlik, hogy valóban azt kapjuk-e amit a forráskód állít [@mendez-duron_allocation_2013]. 

Amennyiben egy bináris csomagot auditálunk, sajnos még a forráskód birtokában is nagyon nehéz hitelt érdemlően bizonyítani, hogy a bináris kód az adott forrásból készült. Egyrészt ismernünk kéne a fordításhoz használt valamennyi statikus könyvtár, fordítóprogram és segédprogram verzióját, másrészt tudnunk kéne a használt (optimalizációs és egyéb) fordítási kapcsolókat. Végül, ha minden egyéb azonos, fordítóprogram még akkor is bevihet némi nondeterminizmust a folyamatba időbélyegek, útvonalak vagy fordítási optimalizáció formájában. 

Vannak kezdeményezések amelyek éppen ezt a problémakört igyekeznek orvosolni[@noauthor_reproducible-builds.org_nodate]. Ilyen például a Debian ReproducibleBuilds kezdeményezése, amely -- ha egyszer működik -- a teljes operációs rendszert bináris szinten tanúsíthatóvá teszi [@noauthor_reproduciblebuilds_nodate].

A bináris tanúsíthatósága fontos kritérium, hiszen a nyílt modell egyik legfőbb előnye -- a forrás átláthatósága és ellenőrizhetősége -- lényegében értelmét veszti ha nem tanúsítható bináris állományokat használunk.

[^NDA]: Non Disclosure Agreement, jogi kötelezettségvállalás az átadott információ bizalmasságának megőrzésére. 


Akár tanúsítható egy bináris akár nem, a bináris sértetlenségének biztosítása nagyon fontos. (Hacsak nem akarjuk elvégezni a tanúsítást minden egyes letöltésnél ami nagyjából értelmetlenné is teszi az egész bináris terjesztési modellt). A bináris letöltés alatti módosítása nagyon is valós támadási vektor [@grobert_software_2009]. Éppen ezért FLOSS binárisok sértetlenségét a legtöbb fejlesztő komolyan veszi és ellenőrző összegeket vagy digitális aláírást biztosítanak valamilyen megbízható(bb) platformon, melyek segítségével a sértetlenség ellenőrizhető. 

PKI[^PKI] híján az ellenőrzőösszeg vagy az aláírás sem nyújt igazán magas szintű biztonságot, de legnagyobb probléma, hogy a felhasználó gyakran egyáltalán nem is ellenőrzi azt. Néhány projektben -- így a Linux disztribúciókban is -- GPG[^GPG] kulcsokkal aláírt ellenőrző-összeg listák biztosítják a csomagok sértetlenségét, amit az operációs rendszer automatikusan ellenőriz.

A csomagkezelőkön keresztül történő disztribúció a FLOSS egyik vezető terjesztési formája. Így közvetítik a bináris és forrás állományokat a már említett Linux disztribúciók, de így jutnak el a felhasználóhoz a  népszerű programozási nyelvek komponensei is. A [@tbl:repos] néhány olyan programozási nyelvet mutat be, amelyeknél kifejezetten szorgalmazott és igen széleskörű a csomagkezelő használata.

programnyelv    tároló                                  csomagkezelő 
------------    ------------                            --------------
perl            CPAN                                    ppm
python          Python Package Index (pyPi)             pip
Node-js         npm                                     npm
Haskell         Hackage                                 cabal
OCaml           OPAM                                    opam
ruby            RubyGems                                gems
java            Central Maven                           mvn

:Néhány népszerű programozási nyelv és a hozzá tartozó csomagtárolók {#tbl:repos}

Ezek a csomagkezelők nagy mennyiségű adatot mozgatnak és bonyolult függőségeket kezelnek[@zerouali_empirical_2018], használatuk biztonsági kockázatot jelenthet [@ojamaa_security_2012], s bár minden ilyen rendszer alkalmaz valamiféle sértetlenség védelmet, a csomagkezelő jó támadási vektor lehet, mivel a fejlesztők általában megbíznak benne. 

[^PKI]: Public Key Infrastructure
[^GPG]: The GNU Privacy Guard, az egyik népszerű PGP implementáció


### Egyszerű hozzáférhetőség (FS-T-E){#sec:FS-T-E}


A FLOSS természeténél fogva nagyon könnyen elérhető. Nincs szükség vásárlásra, egyezmények elfogadására, nincs demó változat; a beszerzéshez mindössze egy hálózati kapcsolat kell és néhány kattintás. Éppen ez népszerűségének egyik forrása[@kuo_study_2012; @bouras_methodology_2013] és az egyre növekvő mértékű FLOSS komponens felhasználás oka[@wu_mining_2008]. 

A könnyű hozzáférhetőség azonban biztonsági kockázatokat rejthet. 

A nyílt projektek például jóval az elkészülésük előtt hozzáférhetőek lehetnek[@capiluppi_adapting_2007] ami a zárt forrás esetén a legritkább esetben fordul elő. Nem elég tehát kiválasztani a számunkra legmegfelelőbb változatot, annak készültségi állapotáról is meg kell győződni.

A FLOSS komponensek és gyakran a szabad szoftverek beszerzésének legelterjedtebb módja a keresőmotorral való keresés [@chen_survey_2007]. Az ilyen beszerzés komoly kockázatot hordoz, ugyanis a jelentős számú változat és a könnyű bináris készítési lehetőség folytán egyáltalán nem garantált, hogy a beszerző a megfelelő változatot találja meg a megfelelő terjesztőtől. A nyílt közösség marketing tevékenységet ritkán végez (FS-T-L) így SEO[^SEO] technikákkal a keresőmotor viszonylag könnyen manipulálható a hibás vagy kiskaput tartalmazó módosított változat a lista elejére juttatható.

[^SEO]: Search Engine Optimalization, weboldalak és azok kapcsolatainak optimalizálása a keresőtalálatban elért helyezések maximalizálása céljából. Egyes változatai (Black SEO) a kereső gyártója által tiltott vagy ellenjavalt módszereket is alkalmaznak.

Az eredeti fejlesztői oldal beazonosítása egyáltalán nem egyértelmű, a GitHub projektek számtalan forkot tartalmaznak, a honlapok pedig nem rendelkeznek egyértelmű azonosító jegyekkel. Az elég széles körben használt és egyértelműen biztonság-kritikus PuTTY SSH kliens program eredeti fejlesztői oldalának címe például https://www.chiark.greenend.org.uk/~sgtatham/putty/. Könnyű elképzelni, hogy a fejlesztési környezetet nem ismerő felhasználó egy putty-dev.com vagy hasonló nevű forrást -- helytelenül -- sokkal hitelesebbnek vélne.

### Lobbitevékenység hiánya (FS-T-L){#sec:FS-T-L}

Több publikáció is eltérésként azonosította a lobbitevékenység hiányát [@ellis_open_2009]. Nem valószínű, hogy a terjesztéssel kapcsolatos de alapvetően gazdasági aspektusnak közvetlen biztonsági hatásai lennének, de a közvetett hatások miatt érdekes lehet foglalkozni vele.

Mint láthattuk a jól megkülönböztethető márkajelzés és cégdizájn hiánya megnehezíti a hiteles változat beazonosítását.
Az gyártók számára nagyon fontos, hogy használják a termékeiket így sokat is költenek rá[@ven_challenges_2008], ezzel szemben a FLOSS használati mértéke általában indifferens az OSSD közösség számára, így még akkor se költenének rá, ha lenne erre fordítható forrásuk. 

Az OSSD kevés figyelmet fordít a marketingtevékenységre. Nincsenek hírlevelek, nincs reklám, a honlapok erősen technikaiak, nehéz beazonosítani a felhasználók számára fontos előnyöket, következésképpen a felfogott érték kevesebb lehet mint zárt forrás esetében [@lavazza_op2a_2012]. A marketing hiánya oda vezet, hogy a felhasználó végül zárt megoldást választja, még ha a FLOSS változat számára sokkal kedvezőbb is lett volna. A szervezetek vezetői magabiztosabbak azokkal a termékekkel kapcsolatban amelyek hatásának jobban ki vannak téve [@ellis_open_2009] függetlenül azok valós értékétől.

### Támogató tevékenység eltérései (FS-T-T){#sec:FS-T-T}

A FLOSS használata ellen felhozott egyik leggyakoribb érv a hivatalos támogatás hiánya[@di_penta_exploratory_2010;@stol_comparative_2011; @li_empirical_2006;bruce_potential_2005;@recker_understanding_2012]. A gyártók szerződésben vállalnak kötelezettséget a frissítések és karbantartás elvégzésére, egy nyílt közösség nem nyújt ilyen garanciát [@raja_all_2013]. Ez természetesen elsősorban a klasszikus nyílt fejlesztésekre vonatkozik, hiszen az irányított nyílt projektek gazdasági szereplőinek gyakran éppen a támogatás nyújtása jelenti a megélhetést (FS-G-G).

A klasszikus modell is nyújt valamilyen informális támogatást, ami világméretű, folyamatos és ingyenes [@di_giacomo_cots_2005] ám ez a támogatás sok tekintetben eltér a megszokottól:

* A felhasználónak esetleg sokat kell várnia, nincs szerződésben rögzített időkorlát a javításra [@weikert_model_2013], ha nincs központi frissítési lehetőség, a felhasználó felelős a frissítésekért [@nishimura_analysis_2009]. A javítások támogatással gyorsíthatók, amit adott esetben be is lehet számolni a költségvetésbe [@taibi_openbqr_2007]. A szponzorált nyílt közösségek a szponzorrációval szerzett pénzügyi forrásokat jórészt korrekciós és karbantartási folyamatokra költik hibák javítására kitűzött díjak vagy közvetlen fizetés formájában, ilyenformán az ilyen projektek hibajavító képessége sokkal jobb[@midha_governance_2012].
* a hibakeresés saját erőből is megoldható [@ihara_industry_2014], de szakképzett munkaerőt igényel és bevezet egy újabb kockázati tényezőt, hiszen a nehezen megszerzett szakértő elhagyhatja a céget [@roumani_adopters_2017].
* A segítségnyújtás alternatív csatornákon folyik Q&A portálok (pl. StackExchange), fórumok formájában ami más hozzáállást igényel[@ihara_industry_2014]. Ezek átvehetik a helpdesk szerepét -- gyakran nagyon hatékonyan -- de nem megbízhatóak, nincs garantált megoldás és válaszidő [@hauge_risks_2010;@weikert_model_2013;@almeida_open_2012;@aversano_quality_2013]
* általában lehetőség van támogatást vásárolni a fejlesztésben részt vállaló vagy kifejezetten ilyen szolgáltatást nyújtó cégektől [@lopez_adoption_2015] (pl. kettős licencelés (FS-SZ-L))o
* A FLOSS támogatottsága nem függ a piaci szereplő piaci sikerétől. Akár sikeres a termék akár nem, amíg fejlesztőket tud vonzani is támogatása biztosított[@capiluppi_adapting_2007]. A FLOSS projekt sem garantálja az üzletfolytonosságot[@ruhe_management_2014] de ha az alapító cég ki is lép a partnerei folytathatják a fejlesztést[@wubishet_understanding_2009]. A 10 évnél idősebb projektek megszűnésének esélye kicsi, ezek általában mindig tovább fejlődnek [@samoladas_survival_2010].
* Nincs képzés. Az oktatás autodidakta módon folyik dokumentációk, fórumok és listák segítségével.
* Nincs szervezett szakemberképzés. Az cégek összetettebb termék esetén odafigyelnek rá, hogy képzések által biztosítsák a szakembereket[@marsan_antecedents_2013]. Az képzett szakembereket nehéz lehet megtalálni, tudásszintjük mérésére nincs formális lehetőség.
* ha van szolgáltatásként elérhető támogatás, az jobb minőségű lehet a kialakuló verseny miatt. A FLOSS támogatását bárki végezheti, senki nincs monopol helyzetben[@bouras_methodology_2013;@chopra_free_2011].
* vannak területek (pl. beágyazott termékek piaca) ahol az üzleti támogatás gyenge, a FLOSS szakértők alkalmazása hozhat csak megoldást [@lundell_practitioner_2011].


### Összefoglalás

Amennyiben nem áll rendelkezésre üzleti támogatást vagy nem kívánjuk azt igénybe venni a nyílt modell terjesztési metódusai egyértelmű eltéréseket mutatnak, amelyek a biztonságra is hatással lehetnek. 

A hiteles forrás és változat beazonosítása nem egyértelmű, lobbitevékenység és jogi támogatás hiányában a magukat hitelesnek mutató szereplők elleni fellépés gyenge vagy nem is létezik. A közösséget nem ismerő felhasználó hibás vagy félkész terméket tölthet le, illetve előfordulhat, hogy azonosítatlan forrásból más -- esetleg kiskaput tartalmazó -- változatot szereze be.

A közösségi támogatás megbízhatatlan, használata időben nehezen tervezhető, szociális kézségeket követel, ugyanakkor a piaci siker egyáltalán nem befolyásolja a támogatás minőségét.
Amennyiben van piaci alapon elérhető támogatás, a támogatást végző cégeket nem kötik engedélyek így a monopol helyzet hiánya és a folyamatos verseny folytán a szolgáltatás általában jobb minőségű.

A bináris alakban terjesztett termék vagy komponens sértetlensége elvben a forrás alapján tanúsítható, gyakorlatban viszont ez egyelőre nehézségekbe ütközik így a csomagolást végző fél iránti bizalom továbbra is követelmény. Mindamellett akár forrásról, akár binárisról legyen szó, a sértetlenséget biztosító kriptográfiai ellenőrzőösszegek vizsgálatát feltétlenül el kell végezni. 

A belső támogatás alapját képező szervezett képzés gyakran hiányzik, így a megfelelő tudással rendelkező szakemberek felkutatása nehézségekbe ütközik. A formális képzési keretek (oklevél, tanusítvány) hiányában a szaktudás megléte is csak legfeljebb felvételi tesztekkel ellenőrizhető.


