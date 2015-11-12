%Oppgave 3. 5 ?
%N = brett størrelse, Ant = antall brikker, Type = Type brikker, S = Svar alternativ produsert

%true: pl(4,8,spr,[1,2,1,4,2,1,2,3,3,2,3,4,4,1,4,3]).

%false: pl(4,8,spr,[1,2,1,3,2,1,2,3,3,2,3,4,4,1,4,3]).

%true: pl(4,8,spr,[[1,2],[1,4],[2,1],[2,3],[3,2],[3,4],[4,1],[4,3]]).

pl(N, Ant, Type, S):- checkspr(N,Ant,Type, S), !.

checkspr(_, _, _, []).
checkspr(N, Ant, Type, [[X, Y] | Ps]):- 
    %inside(X,Y,N),
    chkrelative([X,Y], N, [[-2,1],[-1,2],[1,2],[2,1],[-2,-1],[-1,-2],[1,-2],[2,-1]], Ps),
    checkspr(N, Ant, Type, Ps).

chkrelative([I,J], N, [], SprList).
chkrelative([I,J], N, [[X,Y]|Rs], SprList):-
    %\+ inside(X2,Y2,N), X2 is X + I, Y2 is Y + J;
    \+ member([X2,Y2], SprList), X2 is X + I, Y2 is Y + J,
    chkrelative([I,J], N, Rs, SprList).

inside(I,J,N):- I =< N, I > 0, J =< N, J > 0.