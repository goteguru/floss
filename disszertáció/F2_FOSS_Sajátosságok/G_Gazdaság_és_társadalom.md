---
#vim: set et sw=4 :
---

Gazdasági és társadalmi hatás (FS-G)
-------------------

A nyílt forrással kapcsolatos publikációk gyakran említik a jelenség gazdaságra és a társadalomra gyakorolt pozitív hatásait. A fejezetben azt vizsgálom ezeknek a tényezőknek lehet-e valamilyen közvetett vagy közvetlen hatása a biztonságra.


### Gazdasági hatás (FS-G-G){#sec:FS-G-G}

A FLOSS egyedi gazdasági sajátosságai alapján nem feltételeztem, hogy követlen biztonsági hatásokat lehet azonosítani, mivel azonban a források előzetes feldolgozása során egyértelművé vált, hogy vannak ilyenek jellegzetességek a teljesség érdekében nem lehetett ezt a kategóriát sem kihagyni. Mint kiderült, indirekt módon az itt azonosított sajátosságok ténylegesen befolyásolhatják a LRE biztonságát. 

A FLOSS gazdasági kölcsönhatásai résztvevő fél alapján két csoportra oszthatók. A FLOSS üzleti szereplőkkel kapcsolatos kölcsönhatásaira és a társadalom egészét érintő hatásokra. E két hatás néhány aspektusában hasonlít ugyan, de egyáltalán nem azonos. 

Számos nyilvánvaló előnye[@di_giacomo_cots_2005] ellenére a vállalatok kezdetben tisztán financiális okokból használták a szabad szoftvereket. (Valójában mind a mai napig ez a legfőbb motiváló erő [@damiani_qualitative_2015; @almeida_open_2012]). Csakhogy ez a modell nehézkesen működik, hiszen minden racionális szereplő érdeke azt diktálja, hogy "ingyenélőként" használja a terméket és értékes erőforrásokkal már ne járuljon hozzá [@noda_effect_2013; @marsan_antecedents_2013]. Ilyen szemlélettel nem is igazán érthető mi visz rá egy gazdasági szereplőt arra, hogy "ingyen" fejlesszen. 

A közösségi célokba fektetett energia csak úgy térülhet meg, ha a cégek kiegészítő termékekkel végső soron profitot termelhetnek általa. (Épp emiatt tartják általában a kevésbé kötött licenceket előnyösebbnek [@hofmann_dual_2013]). 

Így nézve a közösségi fejlesztés csak első látásra tűnik rossz befektetésnek, valójában nagyon is konkrét gazdasági előnyökkel járhat. A vállalkozás kérhet pénzt jogátruházásért, támogató tevékenységéért,  egyedi fejlesztésekért, különleges szoftverelemekért, támogatásért, képzésért, üzemeltetésért anélkül is, hogy a forráskód kizárólagos tulajdonjogát birtokolná. Az gyakorlatban alkalmazott üzleti lehetőségeket Weikert nyomán [-@fig:ÜzletiModell]. ábrán látható táblázatban foglaltam össze.

