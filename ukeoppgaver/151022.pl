/**
Prolog-1:

1. Definer Prolog predikater som tilsvarer følgende Haskell funksjoner 
(dvs. for en Haskell funksjon f, skal vi ha et tilsvarende Prolog predikat ff slik at 
 ff(a,b) er oppfylt hvis og bare hvis f(a)=b):

 (a) andre (x:y:s) = y

(b) sist [x] = x
      sist (y:l) = sist l

 (c) cnt x [] = 0
      cnt x (y:l) = if x==y then 1+ cnt x l
                          else cnt x l

2. Definer Prolog predikater

 (a) palindrome/1, som holder hvis argumentet er en palindromliste 
      (dvs. en som er identisk til sin reverserte listen.)

 (b) reverse(+A, B)
       som holder hvis B er listen A reversert

 (c) perms( +A, B ) 
       som holder hvis og bare hvis B er en permutasjon av listen A.

 (d) remDupl( +A, NoDup )  
       som holder hvis og bare hvis NoDup er listen A med alle duplikater fjernet 
     (dvs. NoDup har kun en forekomst av hvert elemente som forekommer i A).

Test alle dine definisjoner på enkle eksempler.

3. Gitt program royalty.pl fra Prolog kompendiet, seksjon 1.4, definer et predikat
forgjenger/2, slik at forgjenger(X,Y) holder hvis og bare hvis X er forgjenger til Y. Test din definisjon ved kall
forgjenger(X, `Haakon'), forgjenger(X,'Olav V') og forgjenger(X,'Sonja').
**/



andre([_,X|TAIL], X).

sist([X], X):- !.
sist([_|Xs], R):- sist(Xs, R), !.

cnt(_, [], 0).
cnt(X, [X|XS], R1) :- cnt(X, XS, R2), R1 is R2 + 1, !.
cnt(X, [_|YS], R) :- cnt(X, YS, R).

