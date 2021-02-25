:A *S* kategóriában azonosított problémák

kód |szint|leírás                                                                            | sajátosság
---:|:--:|:---------------------------------------------------------------------------------|---------------
SS01|2|A megfelelő belső FLOSS szabályozás hiánya, átláthatatlan FLOSS felhasználáshoz vezet, a problémákat nem lehet megfelelően kezelni.|[FS-SZ-B](#sec:FS-SZ-B)
SS02|2|FLOSS komponens-felhasználás esetén az összetett és rejtett licencelés a szervezet tudta nélkül kompromittálhatja a jogszabályi megfelelést, ami kikényszerített határidős módosításokhoz vezet, veszélyeztetve a rendszer rendelkezésre állását és integritását.|[FS-SZ-L](#sec:FS-SZ-L)
SS03|2|A termék összetett függőségeiben ellentmondásos licencek találhatók vagy a licencelés megváltozik ami ellentmondáshoz vezet.|[FS-SZ-L](#sec:FS-SZ-L)
SS04|2|FLOSS projektek ritkán szereznek tanúsítást. Következésképpen nem alkalmazhatók olyan területeken ahol a tanúsítvány megléte előkövetelmény.|[FS-SZ-K](#sec:FS-SZ-K)
SS05|1|GPL licencű alkalmazások nem integrálhatják a szabadalomhoz kötött biztonsági megoldásokat|[FS-SZ-L](#sec:FS-SZ-L)

:A *S* kategóriában azonosított javaslatok

kód |szint|leírás                                                                            | probléma
---:|:--:|:---------------------------------------------------------------------------------|---------------
JS01|2|Dedikál FLOSS szabályzatot kell létrehozni vagy integrálni kell az egyedi elveket a saját eljárásokba.|SS01
JS02|4|Azonosítani és követi kell a felhasznált FLOSS elemeket, azok licenceit és tisztázni a vonatkozó felelősségeketet és szerepeket.|SS01
JS03|3|A nyílt forrású licencek jogi keretet biztosítanak az azonnali helyi módosításokhoz, így azok szükség esetén külön megegyezés nélkül bármikor elvégezhetők.|
JS04|2|A fejlesztésben licenckezelő célszoftvereket kell használni.|SF10, SS02, SS03
JS05|1|A beszállítóktól meg kell követelni a licenc-tudatosságot, a szállított szoftver esetén a felhasznált komponensek licenclistáját.|SF10, SS02
JS06|1|Alternatív tanúsítási megoldások és/vagy központi költségvetésből finanszírozott hagyományos tanúsítási eljárások szükségesek.|SF05, SS04
JS07|1|A FLOSS kormányzati szintű szabályozása fontos lenne a FLOSS integráció jogi kérdéseinek tisztázása érdekében.|SS02, SS03, SS05
