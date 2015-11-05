/*
"Definer predikat" betyr å definere også eventuelle hjelpepredikater, dersom slike trenges.

1) Definer Prolog predikat
 (a) func( +A, +B, +C )
      som holder hvis C er en total funksjon fra (elementer i listen) A til (elementer i listen) B. Funksjonen C kan representeres, f.eks., som liste av par [a:b | H] der 
      a er fra A og b, fra B, er C sin verdi ved punktet a. Kolon brukes her kun for lesbarhet av notasjon - den har ingen spesiell betydning her.)

 (b) func( +A, +B, C )
      endre definisjon fra punkt (a) slik at et kall klarer også å generere alle funksjoner fra A til B. 

2) Definer Prolog predikat quicksort(L,K) som, gitt en liste av heltall L, returnerer den sortert i K, der sorerting skjer med quicksort.
   (Pivot for oppdeling av listen kan velges som det passer deg best.) 

3) Definer Prolog predikat ant(+L,B) som, gitt en liste L, returnerer i B en liste med par, f.eks., E:N,
   der E er et element som forekommer i L og N er antallet av Es forekomster i L. B skal ikke ha gjentatte elementer,
   men den kan inneholde elementer fra L i en annen rekkefølge enn i L. Det bør genereres nøyaktig en løsning uten gjentakelser.

4) Definer Prolog predikat 
	allePar(N,L)
   som git et tall N>0, gir i L liste med alle par av tall A:B, der 1 <= A,B <= N.
   Unngå duplikater!
*/

qksort()
%qksort(PIV, L, SORTED):- 
qksort(L, SORTED):-