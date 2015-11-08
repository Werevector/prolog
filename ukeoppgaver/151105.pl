/**
Vi minner om at neste uke blir det løsing av ukesoppgavene i forelesningene, i tillegg til de vanlige gruppetimene.

1) Vi representerer rettede grafer som lister med kanter, nemlig, par K:M, der K er kilde- og M mål-node av kanten K:M. 
F.eks. [a:b,b:c,c:a,c:d] representerer grafen:
 a -> b -> c -> d  med en ekstra kant c -> a.

En sti er en sekvens av noder [x1,x2,...,xn] slik at for hver 1 <= i < n er xi : xi+1 en kant i grafen. 

En sti er en (enkel) sykel når xn =x1 (og for alle 1<=i<j<=n: xi  ?= xj).

Definer et predikat cyc(G) som holder hvis og bare hvis grafen G har minst en (enkel) sykel. F.eks. skal 
?- cyc(g) gi true.
for grafen fra begynnelsen av denne oppgaven, mens for grafen a -> b -> c -> d, skal den gi false.

[Hint: Definer et hjelpepredikat sti som bestemmer om det finnes en sti (evt. finner alle stier) mellom to gitte noder i grafen.]


2) Definer predikat roter(+L,+N,R) som roterer syklisk listen L med N
posisjoner til venstre, f.eks.

roter([a,b,c,d], 1, [b,c,d,a]).
roter([a,b,c,d], 6, [c,d,a,b]).
roter([a,b,c,d], 3, [d,a,b,c]).

3) Definer predikat uendret(+L,+N,K) som holder dersom listen L
forblir uendret når den roteres syklisk K posisjoner til
venstre, der K > 0 og K <= N. 
(Du kan anta at L ikke inneholder variabler ved kall.)
F.eks.:

	uendret([a,b,c,d], 4, 4).
	uendret([a,b,c,a,b,c], 4, 3).

skal begge gi true.

4) 
Prolog predikat call kan brukes for å omdanne et argument
til et mål, f.eks.

	holder(P,X,Y) :- call(P,X,Y).

tilsvarer en definisjon 

	holder(P,X,Y) :- P(X,Y).

der variabelen P instansieres først ved et kall til holder. 

Definer predikat remD(+A,+P,B) som holder hvis
liste B er den samme som listen A med alle P-duplikater fjernet,
der P er et binært predikat. To elementer x og y er P-duplikater
dersom P(x,y) evaluerer til true. (Spesielt, et kall remD(A,=,B)
skal gi i B dellisten av A uten vanlige duplikater, dvs. der ingen to
elementer er like under =.)

5) Definer predikat
	queens(+N,X)
som holder hvis og bare hvis N er et heltall (antatt større enn 0) og X er
en løsning paa N-dronningsproblemet. Nemlig, N angir størrelse paa et NxN
brett, der man skal plassere N dronninger slik at ingen slaar hverandre.
(En dronning kan slaa en brikke som staar i samme rad eller samme kolonne
eller paa samme diagonalen (enten / eller \) som dronningen.) 

En plassering kan best representeres som en liste av par av tall fom.1 tom.
N, helst, sortert på første elementet, der hvert R:K betegner en dronning 
plassert i rad R og kolonne K.  F.eks., for N=4, representerer listen
[1:1,2:2,3:3,4:4] plasseringen av dronningene paa (den ene) diagonalen
(altsaa ikke en løsning), mens [1:3,2:1,3:4,4:2] og [1:2,2:4,3:1,4:3] 
representerer to eneste løsninger (som skal skrives ut etter query
queen(4,X)).

[Hint: Løsning paa hele oppgaven bør ikke ha mer enn ca. 15 klausuler.]

Oppgaver fra Prolog Kompendiet 
(unifikasjon og søketrær):

  6)  2.4 
  7)  3.1
  8)  3.2
  9)  4.1
10)  4.2
11)  4.3
**/




