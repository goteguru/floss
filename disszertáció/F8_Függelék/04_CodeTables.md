## Sérülékenységek és javaslatok kódtáblázatai
:Azonosított sérülékenységek

kód |szint|leírás                                                                           
---:|:--:|:---------------------------------------------------------------------------------
SF01|1|Nincs formális tesztelés, ami megnehezíti a minőség-ellenőrzést.
SF02|1|Nem piac vezéreltek a követelmények, a biztonság nem feltétlen szempont, amire nincs ráhatásunk.
SF03|1|Nincs formális biztonsági tervezés az informális követelményeket nehéz minősíteni.
SF04|3|A kódbázisba sérülékenységet vezetnek be, ami az upstream változaton keresztül eléri a szervezet kódbázisát.
SF05|1|Hagyományos minőségbiztosítási elveknek nem felel meg, emiatt nehéz összehasonlítani, értékelni.
SF06|1|A beszállító vagy közösség nem monitorozza saját komponens projektjeit. Az azokban bevezetett sérülékenység a terméken keresztül a szervezethez is eljut.
SF07|3|A szervezet forkolja az eredeti kódbázist, de nincs erőforrása karbantartani azt.
SF10|3|A komponensek közötti szoros függőségek miatt a komponens frissítése számos részkomponens frissítését vonja maga után, ami ütközéshez és hibákhoz vezethet.
SF11|3|A kompatibilitás érdekében helyileg módosított komponens sérülékenységet vezet be.
SF12|4|A fejlesztőtábor kicsiny mérete lassítja vagy ellehetetleníti a hozzájárulásaink időben történő integrálását.
SF13|2|A fejlesztői vagy tesztelés alatti állapot használata növeli a sérülékenységek esélyét
SF14|3|A szervezet fejlesztőeszközei nem kompatibilisek a projektben használtakkal, ami lassítja  az együttműködést.
SG01|1|Rejtett FLOSS használat miatt rosszul mérik fel a kockázatokat és nem alkalmazzák a szükséges védelmi eljárásokat.
SH01|1|A szervezet nem megfelelő minősítő rendszert alkalmaz a FLOSS termék minősítésére.
SH02|1|Megfelelő változat kiválasztása nehéz és időigényes. Emiatt előfordulhat, hogy nem a megfelelő változat kerül alkalmazásra.
SH03|2|A kontroll nélküli (esetleg rejtett) integráció a hibás komponensek révén sérülékenységek akaratlan beépítéséhez vezet.
SH04|1|A FLOSS komponensek minősítésére nem alkalmas a COTS esetén megszokott módszertan.
SH05|2|Az integrátor nem ismeri megfelelő mélységben az integrálandó komponenst így hibákat vezet be az integráció során.
SH06|3|Az integrált komponensen végzett módosítások összeütközésbe kerülnek az eredeti kódbázissal, ami a frissítések során hibákhoz vagy sérülékenységhez vezethet.
SH07|4|A szükséges módosításokat nem sikerül visszavezetni, a közösség elutasítja így a kódbázis ütközéseit folyamatosan figyelni kell, ami időigényes és hibalehetőségekkel terhelt.
SH08|1|Az integrált komponens összetett függőségein keresztül hibás (és ellenőrizetlen) alkomponensek szivároghatnak a fejlesztésbe.
SH09|4|A módosítások visszavezetése során érzékeny információ szivárog ki az upstream projektbe.
SH10|1|Kompatibilitási problémák miatt a szervezet által alkalmazott felügyeleti rendszer nem támogatja a FLOSS változatot.
SH11|1|A szükséges adatmigrációt követően a korábbi mentések helyreállítása nehézzé vagy lehetetlenné válik, veszélyeztetve a rendelkezésre állást.
SJ01|2|A dokumentáció és a tényleges képességek és szükséges konfiguráció közt jelentős eltérés lehet, ami biztonsági problémákhoz vezethet.
SJ02|2|Megfelelő alapértelmezett beállítások híján a felhasználó (türelmetlenségből vagy figyelmetlenségből) hibás beállításokat alkalmazhat.
SJ03|1|A meglévő zárt rendszerekkel való inkompatibilitás.
SK01|1|A fejlesztők és a hibabejelentők közötti kommunikáció nem megfelelő.
SK02|1|Az alkotók nem mindig beazonosíthatók. Nehéz megállapítani, hogy több részmunkát ugyanaz a személy végezte-e el vagy sem.
SK03|1|Az erős cégirányítás miatt a fejlesztők elhagyják a projektet, veszélyeztetve a támogatást
SK04|4|Rossz vagy az elvárásoknak nem megfelelő kód küldése a bizalom, ezáltal az OSSD feletti irányítás elvesztését okozza.
SK05|1|Az OSSD vezető szereplője távozik (cég akvizíciója, fejlesztő kilépése), a támogatás folytonossága veszélybe kerül.
SK06|4|A delegált fejlesztők nyílt kommunikációja érzékeny adatokat tesz publikussá.
SM01|2|A hibajegy válasz nélkül maradhat.
SM02|2|A hiba javításának ellenőrzése késhet.
SM03|2|A hiba nem reprodukálható ezért figyelmen kívül hagyják
SM04|1|A forrástároló, a publikus hibajegyek és a hozzá tartozó foltok folyamatos analízisével a támadó sérülékenységeket fedezhet fel és használhat ki még azok javítása előtt.
SM05|2|A hibajegy hibakeresési csatolmányaként érzékeny információ kerül a publikus hibakereső rendszerre.
SM06|1|A nyilvános fejlesztői dokumentáció tervezési hiányosságokat tárhat fel.
SM07|1|A fejlesztői kommunikáció elemzésével a támadó még javítás előtt tudomást szerezhet a sérülékenységről.
SM08|1|A támadó automatikus vagy manuális kódanalízise sérülékenységet fed fel.
SM09|1|A támadó fél a forráskódban rejtett sérülékenységet helyez el.
SM10|4|Nem világos hogyan kerül összhangba a forráskódban tárolt személyi adatok kérdése az adatvédelmi szabályozással (pl. GDPR).
SM11|1|Az architektúra dokumentáció sokszor hiányos, így a tervezési hibákból adódó sérülékenységek nem nyilvánvalóak.
SS01|2|A megfelelő belső FLOSS szabályozás hiánya, átláthatatlan FLOSS felhasználáshoz vezet, a problémákat nem lehet megfelelően kezelni.
SS02|2|FLOSS komponens-felhasználás esetén az összetett és rejtett licencelés a szervezet tudta nélkül kompromittálhatja a jogszabályi megfelelést, ami kikényszerített határidős módosításokhoz vezet, veszélyeztetve a rendszer rendelkezésre állását és integritását.
SS03|2|A termék összetett függőségeiben ellentmondásos licencek találhatók vagy a licencelés megváltozik ami ellentmondáshoz vezet.
SS04|2|FLOSS projektek ritkán szereznek tanúsítást. Következésképpen nem alkalmazhatók olyan területeken ahol a tanúsítvány megléte előkövetelmény.
SS05|1|GPL licencű alkalmazások nem integrálhatják a szabadalomhoz kötött biztonsági megoldásokat
ST01|1|A gyors kiadási sűrűség és munkaigényes frissítés miatt a biztonsági javításokat nem vezetik át a downstream termékbe
ST02|2|Nincs szerződésben biztosított időkorlát a javításra, a javítás késhet.
ST03|2|Az udvariatlanul kért hibajavítást nem javítják megfelelő sebességgel.
ST04|2|Kiadás csúszása miatt a fejlesztői verziót kezdik el használni.
ST05|2|A szervezet félkész terméket tölt le.
ST06|2|Nincs szakemberképzés, előfordulhat, hogy a szervezet nem talál megfelelő szakembert, nincs tanúsítás a szaktudásra.
ST07|2|Nincs szervezett képzés, az autodidakta tanulás minősége nem garantál, ami hibákhoz vezethet.
ST08|2|A letöltött bináris változat nem a kiadott forrásból készült
ST09|2|A letöltött bináris ellenőrzőösszegét vagy aláírását a felhasználó nem ellenőrzi.
ST10|1|A keresőmotor nem a megfelelő verziót vagy disztribútort hozza fel.
ST11|2|A felhasznált csomagkezelő rendszer (CPAN, hackage, deb) támadásával a felhasznált komponens támadható.
ST12|1|Fejlesztői kapcsolati információk hiányában a felfedett sérülékenységek bejelentése nehézségekbe ütközik, nincs biztonsági kapcsolattartó személy vagy fórum megjelölve.

