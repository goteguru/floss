
Nyílt forráskód értelmezése{#sec:WhatIsFLOSS}
-----------------------------

A kutatás témájául szolgáló nyílt forráskód meghatározása nem egyértelmű, hiszen ha megkérdezünk egy menedzsert, egy fejlesztőt és egy biztonsági szakembert, szinte bizonyos, hogy némiképp hasonló de alapvetően háromféle választ fogunk kapni. A fogalom mindenkinek kicsit mást jelent, amit tovább bonyolít a számtalan különféle elnevezés amelyek között gyakoriak a fogalmi átfedések. 

Nevezik nyílt forrásnak, szabad szoftvernek, az angol nyelvben elterjedt a open source software, libre software, free software kifejezés, a F/LOSS és OSSD betűszavak, illetve találkozhatunk a F/OSS, F/OSSD, FOSSD alakokkal is. Érthetnek alatta jogi fogalmat, filozófiát, közösséget, fejlesztési módszertant, terméket vagy éppen a konkrét forráskódot. 

Kutatásomban a nyílt forrásra mint jelenségre koncentráltam, tehát nem az egyes ingyenesen elérhető szoftvertermékeket értem alatta, hanem azt az összetett társadalmi jelenséget és módszertant, ami által ezek a termékek és licencek létrejöttek, beleértve azok minden aspektusát. Ezt a jelenséget a kutatás során Nyílt Fejlesztési Modellnek nevezem. A Nyílt Fejlesztési Modell által létrehozott, licencel rendelkező szoftvertermékekre Szabad Szoftverként fogok hivatkozni, hogy egyértelműen megkülönböztessem őket az egyéb, nem termék jellegű forráskódtól és információtól. Rövidítésként viszont a kevéssé szerencsés magyar rövidítés helyett a nemzetközi gyakorlattal jobb összhangban álló FLOSS betűszót használom. 

Nyílt forráskód alatt egy bővebb halmazt értek, amely magába foglalja a Szabad Szoftverek forráskódját, azok különféle kiadott és nem kiadott valamint fejlesztői verzióit, a verziókhoz tartozó metainformációkat, foltokat, a portálokon, blogokon, levelezőlistákon elérhető kóddarabkákat, javításokat, egyszóval minden olyan publikált forráskódszerű fejlesztői információt, amelyeket a licencek már esetleg nem fednek le, de általában mégis könnyen hozzáférhetőek.

A nyílt fejlesztési modell célját és motivációit a létrehozott termék, a Szabad Szoftver definícióján keresztül lehet a legkönnyebben megérteni. A következő fejezetben ezt fogom tehát bemutatni. 



### Szabad Szoftver{#sec:FSF_PONTOK}

A nehezen átlátható helyzetet jól jellemzi, hogy a fogalmat szabványosítani kívánó két szervezet a megnevezésben sem tudott közös nevezőre jutni [@richard_stallman_why_nodate]. A Richard Stallman ideológiai örökségét követő Free Software Foundation (FSF) a Free Software név mellett van és a szabadságjogokra helyezi a hangsúlyt, a valamivel üzletiesebb filozófiát követő Open Source Initiative (OSI) ellenben az Open Source megnevezést támogatja és inkább a praktikus és jogi aspektusra koncentrál.

Valójában a két fogalom közt nincs jelentős különbség, a nyílt forrásnak vagy szabad szoftvernek teljesíteni kell a következő 4 szabadsági jogot:

0. jogot arra, hogy futtassák a programot, bármilyen céllal^[Az FSF ezt a jogot 0. szabadságjognak nevezi, ezért az eredeti számozást megtartva közlöm];
1. jogot arra, hogy tanulmányozzák a program működését, és azt a szükségleteikhez igazíthassák. Ennek előfeltétele a forráskód elérhetősége.
2. jogot arra, hogy másolatokat tegyenek közzé a felebarátaik segítése érdekében;
3. jogot arra, hogy tökéletesítsék a programot, és a tökéletesített változatot közzétegyék, hogy az egész közösség élvezhesse annak előnyeit. Ennek előfeltétele a forráskód elérhetősége.

Az OSI megfogalmazásában, lényegében ugyanez 10 pontba szedve (és némiképp lerövidítve) így hangzik:

1. *Szabad terjesztés.*
A licenc nem korlátozhat semmilyen felet aki a szoftvert egy nagyobb szoftverdisztribúció részeként el szeretné adni, és nem kérhet ezért díjat sem.

2. *Forráskód.*
A programnak tartalmaznia kell a forráskódot, és engedélyeznie kell a bináris és forráskód formájú terjesztést. Ha a terméket forráskód nélkül árusítják, a forrás beszerezhetőségét egyértelműen meghatározott helyen, józan másolási díj ellenében biztosítani kell, lehetőleg az letölthető formában.

3. *Származtatott munkák.*
A licencnek engedélyeznie kell a módosítást és a származtatott munkák létrehozását, és meg kell engednie, hogy azt azonos feltételek mellett terjesszék.

4. *Szerző forráskódjának megőrzése.*
A licenc csak akkor tilthatja az forráskód módosított formájának terjesztését, ha a licenc megengedi a folt (patch) állományok terjesztését, amivel fordításkor az eredeti forrás módosítható. A licencnek explicit engedélyeznie kell az ilyen forrásból létrehozott szoftver terjesztését. 

5. *Személyek és csoportok diszkriminációjának tilalma.*
A licenc nem diszkriminálhat személyeket vagy csoportokat

6. *Területek diszkriminációjának tilalma.*
A licenc nem tilthatja meg hogy a szoftvert egy adott területen használják (pl. üzleti felhasználás, vagy genetikai kutatások területe)

7. *Licenc terjesztése.*
A programhoz kötődő jogok legyenek érvényesek mindenkire aki a terjesztés során azt megkapta, anélkül hogy egyéb licencek kötelezettségeinek meg kellene felelniük.

8. *A licenc nem lehet termékspecifikus.*
A programra vonatkozó jogok nem függhetnek attól hogy a program egy nagyobb disztribúció része-e. Amennyiben a programot kiemelik a disztribúcióból és a program licence alapján terjesztik, azokat akik megkapták az eredeti programmal azonos jogok illetik meg.

9. *A licenc nem korlátozhat más programokat.*
A licenc nem korlátozhat vele együtt terjesztett más programokat, nem mondhatja például, hogy a vele azonos médiumon lévő programok is nyílt forrásúak legyenek. 

10. *A licenc legyen technológia-független.*
A licenc nem tehet kitételeket semmilyen technológiára vagy interfész stílusra.


Mint látható az OSI verzió inkább a kiskapuk explicit bezárására koncentrál, de elveit tekintve nagyon hasonló az FSF verziójához. Jelenleg több mint 80 OSI kompatibilis licenc létezik. Legismertebb és egyben leggyakrabban használt ezek közül az Apache, BSD, a GNU General Public License (GPL), GNU Library vagy "Lesser" General Public License (LGPL), az MIT és a Mozilla.

Néhány licenc nagyobb szabadságot ad mint mások, általában két nagy csoportot az kötött és engedékeny nyílt forrású licenceket különböztetjük meg. Részletesebben [-@sec:FS-SZ-L] fejezetben foglalkozom a licencelés kérdésével.


### Nyílt Fejlesztési Modell fajtái

A kezdetek kezdetén valójában minden kód nyílt forrású volt, hiszen a korai fejlesztők kutatók voltak, akik nem terveztek gazdasági hasznot húzni az általuk írt kódból, szabadon cserélték és terjesztették azt. Helyesebb lenne tehát úgy fogalmazni, hogy minden szoftver őse a nyílt forráskódú szoftver, azaz ez volt a Szoftver, és csak később a szoftveripar üzletiesedésével jelentek meg a licencelt vagyis jogokhoz kötött, *korlátozott szoftverek*. 

A Nyílt Modelltől való egyértelmű megkülönböztetés érdekében az ilyen termékek létrehozásához vezető módszertant és gondolkodásmódot *Zárt Modellnek*, a létrehozott terméket pedig *üzleti szoftvernek* fogom nevezni. 

A számítástechnika hőskora óta mindkét modell sokat változott, mindkét oldal egyes csoportjai integráltak bizonyos számukra előnyös elemeket a másik módszertanából, miközben más csoportok megtartották a korai "tiszta" irányzatot. Így napjainkban mindkét modell számos változata létezik párhuzamosan egymás mellett. 


A Nyílt modell alapja a *Közösség*, amely a fejlesztők és felhasználók egymással folyamatosan kommunikáló, és egymást részben átfedő halmaza. 

Az eredeti, üzleti módszereket nem használó, sőt gyakran elutasító közösséget *klasszikus nyílt fejlesztői közösségnek* vagy röviden klasszikus nyílt közösségnek nevezem. A klasszikus nyílt közösségben csak a felhasználók között találunk cégeket, a fejlesztést teljes egészében a közösség végzi, pénzbeli ellenszolgáltatást a fejlesztők nem kapnak.

![Nyílt és Zárt fejlesztési modell, közösségek és termék összefüggései (szerkesztette a szerző)](ábrák/nyílt-és-zárt-modell.pdf)

A nyílt modell előretörésével a cégek egyre inkább szerepet kívántak vállalni a fejlesztésekben, amit először támogatások, később pedig fizetett fejlesztők formájába tehettek meg, amivel megszületett a *szponzorált nyílt közösség*. A szponzorált nyílt közösséget -- amelyben a cégek is fejlesztő szerepet töltenek be -- a nemzetközi irodalomban általában Sponsored Open Source Community néven találhatjuk meg [@capiluppi_exploring_2012]. 

A nyílt közösség harmadik alaptípusa, amikor a közösség kezdetektől fogva egy vagy több irányító szerepet betöltő cég körül szerveződik vagy egy piaci szereplő idővel átveszi a projekt irányítását. Ez történhet úgy, hogy a cég megnyitja valamilyen korábban zárt modellben készült szoftverének forráskódját, illetve napjainkban egyre gyakrabban úgy is, hogy eleve a kezdetektől nyílt modellben szeretne fejleszteni, miközben az irányítást biztos kézben tartja. Az ilyen közösségeket alapvetően az ipar irányítja, ezért ezeket *irányított nyílt közösségnek* nevezem. 



