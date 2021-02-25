Közösség, szubkultúra (FS-K)
---------

A nyílt modell munkaerejét adó közösség mind szerkezetében, mind motivációjában, vezetési struktúrájában gyökeresen eltér a zárt modell szociális struktúráitól. Az utóbbi időben elszaporodtak a nyílt modell módszereit utánzó kisebb startupok és a nagyobb IT vállalatok is átvettek elemeket a nyílt módszertanból, sőt aktívan támaszkodnak a nyílt modell közösségeire. A közösség képességei, szervezettsége jelentős hatást gyakorolhat végtermékre, annak biztonsági szintjére.

Emiatt -- bár első pillantásra úgy tűnhet, hogy az információ és informatikai biztonsághoz nem sok köze van -- fontosnak tartottam elemezni a klasszikus nyílt közösség felépítését és szociális jellegét, ugyanis a zárt modelltől való eltérések közvetve vagy közvetlenül hatással lehetnek a kockázatok beazonosítására és a problémák kezelésére is.

### Szervezet (FS-K-Sz){#sec:FS-K-Sz}

A klasszikus nyílt közösség önszerveződő, viszonylag gyorsan változó laza, moduláris hálózatot alkot, amelyben a résztvevők döntési mechanizmusai, szociális kapcsolatai eltérhetnek az üzleti modellben megszokottól. 

Korábban nyílt közösség alatt magánszemélyek egy csoportját -- elsősorban a fejlesztőket és tesztelőket -- értették, mostanra azonban ez az elképzelés megváltozott. A gazdasági szereplők belépésével a nyílt közösség különféle csoportok komplex függőségi viszonyban álló halmazává vált, melyben jelentős szerepet töltenek be a terméket felhasználó integrátorok, a termékkel kapcsolatos szolgáltatásokat végző cégek és a jogi, társadalmi hátteret adó támogató szervezetek (alapítványok, konzorciumok) [@lindman_support_2018]. A nyílt közösséggel kapcsolatos csoportok szerepét és függőségeit a [-@fig:OSSDSzerv]. ábra mutatja be. 

