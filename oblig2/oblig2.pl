%Oppgave 1.
s1([a|T]):- a1(T).
s1([c|T]):- s1(T).
a1([b|T]):- b1(T).
b1([c|T]):- s1(T).
b1([a|T]):- a1(T).
b1([]).

acc(S):- s1(S), !.


%Oppgave 2.
%Evaluate arithmetic prefix expression
ev(L, R):- evalexp(L, R, Tail), !.
evalexp([+|Ls], R, Tail):- evalexp(Ls, X, Tl1), evalexp(Tl1, Y, Tail), R is X + Y.
evalexp([-|Ls], R, Tail):- evalexp(Ls, X, Tl1), evalexp(Tl1, Y, Tail), R is X - Y.
evalexp([*|Ls], R, Tail):- evalexp(Ls, X, Tl1), evalexp(Tl1, Y, Tail), R is X * Y.
evalexp([/|Ls], R, Tail):- evalexp(Ls, X, Tl1), evalexp(Tl1, Y, Tail), R is X / Y.
evalexp([L|Ls], L, Ls).

%Oppgave 3. 5 ?
%N = brett størrelse, Ant = antall brikker, Type = Type brikker, S = Svar alternativ produsert



% holder dersom X er antallet forskjellige løsninger S
% generert ved et kall pl(N,Ant,Type,S).
%nrpl(N, Ant, Type, X):-  

pl(N, Ant, _, []).
pl(N, Ant, spr, S):- checkAll(N, Ant, spr, S, S). 

checkAll(N, Ant, Type, [[I,J]], Chklist):-
    spr([I,J], N, Chklist).
    
checkAll(N, Ant, Type, [[I,J]|Ps], Chklist):-
    spr([I,J], N, Chklist),
    checkAll(N,Ant,Type,Ps,Chklist).


spr([I,J], N, SprList):-
    inside([I,J], N),
    chkrelative([I,J], N, [[-2,1],[-1,2],[1,2],[2,1],[-2,-1],[-1,-2],[1,-2],[2,-1]], SprList).

chkrelative([I,J], N, [], SprList).
chkrelative([I,J], N, [[X,Y]|Rs], SprList):-
    %\+ inside([X2,Y2],N), X2 is I + X, Y2 is J + Y;
    \+ member([X2,Y2], SprList),
    chkrelative([I,J], N, Rs, SprList), X2 is I + X, Y2 is J + Y.

%position is withing bounds of N
inside([I,J],N):- I =< N, I > 0, J =< N, J > 0.

%gtpos([X,Y], X, Y).