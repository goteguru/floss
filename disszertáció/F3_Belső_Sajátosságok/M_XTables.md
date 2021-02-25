:A *M* kategóriában azonosított problémák

kód |szint|leírás                                                                            | sajátosság
---:|:--:|:---------------------------------------------------------------------------------|---------------
SM01|2|A hibajegy válasz nélkül maradhat.|FS-M-H
SM02|2|A hiba javításának ellenőrzése késhet.|FS-M-H
SM03|2|A hiba nem reprodukálható ezért figyelmen kívül hagyják|FS-M-H
SM04|1|A forrástároló, a publikus hibajegyek és a hozzá tartozó foltok folyamatos analízisével a támadó sérülékenységeket fedezhet fel és használhat ki még azok javítása előtt.|FS-M-H
SM05|2|A hibajegy hibakeresési csatolmányaként érzékeny információ kerül a publikus hibakereső rendszerre.|FS-M-H
SM06|1|A nyilvános fejlesztői dokumentáció tervezési hiányosságokat tárhat fel.|FS-M-A
SM07|1|A fejlesztői kommunikáció elemzésével a támadó még javítás előtt tudomást szerezhet a sérülékenységről.|FS-M-A
SM08|1|A támadó automatikus vagy manuális kódanalízise sérülékenységet fed fel.|FS-M-I
SM09|1|A támadó fél a forráskódban rejtett sérülékenységet helyez el.|FS-M-I
SM10|4|Nem világos hogyan kerül összhangba a forráskódban tárolt személyi adatok kérdése az adatvédelmi szabályozással (pl. GDPR).|-
SM11|1|Az architektúra dokumentáció sokszor hiányos, így a tervezési hibákból adódó sérülékenységek nem nyilvánvalóak.|FS-M-A
SM01|2|A hibajegy válasz nélkül maradhat.|[FS-M-H](#sec:FS-M-H)
SM02|2|A hiba javításának ellenőrzése késhet.|[FS-M-H](#sec:FS-M-H)
SM03|2|A hiba nem reprodukálható ezért figyelmen kívül hagyják|[FS-M-H](#sec:FS-M-H)
SM04|1|A forrástároló, a publikus hibajegyek és a hozzá tartozó foltok folyamatos analízisével a támadó sérülékenységeket fedezhet fel és használhat ki még azok javítása előtt.|[FS-M-H](#sec:FS-M-H)
SM05|2|A hibajegy hibakeresési csatolmányaként érzékeny információ kerül a publikus hibakereső rendszerre.|[FS-M-H](#sec:FS-M-H)
SM06|1|A nyilvános fejlesztői dokumentáció tervezési hiányosságokat tárhat fel.|[FS-M-A](#sec:FS-M-A)
SM07|1|A fejlesztői kommunikáció elemzésével a támadó még javítás előtt tudomást szerezhet a sérülékenységről.|[FS-M-A](#sec:FS-M-A)
SM08|1|A támadó automatikus vagy manuális kódanalízise sérülékenységet fed fel.|[FS-M-I](#sec:FS-M-I)
SM09|1|A támadó fél a forráskódban rejtett sérülékenységet helyez el.|[FS-M-I](#sec:FS-M-I)
SM10|4|Nem világos hogyan kerül összhangba a forráskódban tárolt személyi adatok kérdése az adatvédelmi szabályozással (pl. GDPR).|[-](#sec:-)
SM11|1|Az architektúra dokumentáció sokszor hiányos, így a tervezési hibákból adódó sérülékenységek nem nyilvánvalóak.|[FS-M-A](#sec:FS-M-A)

:A *M* kategóriában azonosított javaslatok

kód |szint|leírás                                                                            | probléma
---:|:--:|:---------------------------------------------------------------------------------|---------------
JM01|1|Automatizált módszerekkel elemezhetőek a hibajegyek adatai|SF05, SF13
JM02|2|Be kell azonosítani azokat a fejlesztőket, akik hatékonyan javítják a hibákat.|SF13, SM01, SM02, SM03, ST02
JM03|2|Be kell azonosítani és követni azokat a hibakeresőket, akik valóban értékes hibajegyeket vesznek fel.|SF13
JM04|2|A hibakezelésben és fejlesztői kommunikációban aktív módon részt kell venni, az információáramlás gyorsítása végett.|SF13, SM01, SM02, SM03, SM07, ST02
JM05|1|Kódminőség vizsgálati módszerekkel elemezni lehet az elérhető forráskódot, ami szolgáltatásként is igénybe vehető.|SF05, SM04, ST05
JM06|3|A kód alapján eldönthető, hogy a hiba valóban az adott rendszerből származik-e vagy sem.|
JM07|3|A kód alapján bizonyítható, hogy nem történik illegális adatgyűjtés (TCG kompatibilitás).|
JM08|4|Résztvétel esetén megfelelő szintre kell hozni a dokumentációt és tisztázni kell a feladatköröket.|SJ01
JM09|1|Elemezni kell a metaadatokat, vagy ilyen elemzést lehetővé tevő minősítő keretrendszert kell igénybe venni.|SF05, SJ01, ST05
JM10|3|A magas biztonsági követelményű feladatokra a szervezet csak formálisan ellenőrizhető nyílt forráskódot használ.|SM08, SM09
JM11|1|Forráskód és a hibajegyek elemzésével megítélhető a projekt stabilitása és fejlődési lehetőségei.|SF05, SF07, SF13, SH02, SH03, SH04
JM12|1|Forráskód átnézésével a kódminőség közvetlenül becsülhető, az alacsony minőség nem rejthető el.|SF05, SM08
JM13|2|A hibajegyeket már a kezdetektől jó minőségben, reprodukálást lehetővé tevő módon kell felvinni.|SM01, SM02, SM03
