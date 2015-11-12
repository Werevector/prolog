%N = brett størrelse, Ant = antall brikker, Type = Type brikker, S = Svar alternativ produsert

%true: pl(4,8,spr,[1,2,1,4,2,1,2,3,3,2,3,4,4,1,4,3]).

%false: pl(4,8,spr,[1,2,1,3,2,1,2,3,3,2,3,4,4,1,4,3]).

%true: pl(4,8,spr,[[1,2],[1,4],[2,1],[2,3],[3,2],[3,4],[4,1],[4,3]]).

%pl(N, Ant, Type, S):- checkspr(N,Ant,Type, S), !.


noattack(spr, I:J, X:Y):-
	(I - 2 =\= X ; J + 1 =\= Y),
	(I - 1 =\= X ; J + 2 =\= Y),
	(I + 1 =\= X ; J + 2 =\= Y),	
	(I + 2 =\= X ; J + 1 =\= Y),
	(I - 2 =\= X ; J - 1 =\= Y),
	(I - 1 =\= X ; J - 2 =\= Y),
	(I + 1 =\= X ; J - 2 =\= Y),
	(I + 2 =\= X ; J - 1 =\= Y), !.

spr(I:J, []):- !.
spr(I:J, [X:Y | Ps]):- noattack(spr, I:J, X:Y), spr(I:J, Ps).  

genField(N, R):- genCollums(N, Cs).

pl(N, 0, spr, S):- !.
%pl(N, Ant, spr, S):- 
%inside(I:J,N):- I =< N, I > 0, J =< N, J > 0.

lessN(N, NR:NS):- NR =< N, NS =< N.

pltest(N, Ant, spr, []):- !.
pltest(N, Ant, spr, [I:J | Ps]):- spr(I:J, Ps), pltest(N, Ant, spr, Ps).