![OSSD szervezeti környezete (szerkesztette a szerző)](ábrák/OSSD-szervezeti-környezete.pdf){#fig:OSSDSzerv}

Ezen csoportok együttes hatása alakítja ki a nyílt fejlesztési modell működési hátterét, jelentősen befolyásolva a végső termék használhatóságát és biztonsági szintjét. A FLOSS termékből közvetlenül hasznot  húzó szolgáltatók és integrátorok fizetett fejlesztőkön keresztül igyekeznek biztosítani a projekt számukra kedvező irányát, míg a felhasználók -- akik sok esetben egyben fejlesztők is -- élvezhetik a két csoport nyújtotta termékeket és szolgáltatásokat. 

A támogatások és irányítás gyakran formális kereteket ölt konzorcium vagy alapítvány formájában, amelyet minden érdekelt fél támogathat, míg az alapítvány jogi és társadalmi hátteret biztosíthat a közös fejlesztésnek. 

#### Fejlesztőközösség felépítése

Az OSSD közösségek sokkal inkább hasonlítanak egy szociális hálózatra [@banzi_what_2008] vagy a megoszló hálózatokra [@bayrak_open_2005] mint hagyományos fejlesztőcsapatra. Bárki részt vehet bennük, bonyolult, határokon átívelő rendszert alkotnak [@al-ajlan_evolution_2009;@aaltonen_influence_2007] és a kapcsolattartás döntő részben a hálózaton keresztül zajlik. A nagy földrajzi kiterjedés miatt az időeltolódás problémákat okozhat [@filippova_mudslinging_2015].

A közösség rugalmas, könnyen változik, szerkezetét tekintve pedig általában egy központi mag részből, és az azt körülvevő további külső rétegekből áll, hagymaszerű struktúrát hozva létre [@di_bella_multivariate_2013;@kilamo_bulb_2010] lásd [@fig:HagymaModell]. A mag rész tagjai hozzák a legfontosabb döntéseket, általában csak nekik van joguk módosítani a központi forrástárakat és jobbára hosszú időn keresztül a projektben tartózkodnak [@toral_analysis_2010]. A magot körülvevő fejlesztői holdudvar a magtól távolodva egyre ritkábban adományoz kódot és egyre kisebb szerepet vállal a fejlesztésből. A teljes fejlesztőtábor lehet egészen nagy, több ezer fős, de a közösség méretének növekedésével egyre kisebb a hozzáadott fejlesztőerő [@scholtes_aristotle_2016] igazolva, hogy a nyílt modellre is igaz a Ringelmann hatás.

**A magfejlesztők** kis csoportja adja a projekt gerincét, az érdemi munka döntő hányadát is gyakran ők végzik [@gupta_empirical_2008;@aaltonen_influence_2007;@muller_managing_2019], sőt a magfejlesztők nem egyszerűen csak többet dolgoznak, hanem minőségileg más munkát végeznek [@oezbek_onion_2010] (a hagyma "magja" tehát kissé eltérő). A mag mérete változhat de a legtöbb projektben 15 fő alatt marad [@yamashita_revisiting_2015]. A magfejlesztők között lehetnek "hősök", pótolhatatlan személyek  ami termelékenységi szempontból hasznos [@ricca_heroes_2010] ám egyben kockázati tényező is, ugyanis a centrális emberek kiesése komolyan sértheti a csoport teljesítményét [@garcia_role_2013]. Az akadémiai projektként indult GIMP fejlesztése például több mint egy évre leállt, mert vezető fejlesztői befejezték az iskolát és elmentek dolgozni. Eddig tartott míg valaki más felvette a stafétabotot [@ihara_industry_2014]. Ugyanakkor empirikus bizonyítékok támasztják alá, hogy a közepesnél nagyobb nyílt projektek döntő része "hős-projekt", ahol a fejlesztés 80%-át, a fejlesztők 20%-a végzi [@agrawal_we_2018].

**Az aktív fejlesztők** jó rálátással rendelkeznek a projektre, idővel beléphetnek a magfejlesztők közé, bevonják őket a kulcsfontosságú döntésekbe, de szerepük marginális. 

**Az alkalmi fejlesztők** csoportja a legnagyobb, ők egyetlen funkcióra vagy hibajavításra koncentrálnak. E csoport határán helyezkednek el az egyszeri fejlesztők akik valamikor hozzájárultak a projekthez, ám végül különféle okok miatt (időhiány, érdektelenség) végül eltávolodtak attól [@hauge_surveying_2007]. 

A nagyobb projektekben általában cégek is adományoznak kódot, illetve saját fejlesztőkön keresztül igyekeznek a mag közelébe kerülni [@lundell_practitioner_2011].
Barham szerint a minőségbiztosítással foglalkozó közösségi tagok -- ha vannak -- külön réteget képeznek a hagyma-modellben és viszonylag elkülönülő kommunikációt folytatnak [@barham_impact_2012] 

![OSSD hagyma modell (saját változat Di Bella nyomán [@di_bella_multivariate_2013])](ábrák/hagyma-modell.pdf){#fig:HagymaModell width=50%}


Bird szerint a magot körülvevő közösség felépítése sem homogén hanem kis csoportokra, modulokra bomlik, akik egymással sűrűbben kommunikálnak, esetleg saját központi tagjaik vannak [@bird_latent_2008] vagyis a homogén hagyma modell kissé megtévesztő. A szponzorált fejlesztők jelenléte tovább növeli a modularitást, az egy céghez tartozók között szorosabb a kapcsolat [@jermakovics_exploring_2013]. Ez a struktúra segít, hogy a fejlesztőszám növekedésével a kommunikációs overhead ne váljon kezelhetetlenné [@capiluppi_reassessing_2009]. A decentralizált projektek jellemzően modulárisabbak mint a centralizáltak, a kisebbek pedig többnyire a hierarchikus típusból indulva érik el a decentralizált állapotot [@capiluppi_cathedral_2007]. A viszonylag kis mag kialakulása nem hiányosság, hanem szükségszerű következmény, ugyanis egy nagyobb létszámú központi csoport tagjaira kezelhetetlenül nagy kommunikációs teher nehezedne.

Forrest lehetséges problémaként azonosította a hibabejelentők és a fejlesztők elkülönülését. A két csoport csoporton belül sokat kommunikál, ám a legjelentősebb fejlesztők a hibabejelentőkkel nem kommunikálnak [@forrest_exploring_2012], ami arra enged következtetni, hogy a gyors és hatékony hibajavítások érdekében a FLOSS felhasználó szervezetnek csatlakoznia kell a fejlesztéshez. 

Bizonyos projektek saját biztonsági csapattal is rendelkeznek (pl. Drupal) akik a biztonsággal kapcsolatos figyelmeztetéseket figyelik és értékelik, illetve folyamatosan hibákat keresnek az alkalmazásban [@meike_security_2009]. Ez a jelenség azonban nem általános és formális követelmények nélkül hatékonysága is megkérdőjelezhető. Ruohonen et al. CVE sérülékenység jelentések analízise segítségével arra a megállapításra jutott, hogy a sérülékenységek jelentése általában kis számú magfejlesztőhöz fűződik [@ruohonen_mining_2017].

Az irányított és szponzorált nyílt közösségek szignifikánsan több fizetett fejlesztőt alkalmaznak és jóval több a módosításra jogosult fejlesztők száma [@schaarschmidt_how_2015]. A magot körbevevő holdudvar végzi a tesztelés, hibakeresés nagy részét, a végső döntést és a kiadási ütemezést általában az irányító ipari szereplő határozza meg. Az irányított közösségekben érdemes megkülönböztetni a kettős licencelést alkalmazó, egyetlen cég köré épült projekteket [@capra_framework_2008], illetve a közös cél érdekében egyesülő cégcsoport által vezetett projekteket (technológiai konzorcium). Liu szerint tisztán szervezetekből álló nyílt közösség is létrejöhet, ezt Community Source-nak nevezte [@liu_outsourcing_2008].

A fejlesztői szervezet tulajdonképpen egy speciális szociális hálózatnak tekinthető. A szociális hálózatokat fenyegető veszélyforrások itt is érvényesek lehetnek, annyi különbséggel, hogy a "felhasználók" ebben az esetben technikai téren minden bizonnyal felkészültebbek. A fenyegetések beazonosítása és mérséklése tekintetében a szociális hálózatokkal kapcsolatos kutatások lehetnek mértékadóak. 

#### Szociális struktúra

A közösség szociális struktúrája és ideológiai beállítottsága direkt hatást gyakorol a jelentkezésekre és a döntéshozatalra, így a teljes projekt teljesítményére [@martinez-torres_genetic_2012]. Alapvetően szociális struktúráról lévén szó, a társakról alkotott vélemény és kapcsolattartás különösen fontos OSSD esetén. A felek gyakran csak egymás digitális valóját ismerik, gyakori a köszönetnyilvánítás, üdvözlés, a pozitív atmoszféra fenntartása.  Az együttműködés alapja első sorban a bizalom és nem a tekintély. A bizalom elvesztésének fő oka a rossz kód (pl. kritikus hibák bevezetése, tervezési egység megsértése), kis mértékben szociális tényezők.   A közösségekben régebb óta részt vevő felek sokkal hamarabb közös nevezőre tudnak jutni [@zilouchian_moghaddam_consensus_2012], vagyis a közösségi kommunikáció tanulható, fejleszthető. A jellegzetes szociális közegnek -- a "hekker etikának" -- úgy tűnik jelentős szerepe van abban, hogy a nyílt közösség egyedi fejlesztési módszertana jól működik. A tudásmegosztás és viszonzás kultúrája a kódátnézések során is érvényesül [@alami_why_2019].

A személyes találkozások hatása egyértelműen pozitív [@bosu_peer_2014] a találkozókon való részvétel tehát segít a kapcsolatépítésben, a prominens fejlesztők jelentős része gyakran személyesen is ismeri egymást [@vasilescu_perceptions_2015]. Rendszeres személyes kapcsolat híján a szoftverfejlesztés egyes folyamatai, például a kódellenőrzés segít a munkatársakról formált kép kialakításában, ugyanakkor -- vagy épp ezért -- a kódellenőrzés vagy belső kommunikációs során használt udvarias szociális forma nagyobb jelentőséggel bír [@bosu_process_2017; @wei_roles_2017].


#### Átláthatóság

Az közösség működése és felépítése szinte minden esetben átlátható. Igaz ez az információ nem közvetlenül publikált (nincs szervezeti diagram) de a metainformációk alapján könnyen felmérhető és elemezhető [@martinez-torres_genetic_2012; @martinez-romo_using_2008]. Az OSSD projektek nyíltan működnek és minden érdeklődő közeledését szívesen veszik. Szabadon elérhető a szervezettel kapcsolatos (bár bizonyos területeken szegényes) minden dokumentáció, napló, beszélgetés [@heli_ikonen_controlling_2010].

Az átláthatóság segíthet felmérni a nemzetbiztonsági kockázatokat annak ellenére, hogy a szervezet általában nemzetközi. Egy határon túli vállat üzletmenetébe meglehetősen problémás belelátni, nehezen átvilágítható a motivációja és azok a kényszerek amelyeknek -- általában publikálatlanul -- meg kell felelnie. Elég az elmúlt évek nagyobb adatgyűjtési botrányaira gondolni a Facebook vagy a Twitter kapcsán. Ráadásul értelemszerűen felmerül a kérdés, hogy vajon mekkora nyomást tud gyakorolni egy vállalatra a működési környezetét biztosító nemzetállam. A klasszikus nyílt közösségekre messzemenően nehezebb nyomást gyakorolni, pláne elrejteni annak nyomait. 


A közösségre élénk kommunikáció jellemző és a kommunikációs adat szinte minden esetben könnyen hozzáférhető[@sowe_understanding_2008], igaz az utóbbi években a kommunikációs csatornák portálokra tolódásával (pl. Slack) ez a nyíltság -- legalábbis az információ birtoklása és perzisztenciája tekintetében -- veszélybe kerülhet [@squire_considering_2017;@squire_diffusion_2015].
Általában megállapítható az egyes szereplők munkaköre, szerepe, a munkaerő kihasználásának hatékonysága és ideje [@mistrik_dynamic_2010;@adams_detecting_2008]. A fejlesztő-fejlesztő és fejlesztő-szoftvertermék közötti interakció analízise révén értékes információ gyűjthető amely felhasználható a termék minősítése és kockázatbecslés során. Yahav at al. javasolják, hogy ez a megfigyelés és elemzés folyamatos legyen, azaz a közösség állapotát folyamatosan monitorozzuk [@yahav_data_2014; @yahav_risk_2014], Smith pedig modell alapú megközelítést tanácsol [@smith_users_2006].

A fejlesztők beazonosíthatósága komoly előnyt jelenthet komponens integráció során, hiszen közvetlenül azzal az emberrel lehet felvenni a kapcsolatot, aki az adott komponenst készítette [@hao_study_2008]. Erre IP, üzleti titok és szervezési okokból kifolyólag vajmi kevés esély van az üzleti modell esetén. A vezető fejlesztőket a kommunikációban elfoglalt centralitásuk alapján lehet beazonosítani [@yang_social_2014; @sureka_using_2011].

A [@fig:figCompDevStruct] ábrán a Mozilla Firefox projekt fejlesztőinek komponensekhez rendelése látható, míg a  [@fig:figCompDevStruct] ábrán ugyanezen projekt hibajegyekből generált fejlesztői centralitás vizualizációja figyelhető meg, amelyből kitűnik, hogy a bzbarsky@mit.edu és a asa@mozilla.org fejlesztők magas centralitás-értékekkel rendelkeznek (így az ábra közepe táján találhatóak), valódi nevük és kilétük egyszerű keresőhasználattal perceken belül kideríthető.

<div id="fig:OSSD_struct">
![Komponens-fejlesztő viszony](ábrák/component-developer-relationship_sureka_using_2011.png){#fig:figCompDevStruct width=50%}
![Mag periféria minta](ábrák/core-periphery-pattern_sureka_using_2011.png){#fig:figPeriphery width=50%}

Példa a szervezeti felépítés vizualizációjára. Forrás:[@sureka_using_2011]

</div>


Hasonlóképpen elemezhető a projekt fejlesztő dinamikája is, azaz projekt fejlesztő-megtartó és fejlesztő-vonzó képessége [@yamashita_magnet_2014], melynek segítségével akár az egyes fejlesztők kilépésének valószínűsége is megjósolható [@garcia_role_2013].



#### Önszerveződés


A közösség egy célkitűzés, ideológia és kulcsemberek köré szerveződik [@luther_why_2010]. A csoport sikere alapvetően a közösségtől, annak szerveződő-képességétől függ. Ha a nem sikerül kellő számú hatékony fejlesztőt vonzania, aligha lehet sikeres [@rossi_analysis_2009]. 

A tagok általában maguk választanak maguknak feladatot [@gurbani_case_2006; @bahamdain_open_2015; @aberdour_achieving_2007] azaz a feladatok kiosztása is önszerveződő. Nem lehet valakit utasítani vagy elbocsájtani, nincs fejlesztő felvétel és alkalmassági vizsga, ehelyett fejlesztő-bevonzás van [@ruhe_management_2014]. A humán erőforrás menedzsment nem is hasonlít az üzleti világban megszokotthoz [@aberdour_achieving_2007]. A kevéssé népszerű feladatok elvégzése kapcsán a belépő szervezetek szerepe felértékelődik, hiszen megfelelő (általában anyagi) motivációval kiegyensúlyozhatja az egyenlőtlenségeket. A munkamegosztás egy közösségen belül lehet jól definiált, vagy teljesen ad-hoc jellegű is [@wang_comparative_2015]. 

Gyakran megfigyelhető valamilyen mentori szisztéma, amelynek során egy régebbi tapasztalt fejlesztő segíti az újonnan beszállni kívánót. A mentorált csatlakozók mérhetően hatékonyabbak mint az önállóak [@fagerholm_role_2014], és a szociális akadályok leküzdésében is sokat segíthet egy jó mentor, annak híján pedig egy csatlakozni kívánóknak szóló dedikált honlap [@poo-caamano_herding_2016;@carillo_what_2017].

Az önszerveződés nem jelenti azt, hogy nincs szükség menedzsmentre. A fejlesztői hálózat szervezését elhanyagoló projektek sokkal rosszabbul teljesítenek, gyakran meg is szűnnek [@midha_governance_2012]. A kisebb, önjelölt vezérrel rendelkező projektek legfeljebb akkor tudnak fejlődni, ha valamilyen módon fel tudják kelteni a figyelmet [@adanna_ezeala_open_2008]. A nagyra növő, rosszul szervezett projektekben pedig a nehézkes kommunikáció megnöveli a feladatok lezárásához szükséges időt [@duc_impact_2011].

Érdekes megfigyelés, hogy a résztvevők döntő többsége csak kevés (gyakran egyetlen) projektben vesz részt, és csak nagyon kevesen ismerik az egész projektet [@stiles_workings_2010;@hayashi_why_2013]. Ez arra enged következtetni, hogy a jó fejlesztőkért komoly a verseny, a nyílt közösségben szerepet vállalni kívánók száma [@adams_detecting_2008] és a fejlesztésre szánható idő is véges. Következésképpen a nyílt közösség megtartása és vonzása érdekében érdemes bizonyos marketing tevékenységet végezni.



#### Döntéshozatal, irányítás, befolyás


A klasszikus modellben általában nincs világos vezetői lánc, a döntések sok vitával járnak ami megnöveli a koordinációs erőfeszítéseket [@arakji_virtual_2007], a nagyobb projektek (talán épp emiatt) centralizáltabb döntéshozatalt alkalmaznak, ugyanakkor a döntések és indoklások szinte mindig átláthatóak maradnak (lásd még: [-@sec:FS-K-Sz]), máskülönben elidegenítik a fejlesztőket és leépítik a közösséget.   Nincs alkalmazható kényszer, így bizonyos népszerűtlen feladatok elvégzetlenül maradnak, illetve a nagyobb, szponzorált projektekben az ilyen feladatokat fizetett fejlesztők végzik el [@bach_designers_2009]. Gyakori, hogy saját normarendszert fejlesztenek ami a fejlesztés irányát és a követendő ideológiát is kijelölti [@filippova_mudslinging_2015]. 

A közösség irányítása lehet decentralizált "Bazár" stílusú vagy centralizált, esetleg hierarchikus felépítésű. A előbbiek általában a független nem rutinszerű nagy bizonytalanságú feladatokban teljesítenek jól, míg a rutinszerű, erősen összefüggő, kis bizonytalanságú feladatokhoz a centralizált felépítés a megfelelőbb [@almarzouq_taxing_2015].  Az irányítás jellege lehet oltalmazó, erős irányítás alatt tartva a külső hozzájárulásokat, technikai jellegű, amely kizárólag a technikai előnyöket nézi valamint rugalmas, amely a közösség növekedését tartja szem előtt [@alami_how_2020].

A vezetők -- klasszikus esetben -- kis részben hagyomány, nagyobb részben alkalmasságuk alapján kerülnek kiválasztásra többnyire demokratikus formában, így a klasszikus nyílt közösség meritokráciának vagy technokráciának tekinthető[@luther_why_2010]. A bizalom kiépítésénél a legfontosabb tényezők a fejlesztői tudás, a reputáció valamint a formális és informális tevékenység a közösségen belül [@anh_collaborative_2012;@cai_reputation_2016]. A vezetők szerepe és kiléte meghatározó [@jermakovics_exploring_2013], egy-egy vezéralak véleménye nagy súllyal eshet latba a döntéseknél. A gitHubon belül például a GitHub csapat tagjai, a szervezetek, az OSSD fejlesztők és a keretrendszer/progamkönyvtár szerzők rendelkeztek a legmagasabb bizalmi szinttel [@blincoe_understanding_2016]. A hatásgyakorlás inkább csak belülről lehetséges, ezért a szoftvercégek gyakran szponzorálnak fejlesztőket akik képviselik az érdekeiket [@dahlander_man_2006; @durand_oss_2012]. Aaltonen az e-mail címek elemzése alapján kimutatta, hogy az iparági szereplők befolyása meglehetősen nagy, például a Linux kernel projektben [@aaltonen_influence_2007] (jellemző szereplők: Redhat, HP, Oracle, Intel, IBM) vagy Debian operációs rendszerben [@robles_corporate_2007] (SUN, Xerox, Digital Equipment corp, Silicon Graphics, HP stb.). A Linux kernel esetében mára a vállalati hozzájárulás mértéke meghaladja a független hozzájárulások mértékét [@ahmed_case_2017]. A nyílt projektben való részvétel egyik kockázata az irányítás elvesztése [@bruce_potential_2005], az új közösség kiépítése pedig igen költséges és időigényes.

A közösség fontos döntéseiben a mag csoport tagjainak sokkal nagyobb szerepe van, az egyéb módon fel nem oldható vitás kérdéseket is ők rendezik [@jensen_governance_2010]. Emiatt fontos e szereplők beazonosítása, hiszen segítségükkel lehet leginkább hatni a csoportra, illetve ezeket a szereplőket érdemes a szervezetnek támogatni. [@di_bella_multivariate_2013].  A döntéshozatal általában nem teljesen demokratikus, a mag résztől távolabb esőknek kevesebb beleszólásuk van a döntésekbe, illetve a mag élén állók gyakran fenntartják maguknak a jogot a végső döntésre. A vezérek sem tehetnek meg bármit, hiszen ha szembe mennek a közösséggel akkor annak elvesztését vagy a projekt másolását (fork) kockáztatnák. Legtöbb projekt esetében tehát a végső döntés közösségi nyomásra jön létre, nagyon sokat számít, hogy a változtatni kívánó fél mekkora lobbierőt tud felvonultatni, hány embert tud maga mellé állítani [@zilouchian_moghaddam_open_2011]. A változásokat egyáltalán nem olyan egyszerű keresztülvinni, mint az ember elsőre gondolná. Ennek oka, hogy a szoftver óriásira duzzadna ha bárki beletehetné kedvenc funkcióját (feature bloat), ami ellen a fejlesztői közösség általában keményen fellép [@bach_designers_2009].

Az OSSD menedzsment vonatkozásai merőben eltérnek az üzleti fejlesztéstől. Vannak megrögzötten független fejlesztők, akik igen nehezen viselik ha a projekt mögött egy nagyobb cég áll [@banzi_what_2008]. Emiatt fontos lehet a szervezet (érzékelhető) jelenlétét a lehető legkisebbre csökkenteni. Az ipari szereplőknek viszont könnyen megérheti a közösséghez való csatlakozás, vagy saját közösség létrehozása, hiszen a közösség által, fejlesztőkhöz, informális tesztelőkhöz és rengeteg visszajelzéshez jutnak [@wasserman_evaluating_2007; @hauge_risks_2010] valamint növelhetik befolyásukat a projekt céljait illetően [@dahlander_man_2006]. Bármilyen nagy is egy cég, annyi fejlesztőt egyszerűen nem bír megfizetni, amennyi egy komolyabb OSSD projektben összegyűlik [@damiani_oss_2009;@noll_what_2009]. Következésképpen a szervezet felépítése gyakorta bővül fizetett fejlesztőkkel és iparági kapcsolatokkal. 

A klasszikus OSSD nyitottsága természetszerűleg támogatja a belépést [@rajanen_open_2013], a meritokrácia jelleg miatt a cégeknek gyakran nincs is más lehetőségük az irányításra. A belépés -- mint láttuk -- általában meg is éri, ugyanakkor adaptálódni kell az adott projekt kultúrájához [@damiani_examining_2015] nagyon nehéz megváltoztatni azt. Nem előnyös például ha a saját fejlesztők külön csatornán kommunikálnak. A közösség átláthatóságot vár [@hauge_providing_2009]. Nem javasolt továbbá a modern extreme programozási[^EProg] technikák használata sem, amelyek zárttá teszik a csoportot [@jarvensivu_forging_2008]. 

Ha a cég jelenléte nagy, akvizíciója komoly veszélyt jelenthet a projekt jövőjére nézve és súlyos zavart kelthet a közösségen belül még akkor is, ha a terméket érintően semmilyen változtatás nem történik [@johri_cool_2011]. Hasonlóan súlyos lehet a helyzet ha a cég elhagyja a korábban vezetett projektet akkor is, ha korábban az nélküle működőképes volt [@capiluppi_exploring_2012].

[^EProg]: Extreme Programming. Modern szoftverfejlesztés módszertan az agile software development egyik ága. Jellegzetes technikái a páros programozás, extenzív kódvizsgálat, hierarchia nélküli menedzsment és a gyakori interakció az ügyféllel.

Amennyiben egy gazdasági szereplő hatást szeretne gyakorolni a közösségre, a következő lehetőségei vannak [@lopez_modelling_2014]:

* integráció: a szervezet beépül a közösségbe. Szerepe nem szükségszerűen vezető, a közösség által előállított FLOSS komponensekből származó haszon az együttműködés célja.
* közösség létrehozása: a szervezet maga hozza létre a közösséget. A kulcskérdés itt a közösség szervezése, de az integrációval ellentétben a szervezet saját üzleti stratégiájához illeszkedő erőforrásként kezeli a közösséget.
* hatalomátvétel: a szervezet egy létező OSSD közösség felett veszi át az irányítást céljait tekintve a létrehozással azonos.
* másolás (fork): a szervezet saját független változatot indít a FLOSS termékből. Ez általában akkor következik be ha az integrációt követően a közösség olyan irányt vesz fel amely a szervezet üzleti vagy stratégiai céljaival összeegyeztethetetlen. A forkolt közösség feletti irányítás átvétele lehetséges, de nem követelmény, hiszen a forkolt változatot követő fejlesztők oszthatják a szervezet nézeteit.
* kiadás: a szervezet nyílt forrásúként ad ki egy terméket, de nem foglalkozik vele, hogy épül-e köré közösség vagy sem. Ez a stratégia figyelhető meg többek között a kormányzati szektorban, ahol a kormányzati forrásokból készült terméket OSI kompatibilis licenccel adják ki.

A kód megnyitása vagy új közösség szervezése korántsem jelent garantált sikert. Könnyen előfordulhat, hogy a közösség nem nő, az újonnan érkezők egyetlen alkalom után továbbállnak, elvesztik érdeklődésüket vagy forkolják a projektet [@pinto_challenges_2018].

Schaarschmidt szerint  az üzleti szereplők alapvetően kétféleképpen fejthetnek ki hatást a nyílt közösségekre [@schaarschmidt_how_2015]:

* *irányítás a vezetésen keresztül*: saját embereiket juttatják a közösség vezető pozícióiba vagy megfizetik az eleve ott található fejlesztőket;
* *irányítás erőforrás-bevitel segítségével*: vállalati környezetben szocializálódott fejlesztőket juttatnak a közösségbe, és klánkontroll segítségéve formálják annak szokásait. A későn belépő szervezet számára gyakran csak ez a lehetőség nyitott, mert csak nehezen tud vezető pozíciókat megszerezni.

A fizetett fejlesztők valószínűleg ténylegesen nagyobb hatást képesek kifejteni a közösségre, mindenesetre több emberrel kommunikálnak, velük is több ember keresi az interakciót [@dahlander_man_2006] és a centralitási értékeik is magasabbak [@duc_impact_2011]. Nem csak a cég számára előnyös a közösség, ez fordítva is igaz, a közösség helyezését is emeli a cégek belépése [@capra_firms_2011]. Emiatt hasznos lehet a fizetett fejlesztők (automatizált) beazonosítása [@claes_towards_2018]. A kisebb, kiforratlanabb közösségek esetében általában komolyabb erőforrás befektetéssel lehet elérni a szervezet által kívánatos célok teljesülését, a megállapodott projektek esetében viszont a belépés lényegében csak a hibajegyek felvételére korlátozódik, a kitűzött irányon nagyon nehéz változtatni [@butler_investigation_2018].

A nagy OSSD projektek irányítása sok tekintetben hasonlít a politikára, egzakt módon nehezen megfogható szociális vonatkozásai vannak [@hardy_industry_2010], sok szereplő küzd különféle módszerekkel a befolyásért [@heli_ikonen_controlling_2010;@zilouchian_moghaddam_open_2011] és néha ütköznek az érdekek. A projekten olyan vállalatok dolgozhatnak együtt, akik nyílt piaci környezeteben vetélytársak. Teixeira például megfigyelte, hogy a vállalatok gyakran beviszik saját ellentéteiket a közösségbe [@teixeira_understanding_2014] ami a nyílt projekt mérhető sérüléséhez vezet. A vállalatok dedikált technikákat alkalmaznak, hogy belső, minősített információk ne szivároghassanak ki a nyílt együttműködésen keresztül [@nguyen_duc_coopetition_2017]: a megosztott adatokat üzleti szempontok szerint szűrik és felelősöket "Gatekeeper"-eket jelölnek ki, akik a szervezet határán állva ellenőrzik az információ-áramlást.

Amennyiben a szervezet stratégiai fontosságú nyílt forrású komponenseket hasznosít, a projekttel való valamilyen szintű együttműködés mindenképpen javasolt, adott esetben szinte elkerülhetetlen. A részvétel történhet közvetlenül szervezeti keretek közt, állami szinten vagy alapítványok formájában [@bourdoucen_free_2019].


### Résztvevők (FS-K-R){#sec:FS-K-R}


Mint kiderült a kulcsszereplők beazonosítása igen fontos, ez azonban nehézségekbe ütközhet. Nem csak a konkrét személy identitását lehet nehéz megállapítani, hanem az egyes pszeudo-anonim identitások (e-mail, nick, álnév, cím stb.) azonosságát is [@vasilescu_human_2014]. Néha a személyazonosság pár perces kereséssel kideríthető, más esetben -- különösen ha a fejlesztő szándékosan rejtőzködik -- a feladat közel lehetetlen. Jó példa erre Satoshi Nakamoto, a Bitcoin hálózat tervezője, akinek kilétét az amúgy jelentős erőfeszítések ellenére is mind a mai napig homály fedi. Még azt sem sikerült hitelt érdemlően megállapítani, hogy egyetlen személyről vagy egy csoportról van-e szó. Ugyanakkor az egyes fejlesztők kódolási stílusa imitálható, így egy esetleges támadó megkísérelheti megtéveszteni a közösséget [@matyukhina_adversarial_2019]. Ennek elkerülésére ugyan már léteznek javaslatok, de a gyakorlatban jelenleg még nem alkalmazzák őket.

Nem triviális összevetni, hogy egy adott módosítást végző személy azonos-e egy másik módosítást végző személlyel, a program vezető fejlesztőjével vagy a hibajegyet kezelő személlyel. Ezen a problémán segíthet valamelyest a terjesztett csomaghoz csatolt vagy verziókezelő rendszerben, disztribúció csomagjaiban tárolt digitális aláírás. Sajnos sok esetben a fejlesztők több ilyen aláírást is használnak (elvesztés, frissítés) tehát a módszer korántsem száz százalékos és gyakran csak a pszeudo-identitáshoz rendelés lehetséges.

A résztvevők sokféle környezetből érkeznek, vannak közöttük kiváló szakemberek [@bach_designers_2009], hátterük igen eltérő mind életkorra, származásra és képzettségre való tekintettel [@braunschweig_studying_2012]. Általában jó csapatjátékosok és alapvetően implementáció orientáltak [@sharif_empirically-based_2015]. 


Az üzleti fejlesztés profitvezérelt (külső motiváción alapul), a nyílt fejlesztést (elsősorban belső) motivációk hatásegyüttese jellemzi.  Fejleszthet valaki azért mert tanulni akar, vagy hiányzik egy rég kívánt képesség a kedvenc szoftveréből, vagy egyszerűen az alkotás öröméért, vagy a társadalom iránti elkötelezettségből, altruizmusból [@gurbani_case_2006]. A következő fő indítékcsoportok motiválhatják a fejlesztőket [@subramanyam_free/libre_2008;@wu_empirical_2007; @baytiyeh_open_2010;@van_der_linden_open_2013;@xu_volunteers_2009;@hannebauer_motivation_2016;@coelho_why_2018]:

1. Altruizmus (személyes hit a OSSD-ben, nyomot hagyni a világban, segíteni másokon)
2. Külső motiváció (karrier lehetőségek, előmenetel, szociális státusz, díjak)
2. Tudásbővítés (területi érdeklődés, új helyek, emberek, eszközök megismerése);
3. Közösségi,szociális indokok (csoporthoz tartozás, kommunikáció, tudásmegosztás)
3. Belső késztetés (munka öröme, önkifejezés, szórakozás, irányítás érzése)
4. Személyes igények kielégítése (hiányzó funkciók elkészítése);

A korábban belső indokok miatt fejlesztők motivációja nem változik meg akkor sem ha munkájukért fizetést kapnak [@baytiyeh_open_2010].

A fizetett fejlesztők motivációja külső, fajtái az alábbiak lehetnek [@berdou_insiders_2006]:

* szabad szponzorálás, Nincs konkrét instrukció az alkalmazótól;
* alkalmazotti viszony, világos feladatokkal;
* részlegesen kötött, a fejlesztő ideje egy részével rendelkezhet;
* adott cél eléréséért kapott díj, megbízási viszony.

A belső motivációból előnye, hogy erősebb mint a külső motiváció [@bayrak_open_2005] hátránya viszont az irányíthatóság hiánya, így például a belső indíttatásból fejlesztők nem igazán kedvelik az adminisztrációt [@carroll_mining_2013],  az "unalmas" feladatokat [@schofield_levels_2007], kedvelik viszont a nyíltságot, kényesek a kommunikáció minőségére, a termék nyíltságára [@chawner_community_2012] valamint a licencre [@nov_open_2008], könnyen előfordulhat, hogy kifejezetten elutasítóak a zárt forrású rendszerekkel szemben [@alami_influencers_2018].

A motiváció ismerete fontos, ugyanis ha a szervezet befolyást akar gyakorolni a közösségre saját delegált emberei által, a delegáltaknak tisztában kell lenniük a OSSD fejlesztők motivációival, ha tudni akarják hogyan hathatnak rájuk [@li_motivating_2006]. Az egyik érdekes lehetőség a gamifikáció, vagyis a repetitív, népszerűtlen feladatok játékos formába öntése [@vasilescu_how_2014].