![Nyílt fejlesztés gazdasági lehetőségei (Saját szerkesztés, Weikert nyomán [@weikert_model_2013])](ábrák/FLOSS-üzleti-lehetőségek.pdf){#fig:ÜzletiModell}

Természetesen a haszon realizálódhat más, indirekt módon is, például korunk egyik vezető "valutájában" információ formájában vagy presztízsértékként.
Minthogy a legjobban képzett fejlesztők jelentős része maga is részt vesz valamilyen FLOSS projektben a közösségben részt vállaló cégek könnyebben megszerezhetik és megtarthatják őket[@wasserman_evaluating_2007].

Idővel -- elsősorban az IT szektorban -- a gondolkodásmód megváltozott. Azok a cégek amelyeknél hosszabb távú stratégiai célokat is megfogalmaztak, világosan látták, hogy sokkal többet nyerhetnek egyszerű rövid távú gazdasági előnyöknél. Végül a folyamat öngerjesztővé vált, megkezdődött a FLOSS üzletiesedése [@lindman_floss-induced_2010]. Ma már a FLOSS a szoftverpiac egyik vezető hajtóereje, amely figyelemre méltó módon növekszik [@bouras_policy_2014], egyre elterjedtebb a kifejezetten nyílt forrású stratégia megfogalmazása, a cégek fontosnak tartják a nyílt forrású együttműködést sőt megszületett a cégen belüli, FLOSS módszerekkel való munka fogalma, az "Inner Source" [@van_der_linden_open_2013]. 
A FLOSS gazdasági előnye mérhető. A top1000 vállalat esetében korreláció mutatható ki a tőzsdei siker és a FLOSS használat között [@spinellis_organizational_2012]. 

A forráskód megnyitásának kényszerítő ereje is van. Ha ugyanis egy piaci szereplő egyoldalúan megnyitja a forráskódot ellenfelei könnyen rosszul járnak. Asundi gazdasági modellszimulációjának egyik eredménye az volt, hogy a versenytársnak is érdemes ilyenkor megnyitna a forráskódot, ha viszont mindketten megnyitják a forrást, valamivel kevesebb haszonhoz jutnak, semmiképpen nem nőhet a nyereségük. Ami előrevetíti a modell másik eredményét, miszerint ha a teljes gazdaság nyílt forrású lenne, az korántsem lenne optimális. Valójában a nyílt és zárt modell együttélése az, ami a leghatékonyabb, de ez csak akkor valószínű, ha a nyílt változatból fontos képességek hiányoznak vagy ha a üzleti szoftver kiegészítő előnyökkel bír [@asundi_competitive_2012]. A nyílt forrás tehát serkenti a versenyt de akár egyfajta gazdasági fegyver is lehet, amivel napjaink nagyvállalatai minden valószínűség szerint élnek is. 

Ilyen okból vagy sem, számos nagyvállalat adományozott, azaz tett nyílttá korábban zárt forráskódot [@jing_yang_review_2008], ami igen jó -- mondhatni egyedülálló -- lehetőség a nyílt és zárt fejlesztési modell és kódminőségének összehasonlítására. 


Egy nemzet gazdasága számára több okból is kedvező lehet a FLOSS fejlődése és elterjedése [@jing_yang_review_2008;@pykalainen_alleviating_2009; @bouras_methodology_2013; @thorbergsson_economic_2007]:

* segíthet fejleszteni a nemzeti szoftveripart;
* segít kontrollálni a kormányzat licencköltségeit, csökkenti a függőséget;
* növeli a nemzeti információbiztonságot;
* általános monopolellenes hatása, csökkenti az ország importfüggőségét;
* segít elkerülni a hálózathatáson[^networkeffect] alapuló piaci egyenlőtlenségeket;
* a szabad szoftver erős fegyver az üzleti szoftverek ártárgyalásakor;
* illetve enyhíti a kalózkodás problémáját.

A globális szoftveripart az információgazdag nagyvállalatok uralják, amelyek három jogi konstrukción keresztül tartják irányítás alatt a piacot: a copyright jogok, szabadalmak és az üzleti titkok jogi védelme. Ha az információ-áramlás e három gátját eltávolítanánk akkor megszűnne a szoftverfelhalmozás késztetése és lehetősége. Következésképpen a piacon nem az lenne uralkodó, aki több szoftvert tud felhalmozni, hanem aki jobb fejlesztőket tud magához csábítani és megtartani. A nyílt forráson alapuló fejlesztés lényegében ezt a célt valósítja meg. Úgy tűnik tehát -- legalábbis a szoftveripar terén -- a FLOSS alapú gazdaság egyáltalán nem katasztrófa, kialakulása teljesen természetes, talán elkerülhetetlen is [@chopra_free_2011].

Felfoghatjuk úgy is, hogy a FLOSS átmenet képez a privát befektetési modell és a közösségi tevékenységi modell között. Az első esetben privát befektetés fedezi az innovációt a megtérülését pedig IP törvények védik. A második esetben az innovációt ajándékként kapja a közösség, azt bárki korlátozás nélkül használhatja. A FLOSS innovációs modell esetén az emberek azért csatlakoznak, mert a személyes haszon sokkal nagyobb a közös munkában részt vállalók, mint az "ingyenélők" számára [@hendry_public_2008; @melian_lost_2008].

A könnyen elérhető kész komponensek jelentősen lerövidítik a fejlesztési időt így a fejlesztő cég a lényegi elemekre tud koncentrálni, ami versenyelőnyt jelent [@kemp_current_2009]. A FLOSS tehát stimulálja az innovációt[@hao_study_2008;@tesoriere_dynamic_2017], segíti a technológiai fejlődést [@tanihana_empirical_2013] és helyzetbe hozza a kisvállalkozásokat [@rentocchini_software_2006]. Mindamellett a FLOSS gyengítheti a szoftverfejlesztés hagyományos motivációs rendszerét[@zhang_yingkui_justification_2010] hiszen gátolja a direkt financiális megtérülés lehetőségét, így FLOSS esetén fontos lehet más motivációs struktúrát keresni (FS-K-R).

Lin szerint amikor egy nyílt és egy zárt termék harcol valamely piacért és a zárt termék jelentős hálózathatásból származó előnnyel indul, árcsökkentéssel teljesen kiszoríthatja a FLOSS terméket a piacról. A FLOSS szoftverek léte csökkenti az üzleti változatok profitját, a különbség pedig a felhasználónál csapódik le [@lin_impact_2008]. A FLOSS támogatása tehát nemzetgazdasági érdek is lehet.


A nyílt fejlesztés globális biztonságnövelő hatása talán nem feltétlen egyértelmű. A terméktulajdonságokról szóló fejezetben (FS-J-K) részletesen bemutatom, hogy a forrás nyíltsága önmagában nem okoz szignifikáns növekedést a szoftverbiztonságban. A terhek megosztása az, ami komoly eredményekkel kecsegtet a biztonság terén. Egyetlen sérülékenység feltárásának becsült erőforrás igénye 5000 emberóra, ami jelentős terheket ró a kizárólag belső fejlesztést végző cégekre. A lehető legmagasabb biztonsági szintet nem a tökéletesen biztonságos rendszer megalkotásával lehet elérni -- hiszen ilyen, a triviálisnál bármivel összetettebb rendszer nem létezik -- hanem a rendelkezésre álló szűkös erőforrások helyes felhasználásával [@wright_software_2011].


Az Unió figyelmét sem kerülte el a terület problémái és a benne rejlő lehetőség. A 2014-ben lefektetett Nyílt Forrású Szoftver Stratégiában a következő stratégiai célokat fogalmazza meg:

* egyenlő feltételek a beszerezéseknél;
* részvétel a közösségben;
* jogi kérdések tisztázása;
* a EK által fejlesztett szoftverek kódjának megnyitása;
* átláthatóság és jobb kommunikáció.

Ezekből az elvekből egyértelműen látszik a nyitás szándéka, amely az előnyök felismerésből ered. Belátható, hogy a gazdasági racionalitás ugyan fontos komponense a FLOSS fejlődésének, de a biztonságra gyakorolt pozitív hatások csak akkor érvényesülhetnek teljes mértékben, ha a társadalom tagjai -- elsősorban a döntéshozók -- jobban megértik a jelenséget, annak előnyeit és hátrányait.

[^networkeffect]: Az ökonómiában és üzleti világban használatos fogalom azon pozitív hatás leírására, amikor a termékhez vagy szolgáltatáshoz csatlakozó minden további felhasználóval mindenki számára tovább nő a termék értéke. Ha a hálózathatás érvényesül, a termék teljes értéke a felhasználók számával együtt növekszik. Klasszikus példák a telefon és a szociális hálózatok. Forrás: Wikipédia 

### Társadalmi hatás, tudati dimenzió (FS-G-T){#sec:FS-G-T}

A biztonság nem egyszerűsíthető le tisztán technikai kérdésekre mindig figyelembe kell venni az emberek gondolkodását, hozzáállását, pszichológiai tényezőket is[@anderson_information_2007]. Nem lehetetlen tehát, hogy a nyílt modellnek a tudati dimenzión keresztül is vannak biztonsági hatásai.

A FLOSS megítélése nem homogén a társadalomban, akik jobban ismerik pozitívabb véleménnyel vannak róla, de általában sok a bizonytalanság a jelenséggel kapcsolatban [@marsan_adoption_2012;@ihara_industry_2014]. A Stack Overflow kommunikációjának elemzése alapján a FLOSS erősen jelen van a fejlesztői gondolkodásban [@barua_what_2014] az alkalmazottak számára pedig általában vonzó és előremutató [@hauge_risks_2010] ha a cég nyílt modellben gondolkodik. Az is megfigyelhető, hogy minél nagyobb klánkontrolt[^clancontrol] gyakorol egy gyártó és minél több tudást vonzz be, annál nyitottabbá válik [@stefi_what_2014]. 

[^clancontrol]: irányítás informális módja, ahol az irányított és az irányító közötti függést a közös értékek és célok közötti szakadék szűkítésével érik el. 


A felhasználók részéről továbbra is megfigyelhető az ellenállás [@di_penta_exploratory_2010 ;@di_penta_exploratory_2010], az erős hálózathatás pedig néhány területen tovább gyengíti a FLOSS elterjedését [@spinellis_organizational_2012] (van persze ahol éppen erősíti).  Gyakran hangoztatott akadály a nehéz használhatóság [@gwebu_adoption_2011]. 

A nyílt modell termékeit elfogadók körében kezdetben általában financiális okok domináltak, a politikai és szociális felelősség nem játszott szerepet [@brink_critical_2006]. A gazdaságosság, az azonnali haszon általában ma is nagyon fontos, a módosíthatóság és szabadság háttérbe szorul[@durand_oss_2012] így a vezetőség fejében torz kép alakulhat ki. 

Komoly kulturális szakadék figyelhető meg a menedzsment és a OSSD fejlesztők között, a menedzsment úgy érzi, nincsenek felelősök, nincs kit hibáztatni a kudarcokért, aggódnak a rejtett költségek miatt [@ven_field_2010;@goode_something_2005], továbbá, ha nincs a fejlesztés mögött egy "komoly cég" az egész amatőrök játékának tűnhet [@di_giacomo_cots_2005]. 
A biztonság-kritikus területeken ez a jelenség különösen erőteljes [@li_empirical_2006;@ardagna_focse_2007].

A szervezet fejlesztői viszont -- akik közelebbi kapcsolatot ápolnak a FLOSS rendszerekkel és kedvelik az innovációt -- úgy érezhetik, hogy falakba ütköznek, esélytelen meggyőzniük a vezetést, ezért aztán elkezdik "fű alatt" használni[@fitzgerald_journeys_2017]. A FLOSS használat tehát lehet rejtett (konkrét példák vannak rá például az energia szektorban  [@kuechler_misconceptions_2013]) ami oda vezethet, hogy a menedzsment -- annak biztos tudatában, hogy FLOSS rendszert nem használnak -- rosszul méri fel a kockázatokat, a FLOSS biztonságos használatához szükséges szabályozás pedig elmarad.

Gyakori probléma a tapasztalatok és könnyen elérhető referenciák hiánya [@shaikh_framing_2011] az ellenérzést felnagyíthatja a támogatás területén látszólag tapasztalható hiányosságok. Az eltérő támogatási modell meg nem értéséből fakadóan a vezetők nem is ismerik fel a FLOSS-t hatékony alternatívaként [@kuechler_misconceptions_2013;@marsan_antecedents_2013]

Magas szintű összefogásra lenne szükség ahhoz, hogy követendő minták, lehetőségek és kockázatok mindenkihez könnyen eljuthassanak. (Európában szerencsére létezik is ilyen jellegű kezdeményezés JoinUp néven[^joinup].)  Az egységes forráshasználat érdekében nagyon előnyös lenne egy közös kormányzati forráskód-kezelő rendszer kialakítása [@matos_open_2013].

[^joinup]: https://joinup.ec.europa.eu


A másik terület ahol a kormányzat sokat segíthet a lehetőségek és kockázatok megértésében az oktatás.
Az érzékelt használati egyszerűségre a képzés van a legnagyobb hatással [@dolores_gallego_open_2015] így ha a fiatalok találkoznak nyílt verziókkal, már sokkal kevésbé találják használhatatlannak azt.  Az oktatási intézményekben viszont általában akkor is üzleti verziókat oktatnak ha van nyílt alternatíva, mivel a kialakult vélemény az, hogy a piacon erre lesz szükség[@ellis_open_2009] ami végül tovább erősíti azt a társadalmi hatást, hogy ez valóban így is legyen. Ha az elemi iskoláktól kezdve csak zárt üzleti megoldásokat látnak az emberek, az a képzet alakulhat ki bennük, hogy a technológiát csak ezen a módon tudják megbízhatóan használni[@lazic_open_2011].

Az informatika képzésbe ideje kezd beszivárogni a nyílt modellel kapcsolatok tudnivalók oktatása (vannak nyílt forrással kapcsolatos kurzusok többek közt a UNH-en [@sabin_free_2011] hazánkban pedig a Műszaki és Gazdaságtudományi Egyetemen vagy Számalknál) de a közösség-építéssel, közösségi együttműködéssel kapcsolatos tudnivalókat nemigen oktatják. 
A fejlesztő-közösségekben résztvevők jellemzően autodidakta módon tanulnak, ugyanakkor -- elsősorban a fiatalabb korosztály -- előnyben részesítené a formális képzést [@barcomb_how_2015].


### Összefoglalás

Az elemzett publikációk alapján megállapítható, hogy a nyílt forrásnak mint jelenségnek jelentős gazdasági és társadalmi haszna van. A tisztán nyílt forrású gazdaság ugyan nem lenne hatékony - így nem is kívánatos - de a megfelelő arányú együttműködés jelentős előnyökkel bír. A FLOSS Állami és nemzetközi szintű támogatása tehát előnyös a teljes társadalom számára, a munkamegosztás révén pedig a szoftverek biztonsági szintje nő. 

Az üzleti és nyílt modell kulturális különbségei valamint a berögzült szokások folytán a FLOSS hatásai és az OSSD módszerei ritkán szerepelnek az oktatásban, bár az utóbbi években pozitív változás érzékelhető e téren. A megfelelő egyensúly megteremtése érdekében a FLOSS specifikus oktatásra kiemelt figyelmet kellene fordítani.

A vezetés és a kivitelezést végzők FLOSS-al kapcsolatos hozzáállásából adódó különbség oda vezethet, hogy a kivitelezők rejtett módon alkalmazzák a FLOSS komponenseket, ami szabályozás híján biztonsági problémákhoz vezethet.