:Azonosított javaslatok

kód |szint|leírás                                                                        
---:|:--:|:---------------------------------------------------------------------------------
JF01|4|A szervezet részt vesz a projekt fejlesztésében, így biztosítva a számára kedvező célok elérését.
JF02|4|A kód-hozzájárulásokat a projektre vonatkozó formai és minőségi szabályok betartásával, lehetőleg egy ismert közösségi tag segítségével kell bevezetni.
JF03|1|Közvetlenül, kvantitatív módon ellenőrizhető a minőség szintje.
JF04|3|Lehetőség van saját alternatív (forkolt) változat létrehozására.
JF05|2|Egy adott állapot rögzítésével (snapshot) elkerülhető a folyamatos változás okozta problémák egy része.
JF06|1|Az átláthatóság lehetővé teszi az önbevallás alapú minősítést a kódminőség és legjobb fejlesztési gyakorlat terén.
JG01|1|A FLOSS állami vagy nemzetközi szinten kell támogatni, mert fellendülése a munkaoptimalizáció révén növeli az információbiztonságot.
JG02|2|A nyílt modell kockázatainak és lehetőségeinek oktatása szerepeljen a megfelelő oktatási intézményekben.
JG03|3|Országos vagy európai egységes forráskód kezelő rendszer kialakítása szükséges.
JH01|1|Formális tanúsítás híján a felhasznált komponensek kódját megbízhatósági modellekkel kell vizsgálni (pl. CodeTrust).
JH02|3|A kód szabad módosíthatósága miatt várakozás nélkül javíthatóak a sérülékenységek, amennyiben a kód módosításához szükséges erőforrás és szakismeret rendelkezésre áll.
JH04|2|A felhasználandó FLOSS komponenseket erre szakosodott szakértők révén szerezzük be.
JH05|1|A FLOSS komponens kiválasztásának folyamatát és körülményeit dokumentálni kell.
JH06|4|A kód változásait lehetőség szerint vissza kell vezetni az eredeti projektbe.
JH07|3|A fejlesztést végző részlegnek legyen megfelelő verzió-követési terve.
JH08|3|A beszállító vagy a fejlesztést végző részleg alkalmazzon FLOSS komponens kezelő keretrendszert.
JH10|4|A forráskódban minden nem publikus információ világosan definiált legyen. A változások visszavezetésekor automatizált rendszerrel meg kell akadályozni a minősített információ kiszivárgását.
JH11|2|Képzésekkel kell tudatosítani a komponens integrációval járó veszélyeket és a biztonságos felhasználáshoz szükséges eljárásokat
JJ01|1|Ki kell használni a nyílt forrás nyilvános adatait a termékminősítés kalibrációja és validálása során.
JJ02|1|A minősítés belsőleg is elvégezhető, bár rendkívül erőforrásigényes.
JJ03|1|Szükség esetén harmadik felet kell felkérni a biztonsági hiányosságok feltárására és a komponens minősítésére.
JK01|4|A közösségbe fejlesztőket kell delegálni akiknek lehetőség szerint mentort kell keresni.
JK02|2|A belső szerkezet elemezhető, meghatározhatók a kulcsszereplők. Az adatok alapján kockázatelemzés végezhető.
JK03|2|A digitális aláírásokat használó fejlesztők nyílt kulcsait (rendszerint GPG) be kell szerezni, biztonságos adatbázisban kell tárolni, hozzáférhetővé tenni és szükség esetén ellenőrizni.
JK04|2|Folyamatosan monitorozni kell a közösséget.
JK05|2|Megfelelő lobbierőt kell kiépíteni az érdekérvényesítő képesség érdekében.
JK06|2|Kapcsolatépítéssel és személyes találkozásokkal erősíthető a közösséggel való együttműködés (pl.találkozók szervezése).
JK07|2|A vezetőkben tudatosítani kell, hogy az OSSD fejlesztőit más módon kell motiválni.
JK08|4|Felelőst kell kijelölni (Gatekeeper) aki a közösséggel való kapcsolattartást és az oda áramló információt ellenőrzi.
JK09|4|A közösségbe delegált fejlesztők elkülönített kommunikációja előnytelen, a közösségi csatornán folyó kommunikáció információtartalmára oda kell figyelni.
JM01|1|Automatizált módszerekkel elemezhetőek a hibajegyek adatai
JM02|2|Be kell azonosítani azokat a fejlesztőket, akik hatékonyan javítják a hibákat.
JM03|2|Be kell azonosítani és követni azokat a hibakeresőket, akik valóban értékes hibajegyeket vesznek fel.
JM04|2|A hibakezelésben és fejlesztői kommunikációban aktív módon részt kell venni, az információáramlás gyorsítása végett.
JM05|1|Kódminőség vizsgálati módszerekkel elemezni lehet az elérhető forráskódot, ami szolgáltatásként is igénybe vehető.
JM06|3|A kód alapján eldönthető, hogy a hiba valóban az adott rendszerből származik-e vagy sem.
JM07|3|A kód alapján bizonyítható, hogy nem történik illegális adatgyűjtés (TCG kompatibilitás).
JM08|4|Résztvétel esetén megfelelő szintre kell hozni a dokumentációt és tisztázni kell a feladatköröket.
JM09|1|Elemezni kell a metaadatokat, vagy ilyen elemzést lehetővé tevő minősítő keretrendszert kell igénybe venni.
JM10|3|A magas biztonsági követelményű feladatokra a szervezet csak formálisan ellenőrizhető nyílt forráskódot használ.
JM11|1|Forráskód és a hibajegyek elemzésével megítélhető a projekt stabilitása és fejlődési lehetőségei.
JM12|1|Forráskód átnézésével a kódminőség közvetlenül becsülhető, az alacsony minőség nem rejthető el.
JM13|2|A hibajegyeket már a kezdetektől jó minőségben, reprodukálást lehetővé tevő módon kell felvinni.
JS01|2|Dedikál FLOSS szabályzatot kell létrehozni vagy integrálni kell az egyedi elveket a saját eljárásokba.
JS02|4|Azonosítani és követi kell a felhasznált FLOSS elemeket, azok licenceit és tisztázni a vonatkozó felelősségeketet és szerepeket.
JS03|3|A nyílt forrású licencek jogi keretet biztosítanak az azonnali helyi módosításokhoz, így azok szükség esetén külön megegyezés nélkül bármikor elvégezhetők.
JS04|2|A fejlesztésben licenckezelő célszoftvereket kell használni.
JS05|1|A beszállítóktól meg kell követelni a licenc-tudatosságot, a szállított szoftver esetén a felhasznált komponensek licenclistáját.
JS06|1|Alternatív tanúsítási megoldások és/vagy központi költségvetésből finanszírozott hagyományos tanúsítási eljárások szükségesek.
JS07|1|A FLOSS kormányzati szintű szabályozása fontos lenne a FLOSS integráció jogi kérdéseinek tisztázása érdekében.
JT01|2|Nyomon kell követni a frissítéseket.
JT02|2|Ellenőrzni kell a forráskód archívumának ellenőrző összegét, adott esetben a forráskódot.
JT03|1|Meg kell határozni milyen forrásból és milyen feltételek mellett engedélyezett a kódfelhasználás.
JT04|3|Ellenőrizni kell a DVCS változáskészletét tanúsító digitális aláírásokat.
JT05|3|A FLOSS projektet az eredeti forrásból kell fordítani, a bináris integritásának biztosítása végett.
JT06|2|Össze kell gyűjteni és lehetőség szerint folyamatosan frissíteni a felhasznált FLOSS projekt sértetlenségének biztosítására használt valamennyi kriptográfiai nyílt kulcsot.
JT07|3|Kritikus esetben a hibajavítást önerőből kell és lehet megoldani.
JT08|2|A komponenskezelő rendszerek biztonsági auditálási képességeit ki kell használni.
