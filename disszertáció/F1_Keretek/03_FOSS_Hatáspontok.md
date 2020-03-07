/
## A nyílt modell hatáspontjai{#sec:FLOSSHP}


A FLOSS hatásainak elemzéséhez ismernünk kell azokat az útvonalakat, amelyeken keresztül a létfontosságú információs rendszerelemek kapcsolatba kerülhetnek a FLOSS komponensekkel. Ebben a fejezetben ezeket a hatásmechanizmusokat, tulajdonképpen az egyes rendszerelemek FLOSS vonatkozású beszállítói láncát elemzem.

Bizonyos direkt hatáspontok -- mint például a nyílt forrású operációs rendszer vagy dobozos termék használata -- azonnal egyértelműek, míg más hatások közvetett, rejtett módon érvényesülnek, ezért nagyon fontos, hogy egy esetleges kockázatelemzés során ezeket is figyelembe vegyük.

Az létfontosságú rendszerelemre alapvetően háromféle módon lehet hatni:

- saját létfontosságú információs rendszerén keresztül;
- más, vele függőségi kapcsolatban álló LRE[^LRE]-re gyakorolt hatás által,
- illetve beszállítói láncának támadásával.

[^LRE]: Létfontosságú Rendszerelemek

Az utóbbi két lehetőséget természetesen figyelembe kell venni egy esetleges kockázatelemzés során, a kutatás tárgyát képező esetben  viszont ezek a hatások a létfontosságú információs rendszerelemre gyakorolt hatáspontok alhalmazát képezik, ezért együtt kezelem őket a LIRE hatáspontjaival.

A LIRE[^LIRE] felhasználhat közvetlenül FLOSS elemeket vagy FLOSS elemeket tartalmazó rendszereket és szolgáltatásokat, illetve kapcsolatban állhat olyan más LIRE-el amelytől saját működése nagy mértékben függ. Ez utóbbi csoportba tartoznak például az infokommunikációs hálózatok. A kutatás során a direkt hatásokat vizsgálom, hiszen a kölcsönhatásban érintett LIRE rendszerre azonos felételek vonatkoznak, így értelemszerűen az összes lehetséges hatáspontot a hatást gyakorló LIRE esetében is vizsgálni kell.

[^LIRE]: Létfontosságú Információs Rendszerelem

A LIRE felhasználhat:

* FLOSS komponenseket tartalmazó hardvereket,
* FLOSS vagy FLOSS komponenseket tartalmazó szoftvereket, 
* szolgáltatásokat,
* illetve nyílt forrásból származó konfigurációs elemeket. 

A lehetséges hatáspontokat a [-@fig:FLOSSHatás]. ábra foglalja össze. Mint látható, a hatások komplex, többszörösen áttételes módon is érvényesülhetnek. A FLOSS komponensek (K) felhasználhatnak más FLOSS komponenseket illetve kódrészleteket (C), a komponensek közvetlenül vagy szoftvertárolók közvetítésével bekerülhetnek a FLOSS alkalmazásokba (A) illetve az operációs rendszerbe (O). Természetesen maga az alkalmazás illetve az operációs rendszer is lehet nyílt forrású, de ez nem feltétlen követelmény. 

