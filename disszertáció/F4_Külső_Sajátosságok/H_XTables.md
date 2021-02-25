:A *H* kategóriában azonosított problémák

kód |szint|leírás                                                                            | sajátosság
---:|:--:|:---------------------------------------------------------------------------------|---------------
SH01|1|A szervezet nem megfelelő minősítő rendszert alkalmaz a FLOSS termék minősítésére.|[FS-H-M](#sec:FS-H-M)
SH02|1|Megfelelő változat kiválasztása nehéz és időigényes. Emiatt előfordulhat, hogy nem a megfelelő változat kerül alkalmazásra.|[FS-H-M](#sec:FS-H-M)
SH03|2|A kontroll nélküli (esetleg rejtett) integráció a hibás komponensek révén sérülékenységek akaratlan beépítéséhez vezet.|[FS-H-I](#sec:FS-H-I)
SH04|1|A FLOSS komponensek minősítésére nem alkalmas a COTS esetén megszokott módszertan.|[FS-H-M](#sec:FS-H-M)
SH05|2|Az integrátor nem ismeri megfelelő mélységben az integrálandó komponenst így hibákat vezet be az integráció során.|[FS-H-M](#sec:FS-H-M)
SH06|3|Az integrált komponensen végzett módosítások összeütközésbe kerülnek az eredeti kódbázissal, ami a frissítések során hibákhoz vagy sérülékenységhez vezethet.|[FS-H-T](#sec:FS-H-T)
SH07|4|A szükséges módosításokat nem sikerül visszavezetni, a közösség elutasítja így a kódbázis ütközéseit folyamatosan figyelni kell, ami időigényes és hibalehetőségekkel terhelt.|[FS-H-M](#sec:FS-H-M)
SH08|1|Az integrált komponens összetett függőségein keresztül hibás (és ellenőrizetlen) alkomponensek szivároghatnak a fejlesztésbe.|[FS-H-M](#sec:FS-H-M)
SH09|4|A módosítások visszavezetése során érzékeny információ szivárog ki az upstream projektbe.|[FS-H-M](#sec:FS-H-M)
SH10|1|Kompatibilitási problémák miatt a szervezet által alkalmazott felügyeleti rendszer nem támogatja a FLOSS változatot.|[-](#sec:-)
SH11|1|A szükséges adatmigrációt követően a korábbi mentések helyreállítása nehézzé vagy lehetetlenné válik, veszélyeztetve a rendelkezésre állást.|[FS-H-A](#sec:FS-H-A)

:A *H* kategóriában azonosított javaslatok

kód |szint|leírás                                                                            | probléma
---:|:--:|:---------------------------------------------------------------------------------|---------------
JH01|1|Formális tanúsítás híján a felhasznált komponensek kódját megbízhatósági modellekkel kell vizsgálni (pl. CodeTrust).|SF05, SH01, SH02
JH02|3|A kód szabad módosíthatósága miatt várakozás nélkül javíthatóak a sérülékenységek, amennyiben a kód módosításához szükséges erőforrás és szakismeret rendelkezésre áll.|
JH04|2|A felhasználandó FLOSS komponenseket erre szakosodott szakértők révén szerezzük be.|SF05, SH04, SH05, SH08, SJ01, SM06
JH05|1|A FLOSS komponens kiválasztásának folyamatát és körülményeit dokumentálni kell.|SF05, SF10, SH05
JH06|4|A kód változásait lehetőség szerint vissza kell vezetni az eredeti projektbe.|SF07, SF11, SH06
JH07|3|A fejlesztést végző részlegnek legyen megfelelő verzió-követési terve.|SF07, SF10, SF13, SH06
JH08|3|A beszállító vagy a fejlesztést végző részleg alkalmazzon FLOSS komponens kezelő keretrendszert.|SF07, SF10, SF13, SH03, SH06, SH08, SS02, SS03
JH10|4|A forráskódban minden nem publikus információ világosan definiált legyen. A változások visszavezetésekor automatizált rendszerrel meg kell akadályozni a minősített információ kiszivárgását.|SF07, SH09
JH11|2|Képzésekkel kell tudatosítani a komponens integrációval járó veszélyeket és a biztonságos felhasználáshoz szükséges eljárásokat|SF13, SH04, SH05, SH06, SH08, SH09
