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

%tell([L|Ls], member):- L member Ls
%tell([L|Ls], [T|Ls]).

%ant([L|Ls],[B|Bs]):- \+ member(L, ant[Ls,B].

eat(E, [E|Xs], R):- eat(E, Xs, R).
eat(E, [X|Xs], R):- eat(E, Xs, [X|R]).  
eat(E, [], R).

cnt(_, [], 0).
cnt(X, [X|XS], R1) :- cnt(X, XS, R2), R1 is R2 + 1, !.
cnt(X, [_|YS], R) :- cnt(X, YS, R).


/**
%largerpart
qksrtpart([X|Xs], PIV, LESS, [X|Rs]):- X > PIV, qksrtpart(Xs, PIV, LESS, Rs).
qksrtpart([X|Xs], PIV, [X|Ls], LARGER):- X =< PIV, qksrtpart(Xs, PIV, LS, LARGER).
qksrtpart([], PIV, [], []).

partitionM([X|Xs],Y,[X|Ls],Rs) :-
  X =< Y, partition(Xs,Y,Ls,Rs).
partitionM([X|Xs],Y,Ls,[X|Rs]) :-
  X > Y, partition(Xs,Y,Ls,Rs).
partitionM([],Y,[],[]).

qksrtappend([], Ys, Ys).
qksrtappend([X|Xs], TAIL, [X|Zs]):- qksrtappend(Xs, TAIL, Zs). 

qksort([L|Ls], K):-
 qksrtpart(Ls, L ,Left, Right),
 qksort(Left, Les),
 qksort(Right, Ris),
 qksrtappend(Les, [L|Ris],K).
qksort([],[]).
**/
