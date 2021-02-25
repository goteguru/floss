:A *F* kategóriában azonosított problémák

kód |szint|leírás                                                                            | sajátosság
---:|:--:|:---------------------------------------------------------------------------------|---------------
SF01|1|Nincs formális tesztelés, ami megnehezíti a minőség-ellenőrzést.|FS-F-T
SF02|1|Nem piac vezéreltek a követelmények, a biztonság nem feltétlen szempont, amire nincs ráhatásunk.|FS-F-K
SF03|1|Nincs formális biztonsági tervezés az informális követelményeket nehéz minősíteni.|FS-F-K
SF04|3|A kódbázisba sérülékenységet vezetnek be, ami az upstream változaton keresztül eléri a szervezet kódbázisát.|FS-F-P
SF05|1|Hagyományos minőségbiztosítási elveknek nem felel meg, emiatt nehéz összehasonlítani, értékelni.|FS-F-M
SF06|1|A beszállító vagy közösség nem monitorozza saját komponens projektjeit. Az azokban bevezetett sérülékenység a terméken keresztül a szervezethez is eljut.|FS-F-P
SF07|3|A szervezet forkolja az eredeti kódbázist, de nincs erőforrása karbantartani azt.|FS-F-V
SF10|3|A komponensek közötti szoros függőségek miatt a komponens frissítése számos részkomponens frissítését vonja maga után, ami ütközéshez és hibákhoz vezethet.|FS-F-P
SF11|3|A kompatibilitás érdekében helyileg módosított komponens sérülékenységet vezet be.|FS-F-P
SF12|4|A fejlesztőtábor kicsiny mérete lassítja vagy ellehetetleníti a hozzájárulásaink időben történő integrálását.|FS-F-V
SF13|2|A fejlesztői vagy tesztelés alatti állapot használata növeli a sérülékenységek esélyét|FS-F-T
SF14|3|A szervezet fejlesztőeszközei nem kompatibilisek a projektben használtakkal, ami lassítja  az együttműködést.|FS-F-E
SF01|1|Nincs formális tesztelés, ami megnehezíti a minőség-ellenőrzést.|[FS-F-T](#sec:FS-F-T)
SF02|1|Nem piac vezéreltek a követelmények, a biztonság nem feltétlen szempont, amire nincs ráhatásunk.|[FS-F-K](#sec:FS-F-K)
SF03|1|Nincs formális biztonsági tervezés az informális követelményeket nehéz minősíteni.|[FS-F-K](#sec:FS-F-K)
SF04|3|A kódbázisba sérülékenységet vezetnek be, ami az upstream változaton keresztül eléri a szervezet kódbázisát.|[FS-F-P](#sec:FS-F-P)
SF05|1|Hagyományos minőségbiztosítási elveknek nem felel meg, emiatt nehéz összehasonlítani, értékelni.|[FS-F-M](#sec:FS-F-M)
SF06|1|A beszállító vagy közösség nem monitorozza saját komponens projektjeit. Az azokban bevezetett sérülékenység a terméken keresztül a szervezethez is eljut.|[FS-F-P](#sec:FS-F-P)
SF07|3|A szervezet forkolja az eredeti kódbázist, de nincs erőforrása karbantartani azt.|[FS-F-V](#sec:FS-F-V)
SF10|3|A komponensek közötti szoros függőségek miatt a komponens frissítése számos részkomponens frissítését vonja maga után, ami ütközéshez és hibákhoz vezethet.|[FS-F-P](#sec:FS-F-P)
SF11|3|A kompatibilitás érdekében helyileg módosított komponens sérülékenységet vezet be.|[FS-F-P](#sec:FS-F-P)
SF12|4|A fejlesztőtábor kicsiny mérete lassítja vagy ellehetetleníti a hozzájárulásaink időben történő integrálását.|[FS-F-V](#sec:FS-F-V)
SF13|2|A fejlesztői vagy tesztelés alatti állapot használata növeli a sérülékenységek esélyét|[FS-F-T](#sec:FS-F-T)
SF14|3|A szervezet fejlesztőeszközei nem kompatibilisek a projektben használtakkal, ami lassítja  az együttműködést.|[FS-F-E](#sec:FS-F-E)

:A *F* kategóriában azonosított javaslatok

kód |szint|leírás                                                                            | probléma
---:|:--:|:---------------------------------------------------------------------------------|---------------
JF01|4|A szervezet részt vesz a projekt fejlesztésében, így biztosítva a számára kedvező célok elérését.|SF01, SF02, SF03, SF05, SF12, ST02
JF02|4|A kód-hozzájárulásokat a projektre vonatkozó formai és minőségi szabályok betartásával, lehetőleg egy ismert közösségi tag segítségével kell bevezetni.|SH07, SK01, SK03, SK04
JF03|1|Közvetlenül, kvantitatív módon ellenőrizhető a minőség szintje.|SF05, ST05
JF04|3|Lehetőség van saját alternatív (forkolt) változat létrehozására.|SF07, SF11
JF05|2|Egy adott állapot rögzítésével (snapshot) elkerülhető a folyamatos változás okozta problémák egy része.|SF04, SF06, SF07, SF10
JF06|1|Az átláthatóság lehetővé teszi az önbevallás alapú minősítést a kódminőség és legjobb fejlesztési gyakorlat terén.|SF02, SF03, SF05