![FLOSS hatáspontjai a LRE rendszerekre (szerkesztette a szerző)](ábrák/FLOSS_hatáspontjai.pdf){#fig:FLOSSHatás}

A szervezet információs rendszerének egyik lehetséges hatáspontja a hardver. Nyílt forrású lehet vagy nyílt forrásból származhat a felhasznált hardver firmware kódja vagy valamely hardver komponensének firmware kódja. A firmware maga jelenleg döntő részben zárt, ugyanis a gyártó saját versenyelőnyét megőrizendő igyekszik a hardvert vezérlő szoftver komponenseket titokban tartani. Ezt a jelenséget erősíti, hogy számos gyártó a hardverkomponenseket kevésbé szabályozott de olcsóbb előállítást ígérő piacokon készítteti el, ugyanakkor az illegális másolást csak úgy tudják kivédeni, ha a hardver működtetését végző firmware-t üzleti titokként őrzik meg. Ez a jelenség azonban szembemegy a biztonságot jelentősen befolyásoló átláthatóság követelményeivel, hiszen az ismeretlen firmware tetszőleges kódot tartalmazhat, ráadásul közvetlenül, az operációs rendszer megkerülésével éri el a hardvert, így a forrás ismerete nélkül ellenőrzése rendkívül időigényes és nehézkes. Elképzelhető tehát, hogy a jelenleg már létező nyílt firmwarek száma a biztonsági követelmények szigorodásával párhuzamosan a jövőben növekedni fog. Hasonlóképpen növelheti a nyílt firmware elterjedését, ha a keleti piacok másolásvédelmi szabályozása javul vagy ha a termelés a robotika fejlődésével más területre helyeződik át.

A második lehetséges hatáspont a szoftverelemeken keresztül érvényesül. A felhasznált szoftver lehet maga is FLOSS illetve futhat nyílt forrású operációs rendszeren, a dobozos termék felhasználhat FLOSS komponenseket illetve az azt előállító integrátor infrastruktúrája egyaránt használhat nyílt szoftvert. Saját belső fejlesztés esetén mind a felhasznált komponensek mind a fejlesztő környezet irányából számíthatunk FLOSS hatásokra. Ha szervezet külső fél segítségét veszi igénybe a belső fejlesztésekhez, a külső fejlesztő információs rendszerének valamennyi FLOSS hatáspontja elvben hatással lehet a szervezet biztonsági szintjére is. 

Fontos megemlíteni, hogy az integrátor nem tehető felelőssé az általa felhasznált FLOSS termék által okozott károkért [@weikert_model_2013] hacsak a felhasználó nem fizet külön egy ilyen, biztosítás jellegű szolgáltatásért. Ennek következtében az integrátorokon keresztül beszivárgó FLOSS elemek problémája hatványozottan érvényesül. 

A jelenleg feltörekvőben lévő IoT technológia szintén hatással lehet a biztonságra. Ugyan a jelenleg használt IoT komponensek forráskódja többnyire nem nyílt, szinte kivétel nélkül nagy mennyiségű nyílt forrásból származó kódot tartalmaznak és egyre nagyobb a nyomás az átláthatóság növelésére is. Amennyiben a szervezet IoT eszközöket is használ, a FLOSS hatáspontjai a hardver és szoftver lehetőségeinek unióját teszik ki. Logikus és egyszerű lenne az szervezet IoT eszközeit az információs rendszer hardver elemeivel azonos módon kezelni, azonban ebben az esetben a szabályozás nagyságrendekkel nehezebb, a hardver nem kis számú, ellenőrzött szállítótól származik és az eszközöket sem feltétlenül jól képzett szakemberek használják. A lassan de biztosan terjedő, munkavállalóktól nehezen elválasztható számtalan apró kommunikációs eszköz, okosóra, egészségügyi berendezés, smart-ruházat kommunikációjának ellenőrizhetetlen volta jelentős problémát okozhat a közeljövőben. Ezeknek az eszközöknek az átláthatósága, közös ellenőrzése fontos biztonsági követelmény és egyben veszélyforrás is lehet a jövőben.

A szervezet által használt szolgáltatások -- elsősorban a más szolgáltatások alapját képző felhőszolgáltatások és a kapcsolattartásért felelős kommunikációs hálózat -- szintén a FLOSS belépési pontjaiként szolgálhatnak. Amennyiben ezen szolgáltatások  zavara vagy leállása a létfontosságú rendszerelem alapvető funkcióit veszélyeztetné, a [-@sec:LIRE] fejezetben leírt LIRE definíciója alapján maga is létfontosságú rendszerelemnek tekintendő, következésképpen a LIRE esetében azonosított valamennyi hatáspont éppúgy vonatkozik rá. 

A FLOSS hatása érvényesülhet technikai úton -- például sérülékenység, hiba, hátsó kapu formájában -- illetve jogi szinten, a felhaszált elemek licencelési problémái által. A jogi megközelítés valójában a [-@fig:FLOSSHatás]. ábrán bemutatottnál is valamivel összetettebb, hiszen nyílt licencekkel rendelkezhetnek az alábbi komponensek: 

* végrehajtható állományok,
* szoftver szolgáltatások (services),
* connector-ok,
* kapcsolódási módszerek,
* illetve maga a konfigurált rendszer vagy alrendszer architektúra.
[@scacchi_designing_2012]

Ismert, hogy a fejlesztők gyakran keresnek valamilyen célzott vagy általános keresőprogrammal kódrészleteket. Ez általában egy FLOSS program részlete [@umarji_archetypal_2008], következésképpen a nyílt forrás hatása teljes mértékben rejtetten is megjelenhet, úgy, hogy annak semmi nyoma nincs, hacsak az fejlesztő nem emlékszik honnan másolta a kódot. A hatás ilyen esetekben szinte kimutathatatlan. A kódmásolás problémája megjelenthet a konfigurációs állományokban -- ami rendkívül gyakori jelenség -- és magában a forráskódban is. Tekintve, hogy a forráskódot több ország joggyakorlatában szerzői jog védi, szabad másolása korlátozott, így ez az eset elméletileg ritkábban fordul elő. A gyakorlat azonban ettől saját tapasztalataim szerint is eltérő, a könnyen hozzáférhető nehezen beazonosítható jogállású kódrészletek csábítása igen erős, a szoftverfejlesztők előszeretettel használják azokat [@squire_diffusion_2015]. Biztonsági szempontból különösen aggályos, ha ezeket a kódrészleteket -- bízva azok szerzőiben -- nem nézik át és tesztelik megfelelőképpen.

A jelenlegi fejlesztői gyakorlatban külső szoftver komponensek felhasználása széles körben elterjed. A teljesen egyedi fejlesztést csak nagyon kevés gyártó engedheti meg magának -- akkor is csak általában egy szűk, jól definiált területen, mint például a útvonalválasztók szoftverei -- a szoftverek összetettsége és az elvárt funkcionalitás egyaránt jelentősen megnőtt, egyszerűen nincs idő minden komponens egyedi kifejlesztésére. A felhasznált komponensek származhatnak zárt forrásból, de a kifejezetten jó minőségű, nyílt -- és ingyenesen hozzáférhető -- komponensek elterjedésével a versenyképesség megtartása érdekében egyre több gyártó hajlandó, illetve kénytelen nagy mennyiségű nyílt komponenssel dolgozni. A nyílt komponensek egyik fő jellegzetessége, hogy előszeretettel használnak más nyílt komponenseket, ezáltal összetett függőségi hálózatot hozva létre. A jelenséggel bővebben a FS-F-P fejezetben foglalkozom. 


A szoftveres komponenseket gyakran tárolják valamilyen szoftvertároló segítségével, következésképpen ezek megbízhatósága az eredmény biztonsági szintjére is kihatással lesz. 

Tekintve, hogy a teljes szoftver-előállítási lánc valamilyen adott szoftverkörnyezetben fut, az ott alkalmazott operációs rendszer és segédeszközök (pl. build automation framework) biztonsági szintje szintén hatással lesz a felhasználásra kerülő rendszer biztonságára. Egy kompromittált rendszeren futó fordítóprogramok és fejlesztői eszközök olyan sérülékenységeket vezethetnek be a binárisokba, amelyek felderítése nagyságrendekkel nehezebb mint a forrás elemzése, így ezeknek a teszteknek az elvégzése csak a legritkább esetben gazdaságos.

![Egy lehetséges FLOSS belépési pont (szerkesztette a szerző)](ábrák/FLOSS_hatáspontjai_example.pdf){#fig:FLOSSHatásExp}

Mint látható, a szoftveripar jelen fejlettségi szintje mellett a FLOSS számtalan, nem triviális belépési ponttal rendelkezhet, ráadásul ezek a pontok többszörösen visszacsatolásokon keresztül bonyolult függőségi hálózatot alkothatnak. Könnyen előfordulhat, hogy a LIRE biztonsági szintjét egy látszólag független, távoli folyamat befolyásolja. Ilyen lehet például egy másik, a vizsgált LIRE tekintetében kiemelt fontosságúnak tekintett LIRE rendszer információs rendszerében használt dobozos szoftver, amelynek fejlesztése során a gyártó egyik beszállítójának egyedi szoftverében olyan nyílt forrású szoftverforrásokat használnak fel, amelyek függőségei közt egy hibás komponens található ([-@fig:FLOSSHatásExp]. ábra).

Intuitív módon azt várhatnánk, hogy minél messzebb esik a sérülékenység a végfelhasználás helyétől, annak veszélyessége arányosan csökken, sajnos azonban általában ennek éppen az ellenkezője az igaz. A sérülékenység szempontjából teljesen mindegy, hogyan került a rendszerbe, kizárólag az számít, hogy jelen van és kihasználható. Ugyanakkor a többszörös áttétel jelentősen lelassíthatja a javítások végigfutását a rendszeren, következésképpen a támadáshoz már nem szükséges zero-day[^ZeroDay] sérülékenység, az egyébként már meglévő javítások a rendszer tehetetlensége miatt csak jóval később kerülnek bele a felhasznált szoftverbe.

[^ZeroDay]:Bejelentetlen, javítással még nem rendelkező sérülékenység]

