:A *T* kategóriában azonosított problémák

kód |szint|leírás                                                                            | sajátosság
---:|:--:|:---------------------------------------------------------------------------------|---------------
ST01|1|A gyors kiadási sűrűség és munkaigényes frissítés miatt a biztonsági javításokat nem vezetik át a downstream termékbe|FS-T-K
ST02|2|Nincs szerződésben biztosított időkorlát a javításra, a javítás késhet.|FS-T-K
ST03|2|Az udvariatlanul kért hibajavítást nem javítják megfelelő sebességgel.|FS-T-K
ST04|2|Kiadás csúszása miatt a fejlesztői verziót kezdik el használni.|FS-T-K
ST05|2|A szervezet félkész terméket tölt le.|FS-T-E
ST06|2|Nincs szakemberképzés, előfordulhat, hogy a szervezet nem talál megfelelő szakembert, nincs tanusítás a szaktudásra.|FS-T-T
ST07|2|Nincs szervezett képzés, az autodidakta tanulás minősége nem garantál, ami hibákhoz vezethet.|FS-T-T
ST08|2|A letöltött bináris változat nem a kiadott forrásból készült|FS-T-M
ST09|2|A letöltött bináris ellenőrzőösszegét vagy aláírását a felhasználó nem ellenőrzi.|FS-T-M
ST10|1|A keresőmotor nem a megfelelő verziót vagy disztribútort hozza fel.|FS-T-L
ST11|2|A felhasznált csomagkezelő rendszer (CPAN, hackage, deb) támadásával a felhasznált komponens támadható.|FS-T-M

:A *T* kategóriában azonosított javaslatok

kód |szint|leírás                                                                            | probléma
---:|:--:|:---------------------------------------------------------------------------------|---------------
JT01|2|Nyomon kell követni a frissítéseket.|SF10, SF13, ST01
JT02|2|Ellenőrzni kell a forráskód archívumának ellenőrző összegét, adott esetben a forráskódot|ST08, ST09, ST11
JT03|1|Meg kell határozni milyen forrásból és milyen feltételek mellett engedélyezett a kódfelhasználás.|SF10, SF13, ST04, ST08, ST10, ST11
JT04|3|Ellenőrizni kell a DVCS változáskészletét tanúsító digitális aláírásokat.|ST08
JT05|3|A FLOSS projektet az eredeti forrásból kell fordítani, a bináris integritásának biztosítása végett.|ST08, ST10
JT06|2|Össze kell gyűjteni és lehetőség szerint folyamatosan frissíteni a felhasznált FLOSS projekt sértetlenségének biztosítására használt valamennyi kriptográfiai nyílt kulcsot.|ST08, ST09
JT07|3|Kritikus esetben a hibajavítást önerőből kell és lehet megoldani.|SF07, SF11
