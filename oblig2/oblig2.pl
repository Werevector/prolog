%Oppgave 1.
s1 --> [a], a1.
s1 --> [c], s1.
a1 --> [b], b1.
b1 --> [c], s1.
b1 --> [a], a1.
b1 --> [].

acc(S):- s1(S, []), !.


%Oppgave 2.
%Evaluate arithmetic prefix expression
eval(L, R):- evalexp(L, R, Tail), !.

evalexp([+|Ls], R, Tail):- evalexp(Ls, X, Tl1), evalexp(Tl1, Y, Tail), R is X + Y.
evalexp([-|Ls], R, Tail):- evalexp(Ls, X, Tl1), evalexp(Tl1, Y, Tail), R is X - Y.
evalexp([*|Ls], R, Tail):- evalexp(Ls, X, Tl1), evalexp(Tl1, Y, Tail), R is X * Y.
evalexp([/|Ls], R, Tail):- evalexp(Ls, X, Tl1), evalexp(Tl1, Y, Tail), R is X / Y.
evalexp([L|Ls], L, Ls).

%Oppgave 3.
%N = brett størrelse, Ant = antall brikker, Type = Type brikker, S = Svar alternativ produsert
pl(N, Ant, Type, S):-

