Összegzett következtetések
-----------------------------

Értekezésemben a nyílt fejlesztési modellből származó szoftverek (FLOSS) és komponensek felhasználhatósági feltételeit vizsgáltam a Létfontosságú Rendszerelemek információs rendszereiben. 

Megállapítottam, hogy a nyílt forráskód felhasználása nem mindig nyilvánvaló, ugyanis a felhasznált komponensek és alrendszerek révén akár többszörösen közvetett módon is megvalósulhat. A többszörösen indirekt felhasználás biztonságra gyakorolt egyértelmű negatív hatása, hogy a sérülékenységek javítása sokkal lassabban megy végbe, a zero-day sérülékenységek akár hosszú ideig is kihasználhatóak maradnak. *Következésképpen, a LIRE informatikai biztonsági szabályzatából akkor sem javasolt kihagyni a nyílt forrás hatásaival foglalkozó intézkedéseket, amennyiben ilyen rendszert a szervezet (látszólag) nem használ.*

Megmutattam, hogy LIRE és a hozzá kötődő LRE közvetlen FLOSS kapcsolódása alapvetően négyféle módon valósulhat meg: viszonteladótól beszerzett üzleti termékként vagy annak részeként, közvetlenül a közösségtől bináris vagy módosítás nélküli futtatható formában, belső elírások szerinti fordítás által, tehát módosított/ellenőrzött forráskód formában, végül a fejlesztői közösség részeként, a fejlesztésben való aktív részvétellel.

*Az kapcsolat és együttműködés felsőbb szintjein a zárt forrás esetében ismeretlen védelmi lehetőségek nyílnak meg, de ezzel párhuzamosan a lehetséges sérülékenységek száma is növekszik.*

A nyílt forrás sajátosságainak rendszerszemléletű elemzése során megállapítottam, hogy a FLOSS és fejlesztési metodikája bizonyos területeken olyan egyedi jellemzőkkel rendelkezik amelyek pozitív és negatív irányban is befolyásolhatják az informatikai biztonságot. Feltártam, hogy a felmerülő problémák egy részére a kutatóközösségnek már van valamilyen javasolt megoldása, de számos kérdés továbbra is nyitott és gyakran szabályozatlan marad.  A FLOSS szabályozása jelenleg nem kiforrott.

Megállapítom, hogy a nyílt forrású fejlesztési modell alapján termékek és komponensek olyan egyedi sajátosságokkal bírnak, amelyek befolyásolhatják a felhasználó szervezet informatikai biztonsági szintjét. *Ennek alapján a H1 hipotézist elfogadtam.*

Megmutattam, hogy a nyílt forrású komponensek rejtett módon, többszörös áttételen keresztül is kifejthetik hatásukat a Létfontosságú Információs Rendszerelemekre, az azonosított sajátosságok okozta kockázatok között pedig vannak olyanok, amelyek ezeken a csatornákon keresztül közvetve vagy közvetlenül befolyásolják a LIRE biztonságát. *Ennek alapján a H2 hipotézist elfogadtam.*

A kifejezetten LRE elemzésekre szabott NIST Cybersecurity Framework módszertanát alapul véve meghatároztam azokat a védelmi intézkedéseket, amelyekkel a FLOSS specifikus sérülékenységek jelentette kockázat mérsékelhető. Valamennyi fő kategóriában azonosíthatóak voltak nyílt forrás specifikus elemek, következésképpen *a nyílt forrással kapcsolatos szervezeti szabályzatnak végig kell követnie a teljes folyamatot*.

Megállapítottam, hogy a COTS (dobozos) felhasználásnál magasabb szintű FLOSS felhasználási szint esetében *az üzleti termékek
esetében bevált gyakorlattól jelentősen eltérő speciális lehetőségek és igények merülnek fel, amelyeket az azonosítás, védelem, felderítés, válaszlépések és helyreállítás tervezése és megvalósítása során egyaránt figyelembe kell venni*.

Az védelmi intézkedések egy része a nyílt fejlesztési modell sajátosságaiból adódó sérülékenységek kockázatának mérséklését célozza, néhány esetben azonban olyan új típusú védelmi intézkedéseket is sikerült azonosítani, amelyek alkalmazása zárt forrású termékek esetében elképzelhetetlen. 

*A [-@sec:ELLENINT]. fejezetben definiált védelmi intézkedések alapján a H3 hipotézist elfogadtam.*

A Létfontosságú Rendszerelemek hazai biztonsági követelményeinek és a nyílt forrású modell egyedi sajátosságainak összevetése során feltártam, hogy a klasszikus FLOSS termékek nem felelnek meg maradéktalanul a legmagasabb biztonsági szint által definiált elvárásoknak, ezért a jelen szabályozás alapján csak harmadik féltől származó termékekbe építve használhatóak. *A H4 hipotézist tehát el kell vetni.*

