
Szabályozás, megfelelőség (FS-Sz) {#sec:FS-SZ}
-------------------

Az alfejezetben a FLOSS szabályozással kapcsolatos kérdéseit tárgyalom. Szabályozás alatt itt az angol "compliance" kifejezésnek megfelelő fogalmat értem, tehát a külső és belső szabályoknak, irányelveknek, házirendeknek és jogszabályoknak való komplex megfelelést. 

A megfelelőségi keretrendszerek (COBIT) illetve szabványok (NIST, ISO27000) korlátozott használhatósága a minősítő rendszerekkel rokon problémakör, amellyel a Felhasználás fejezet alatt foglalkozom ([-@sec:FS-F-M]. fejezet).

### Belső szabályozás (FS-SZ-B){#sec:FS-SZ-B}

Talán a mikrovállalatokat kivéve minden szervezetnek, legyen az kicsi vagy nagy, szüksége van valamilyen belső IT szabályozásra részben a jogi elvárások teljesítése végett, részben mert csak így biztosítható az működtetéssel járó kockázat elfogadható szintre csökkentése és az elvárt biztonsági szint fenntartása. Különösen fontos ez a Létfontosságú Információs Rendszerelemek területén, ahol jogszabályban rögzített szigorú technológiai és szervezési elvárásoknak kell megfelelni.

Ezek a belső szabályzatok gyakran figyelmen kívül hagyják a FLOSS egyedi jellegzetességeit, egyáltalán nem, vagy csak ritkán szabályozzák részletesen a szabad szoftverekkel és nyílt forrású komponensekkel történő kapcsolattartás módszereit, ami biztonsági és üzleti kockázatot jelenthet. 

Minthogy a FLOSS tekintetében jogszabályok nem írnak elő kötelező belső szabályozást, a definiálás során döntő szempont a menedzsment tudatosságának kérdése [@damiani_qualitative_2015]. Sajnálatos módon kevés a FLOSS orientált szabvány, a komponensekkel kapcsolatos nagy mennyiségű, részleges, diverz és szubjektív információ nem igazán segíti elő a tudatos döntést [@ayala_challenges_2009].

Kemp szerint [@kemp_open_2010] a nyílt forrású szabályozás célja -- más IP jellegű szabályozáshoz hasonlóan -- a felesleges viták elkerülése, vásárlói elégedettség biztosítása és a források megfelelő menedzselése. A FLOSS szabályozás öt területet kell lefedjen:

1. Beszerzés: milyen FLOSS rendszereket használ a szervezet;
2. Megbízható források: ismerni kell honnan származik a FLOSS;
3. Követés: ismerni kell, mit csinál, hol használjuk és hol hasznosítjuk újra;
4. Szerepek és felelősség: tudni kell kinek mi a szerepe és miért felelős a FLOSS kapcsán; és
5. Licenc megfelelőség: ismerni kell, hogy a szervezet megfelel-e az OSS licencekben megjelenő kötelezettségeknek.

Ideális esetben a szabályzat kitér a:

* személyi kérdésekre, egyértelműen megfogalmazva az egyes résztvevők szerepköreit és céljait ;
* felállít egy követendő globális stratégiát, ide értve az üzleti, kockázatkezelési és IP stratégiákat ; 
* foglalkozik a házirend kérdésével, amelynek tömörnek, egyértelműnek esemény orientáltnak kell lennie, kritériumokat és döntési pontokat kell megfogalmaznia az FLOSS felhasználása terén, és egyértelművé kell tenni a gyűjtendő és követendő információkat;
* definiálja a folyamatokat, ahol meg kell fogalmazni a más területek szabályozásával kapcsolatos függőségeket, kitér a projekt-tervezéssel, kivitelezéssel és utókövetéssel kapcsolatos kérdésekre, illetve érdemes megfontolni a FLOSS közösség bevonását és megnyerését célzó alfolyamatok létrehozását is;
* foglalkozik a sérülékenységek kezelésével.


Sajnálatos módon ezeket az elveket kevés szervezet követi a gyakorlatban. A legtöbb esetben ad-hoc módon hoznak döntéseket, pragmatikus, használat orientált módon amely nem vesz figyelembe sem költséghatékonyságot sem más magasabb rendű stratégiát [@shaikh_framing_2011].


### Összetett licencelés (FS-SZ-L){#sec:FS-SZ-L}

A FLOSS licenckörnyezete meglehetősen összetett. Számtalan szabad licenctípus létezik, amely több vagy kevesebb korlátozást tartalmaz illetve eltérő jogokkal ruházza fel a felhasználót. A szervezetek számára legvonzóbb ilyen jog a jogátruházás lehetősége, amely lehetővé teszi, hogy az üzleti licencek hagyományos EULA[^EULA] szakaszával ellentétben a terméket ne csak használhassuk hanem lemásolhassuk és akár el is adhassuk [@sim_intellectual_2013; @pykalainen_alleviating_2009].   Az OSI[^OSI] jelenleg (2018 augusztusa) 83 OSS licencet listáz, amely segítséget nyújthat a különféle licencek közötti eligazodásban [@ihara_industry_2014]. A licenceket két alapvető csoportra, a megengedő (Permissive) és kötött (Restrictive) licenctípusok körére szokás bontani. Mindkét licenccsoport tagjai tartalmazzák a nyílt szoftverekre jellemző alapvető jogokat -- a forrás elérhetőségét, szabad módosíthatóságát és a jogátruházás képességét -- a korlátozások tekintetében viszont más feltételeket fogalmaznak meg. Leegyszerűsítve a megengedő licencek nem tartalmaznak korlátozásokat a komponenst felhasználó termék licencelésére vonatkozóan (pl. BSD), míg a kötött licencek elvárják, hogy a származtatott termék maga is kompatibilis licenccel rendelkezzen (pl. GPL) ami alól mentességet jelenthet, ha a származtatott termék nem az eredeti termék feladatkörét látja el, pusztán annak funkcionalitását használja (pl. LGPL).

[^EULA]: End User License Agreement, magyarul Végfelhasználói licencszerződés, vagy másképp végfelhasználói engedély.

A kötött licenceket "vírus szerűen terjedő" tulajdonsága miatt sokan bírálják [@bruce_potential_2005; @bahn_liability_2006], támogatói szerint viszont éppen ezen tulajdonsága nyújtja a társadalom számára a legnagyobb előnyöket. A 2001-es évig a kötött licencekkel bíró termékek előretörése figyelhető meg, onnantól viszont -- feltehetően a piaci viszonyok és a vállalati szereplők belépése következtében -- már a megengedő licenctipus aránya növekszik. [@hofmann_dual_2013]

A GPL jellegű, kötött licenc előnye, hogy általa egyetlen piaci szereplő sem veheti magához a kódot, hogy aztán saját üzleti változatot készítsen belőle. Például ha a Linux kernelhez egy vállalat saját üzleti modelljét támogatandó fejleszt valamit, az innováció előnyeit a teljes közösség élvezheti, ami gyorsabb fejlődést és magasabb termékminőséget eredményez mint amit egyetlen szereplő önmagában elérhetne [@noll_what_2009].
A kötött licencek egyik hátránya viszont, hogy bennük foglalt "royalty-free" kitétel miatt, nem használhatnak bizonyos szabadalmakat [@valimaki_empirical_2005].

A kialakult helyzetet árnyalja, hogy sok cég kettős licencelést alkalmaz, azaz termékük elérhető valamilyen nyílt forrású licenctípus alatt, ugyanakkor üzleti licencet is kínálnak azok számára akik a nyílt forrású licenc kötöttségeit nem tudják vagy akarják vállalni. További problémákat vet fel, ha az integrátor előre fizetett (upfront) licenc helyett időszakos (subscription-based) konstrukciót vesz igénybe. Ha ugyanis az integrátor saját termékében továbbértékesíti a FLOSS komponenst és később megszünteti az előfizetését, ügyfelei is elvesztik a jogot a komponens használatára. Ez a probléma a örökös (perpetual) licencelési konstrukcióval orvosolható, aminek meglétét érdemes ellenőrizni. [@weikert_model_2013]

Az állami szintű jogi szabályozás nem volt mindig teljesen tisztázott. Sokszor felmerült -- bizonyos esetekben még ma is felmerül -- a kérdés, hogy a jogalkotók engedélyezik-e vagy tiltják a FLOSS rendszerek integrációját, és ha igen milyen szinten [@marsan_antecedents_2013].  Végül a kormányzati szférában megjelenő egyre nagyobb arányú FLOSS termék felvetette egy európai uniós nyílt forrású licenc szükségességét, amelynek első verziója 2007 januárjában meg is jelent EUPL[^EUPL]
 néven. Jelenleg a a 2017 májusában publikált EUPL v1.2-es verzió érvényes, amely ugyanazon év júliusában az OSI tanúsítást is megszerezte.

[^EUPL]: European Free/Open Source Software licenc. https://joinup.ec.europa.eu/collection/eupl/introduction-eupl-licence#section-4
[^OSI]: Open Source Initiative, nyílt forrású licencek OSD (Open Source Definition) kompatibilitásának tanúsítást végző szervezet. https://opensource.org/


Gyakran felhozott érv, hogy FLOSS használata esetén nem tisztázott vagy nincs felelőség vállalás [@hauge_risks_2010]. A nyílt licencekben szereplő "public" szó (lásd. GPL) hozzájárulhatott a téves elképzelés kialakulásához, miszerint az ilyen szoftver a "köz" tulajdona, azaz senkié, magyarán nincs senki, akit felelősségre lehetne vonni a hibás vagy kárt okozó működés esetén. E félreértés folytán a felelősségvállalás hiánya gyakran szerepel az ellenzők érvei közt. A helyzet az, hogy az üzleti gyártók a legritkább esetben vállalnak felelősséget a termékük által okozott kárért, azaz a felelősség kérdése ez esetben is ugyanúgy nyitott, másrészt a nyílt projektekben szerepet vállalók éppúgy felelősségre vonhatóak a szándékos károkozásért mint bárki más, legfeljebb azonosításuk lehet nehezebb (ami nem feltétlen igaz, lásd [-@sec:FS-F-M]) [@laszlo_nyilt_2009]. A magas biztonsági követelményű rendszerek esetében -- ahol emberéletek foroghatnak kockán -- egyébként sem a felelősök azonosíthatóságán, hanem a biztonsági esemény elkerülésén kell legyen a hangsúly.
Nem árt tudni azt sem, hogy amennyiben az integrátor vagy fejlesztő FLOSS komponenseket használ fel -- márpedig ez a hatás egyre erősödik -- nem tehető felelőssé a FLOSS termék által okozott károkért [@weikert_model_2013].


FLOSS termékfelhasználás során az összetett licencelés problémáinak kezelése kimerül a licencek nyilvántartásának szükségességében. Ha a termékeket nem módosítjuk és komponensként sem használjuk fel -- azaz "dobozos" termékként használjuk fel -- nincs szükségünk a licencekben biztosított jogok nagy részére, elegendő megbizonyosodni róla, hogy a szervezet megfelel-e az ott leírt követelményeknek. Sajnos néha még ez sem teljesen magától értetődő, amint azt Jaeger a nem egyértelműen megfogalmazott nyílt licencek (pl. CPOL) kapcsán megjegyzi [@jaeger_open_2013]. Az egyszerű felhasználás azonban nem biztosítja a módosítás és integrálhatóság egyedi előnyeit, amelyek segíthetnek növelni a reakciókészségét, gazdaságosságát, rugalmasságát és a rendszer általános biztonsági szintjét, ezért a dobozos termékként való felhasználás gyakran nem elegendő. 

A belső komponensfelhasználás során a licenc, copyright és IP jogok együtt határozzák meg a felhasználhatóság kritériumait, ez pedig komoly hatással lehet a rendszer szerkezetére [@di_penta_exploratory_2010; @german_empirical_2009]. Következésképpen belső fejlesztések esetén a licencek kezelésének szabályozása nem megkerülhető. Az nyílt licencű termék felhasználása közvetett veszélyeket hordoz. A megkérdezett piaci szereplők általában az üzletfolytonosság kockázatát, a FLOSS közösség feletti irányítás képességének hiányát, a licencek összetettségét, értelmezési nehézségeket szokták említeni [@luoma_scenarios_2011].
Nem elegendő tehát az integrálandó komponens API felületét, minőségét és programozási nyelvét vizsgálni, mindig figyelembe kell venni a licencelés kérdését is [@chen_survey_2007; @harutyunyan_getting_2019].

A FLOSS rendszerek összetett függőségeinek következményeként (lásd [-@sec:FS-F-K]. fejezet) gyakran előfordul, hogy egyetlen kívánt komponens számos rejtett licenckötelmet tartalmaz. Ezek a rejtett licencek lehetnek más típusú esetleg kötöttebb nyílt forrású licencek, de zárt rendszerek licenckötelmei vagy IP jogai [@scacchi_understanding_2012] amelyek ellentmondásba kerülhetnek egymással [@kuwata_study_2014; @gangadharan_free_2012; @van_der_linden_open_2013].  Például a Debian projekt csomagjainak közel 30%-ban nem lehetett semmilyen licencet automatikusan azonosítani [@caneill_debsources_2017] és a csomagok egy része inkonzisztens licencelést[^ilic] alkalmaz [@wu_how_2017; @wu_analysis_2017]. Az összetett licencrendszer nyilvántartása, a változások követése sőt a licencek puszta felderítése is komoly kihívást jelenthet [@schuenck_x-arm_2006]. Nem meglepő, hogy a projektek jelentős részében jelentkezik valamilyen szintű jogsértés (Kapitsaki eredményei szerint az esetek 60%-ában)[@kapitsaki_open_2014]. A nyílt forrású licencek függőségeinek összetettségét a [-@fig:licencDeps]. ábra demonstrálja.

![Nyílt forrású licencek kompatibilitási függőségei. (Saját szerkesztés, Kapitsaki nyomán [@kapitsaki_open_2014]](ábrák/FLOSS-licencek.pdf){#fig:licencDeps width=100%}

A licencváltozás igazoltan élő jelenség. Di Penta népszerű FLOSS rendszereket célzó statisztikai elemzése során arra jutott, hogy a szoftverek felében az egyes fájlrevíziók során 60%-ban történt valamilyen változás, míg a másik fél esetében ez az érték 20-40% körül mozgott [@di_penta_exploratory_2010]. Jelenleg a licencváltások során a nyíltabb licencek felé történő elmozdulás figyelhető meg [@vendome_license_2017].  

A szükséges de nem éppen egyszerű licenckezelési feladatot tovább nehezítik az esetleges licenchibák, a hibásan másolt vagy hiányzó licencek.

[^ilic]: A licencelés inkonzisztens lehet, ha a felhasznált (upstream) komponensek licencelése nem kompatibilis a downstream projekt licencelésével. 

A licencekkel kapcsolatos (felhasználói) igények és feladatok vázlatosan az alábbiak:

* A rendszerben használt modulok azonosítása (forrásfájlok, fordítási kimenetek és könyvtárak);
* licencek azonosítása az állományokban;
* programmodulok függőségeinek feltárása;
* licenc kompatibilitási szabályok meghatározása;
* licencelési problémák azonosítása;
* licenc analízis prezentálása és vizualizációja. 

Amennyiben nincs megfelelő erőforrásunk a licencelési feladatok belső kezelésére, a problémát licenckezelő rendszerek alkalmazásával orvosolhatjuk. Ilyen rendszer például az ODRL [@gangadharan_managing_2012], LIDESC, OSLC vagy a ASLA-FLOSSology, amelyek automatikus licencanalízist, függőségelemző szolgáltatásokat nyújtanak [@tuunanen_automated_2009; @tuunanen_retrieving_2006]. Ezek a rendszerek egyszerű regular expression technikával (pl. OSLC) vagy a hagyományosan protein illesztéshez használt Binary Symbolic Alignment Matrix módszerével (FLOSSology) [@german_sentence-matching_2010] azonosítják be a licenceket. 

Létfontosságú Információs Rendszerelemek esetén ritkább, de nem kizárható az akvizíció esete. Ilyen esetben a szervezetnek a beszerzésre kerülő teljes IT struktúrát jogi megfelelőség szempontjából át kell vizsgálnia [@bahn_liability_2006; @kemp_current_2009] ami jelentős  többletterhet jelenthet az összetett licencelési struktúrát és rejtett buktatókat figyelembe véve [@llanos_differences_2012; @almeida_investigating_2018]. 

A felmérések tanúsága szerint a fejlesztők számára mind a mai napig (2018) nem világos melyik licenctípust kellene választaniuk az általuk favorizált célok elérése érdekében [@almeida_investigating_2018]. Pedig ez éppolyan fontos mind a nyílt komponenseket felhasználó zárt fejlesztések esetén, mind a nyílt közösség előnyeinek kihasználását célzó tevékenység során. A szükségtelen korlátozásokat tartalmazó licenc egyaránt elriaszthatja a potenciális fejlesztőket és felhasználókat [@hauge_providing_2009; @santos_attraction_2013]. Ilyen esetekben általában az egyszerű, jól ismert licencmodellek választása vezet eredményre. Kimutatható, hogy a kevésbé kötött licencformák előnyösebbek ha a származtatott szoftver fejlesztéséhez komoly erőforrások szükségesek, míg az szigorúbb megkötéseket tartalmazó (copyleft) licencek az uralkodók ha az eredeti FLOSS és a származtatott szoftver létrehozása kisebb erőfeszítést igényelt [@sen_open_2012]. A kötött licencek választása úgyszintén hátrányos ha a projekt a fejlesztőket célozza, míg előnyös, ha a felhasználókat vagy adminisztrátorokat [@subramaniam_determinants_2009]. A helyes licencválasztás tehát erős hatással lehet a projekt végső sikerességére. 

Ez a folyamat is kétoldalú, ugyanis a közösség által felajánlott módosítások jogi státusza is hordozhat kockázatot, hiszen a módosítás szellemi termék, ügyelni kell tehát a hozzájárulások elfogadását megelőző formális szerződés meglétére [@damiani_open_2015]. Itt nem kell bonyolult jogi procedúrára gondolni, elegendő a fejlesztő rövid állásfoglalása, amely helyére teszi az általa készített szellemi termék jogi státuszát. 

Végezetül, a licenceléssel kapcsolatos érdekes elméleti felvetést vázol Dierker. E szerint ha a nyílt forrású licencek explicite megtiltanák a katonai felhasználást, akkor a katonai és polgári rendszerek kényszerűen elválnának egymástól, következésképpen a célzott katonai műveletek kisebb sérülést okoznának a polgári információs rendszerekben. Mint kiderült, bizonyos csomagkezelő rendszerek esetében néhány központi jelentőségű csomag licencváltása komoly, lavinaszerű változásokat idézne elő, az felvetés tehát egyáltalán nem alaptalan [@dierker_can_2018].

### Módosításhoz való jog (FS-SZ-M){#sec:FS-SZ-M}

A licenceléshez kapcsolódó, azaz a {-@sec:FSF_PONTOK} fejezetben bemutatott szabad licencből következő tulajdonság a módosításhoz való jog. Nyílt forrás esetében a forráskód elérhető, azaz az egyszerű módosítás lehetősége technikailag eleve adott, ez a kitétel ugyanakkor szabályozási szempontból is lehetővé teszi a szoftver tetszőleges módosítását. A módosítás lehetősége olyan új kapukat nyit meg amelyek zárt forrás esetében elképzelhetetlenek lennének: kikapcsolhatók bizonyos nem kívánt funkciók, komponensek vagy köztes illesztőréteg nélkül egyedi rendszerekhez kapcsolható a szoftver. A módosított szoftver vagy kompones újra felhasználható, terjeszthető és más termékekbe beépíthető, amennyiben a licencben meghatározott kritériumok betartásra kerülnek.


### Tanúsítványok hiánya (FS-SZ-T){#sec:FS-SZ-T}


A nyílt forrás lehetőségeinek kiaknázását erősen korlátozza, hogy a közösségi fejlesztési metódusból eredően nincs lehetőség az üzleti megoldások esetében szokásos tanúsítási eljárások (például Common Criteria) elvégzésére. Bár vannak ilyen irányú kutatások [@kalliamvakou_certification_2016; @cotroneo_prediction_2016] a nyílt forrás lehetséges tanúsítási eljárásai széles körben még nem elfogadottak. Ennek a hiányosságnak súlyos következményei lehetnek, hiszen az olyan magas kockázattal járó területeken -- ilyen például az LRE -- jogszabályi követelmény lehet valamilyen tanúsítás megléte [@weikert_model_2013] melynek hiányában a FLOSS termék felhasználását eleve ki kell zárni.

A probléma orvoslása kétféleképpen történhet. Vagy saját erőből, esetleg államilag finanszírozott keretek között kell elvégezni a tanúsítási eljárást, vagy olyan integrátor partnert kell keresni (amennyiben van ilyen) amely a kívánt komponens tanúsítását saját terméke keretében már elvégezte. Az integrátor közbeékelődésével viszont elveszítjük a módosíthatósággal járó előnyöket, hiszen a tanúsítás csak az adott összeállításra érvényes. 

A probléma egy harmadik, formális módszeren alapuló figyelemre méltó megoldási lehetőségét vázolja fel Breuer és Pickin [@breuer_open_2014]. Eredményeik alapján létre lehet hozni olyan, központi szereplő nélküli tanúsítási eljárást, ahol bármely félnek lehetősége van ellenőrizni a tanúsítási eljárás bármely részét. Igaz, módszerükkel csak formálisan leírható kritériumok ellenőrizhetők, a vizsgálat tehát nem lenne teljes körű. Ennek ellenére mindenképpen figyelemre méltó alternatíva, ami sokat javíthatna a tanúsítási problémákkal küzdő FLOSS termékek megítélésén.


### Kormányzati szabályozás (FS-SZ-K){#sec:FS-SZ-K}

A legtöbb országban egyértelmű a politikai akarat a FLOSS termékek és nyílt szabványok bevezetését illetően, ez idáig azonban kevés valós lépés történt a szabályozás terén [@bouras_policy_2014].  Sohn felhívja a figyelmet a FLOSS fejlesztők IP jogainak védelmére is, ami megkönnyítené és tisztázná a fejlesztők hozzájárulásainak jogállását [@sohn_strategic_2008]. 

Az Európai Unió létrehozta ugyan a korábban említett saját EUPL licencét, illetve több (idővel általában elhalt) projektet is indított a FLOSS bevezetését segítő minősítő rendszerek kifejlesztésére. Mindenesetre az átfogó szintű, netán nemzetközi szintű szabályozás egyelőre várat magára. Az Unió jelenlegi "Nyílt forrású szoftver stratégiája"[^EUstrat] 10 elérendő célja között explicite szerepel a jogi kérdések tisztázása, az egyenlő feltételek biztosítása, az átláthatóság és jobb kommunikáció. Remélhetőleg ezek a célok mihamarabb megvalósulhatnak, mert  a meglévő szabályozás sajnos sok esetben nem igazán illeszkedik a FLOSS-ra  [@amega-selorm_free_2010]. 

[^EUstrat]: Open source software strategy: https://ec.europa.eu/info/departments/informatics/open-source-software-strategy_en

Akadnak persze kivételek. Az izlandi szabályozás például az elsők között foglalkozott a FLOSS rendszerek fejlesztésének kérdéskörével [@bjorgvinsson_software_2007], Kína, Norvégia, India, Izrael és Portugália szintén rendelkezik valamiféle FLOSS adaptációs szabályozással [@ajila_empirical_2007].

A hazai szabályozásban csak szórványosan, egyedi esetekre vonatkozó utalások szerepelnek, mint a a Kormányzati Adatközpont működéséről rendelkező 467/2017. (XII. 28.) Kormányrendelet, vagy az elektronikus közbeszerzés részletes szabályairól rendelkező 424/2017. (XII. 19.) Kormányrendelet. Bíztató jel viszont a E-közigazgatási Szabad Szoftver Kompetencia Központ 2012 végén történt megalakulása, melynek célja "a szabad szoftverek e-közigazgatási, illetve általánosságban intézményi és vállalati felhasználási lehetőségeinek vizsgálata és elősegítése." 

A központ vállalt feladatai közé tartozik:

* egy szabad szoftver keretrendszer létrehozása amelybe "olyan szabad szoftverek kerülnek, amelyeket a Központ „ajánl” bizonyos feladatokra, illetve amelyek támogatása, honosítása megoldott és a minősítés szerint széles körben elterjeszthető."
* felhasználói és rendszer-üzemeltetési tanfolyamokat tart, és oktatási anyagokat készít;
* honosítási feladatokat lát el;
* "létrehoz egy mindenki számára szabadon elérhető tudástárat, amely egyrészt tartalmazza a Szabad Szoftver Kompetencia Központ működése során létrejövő esettanulmányokat, szoftverleírások, szakmai és oktatási segédanyagokat, cikkeket, stb. Másrészt gyűjtőhelyéül szolgál a különféle szabad licencek alatt elérhető, hazai és nemzetközi forrásból származó szabad szoftverekkel foglalkozó esettanulmányoknak, leírásoknak, szoftverdokumentációknak, könyveknek, cikkeknek, segédanyagoknak, stb."
* "fejlesztői révén megoldást kíván nyújtani a szabad szoftveres átállások során jelentkező hibákra, funkcionalitásbeli hiányosságokra, illetve informatikai fejlesztésekkel kívánja elősegíteni az interoperabilitás növelését".


