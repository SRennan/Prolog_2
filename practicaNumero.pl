sumanum([],0,0):-!.
sumanum([N|L],X,Y) :- par(N), sumanum(L,X1,Y), X is X1 + N.
sumanum([N1|L],X,Y) :-not(par(N1)),sumanum(L,X,Y1),Y is Y1+N1.
par(N):-N mod 2 =:= 0.






genera([]):-!.
genera([N|L]) :- par(N),genera(L),T is N/2,writeln(T).
genera([N1|L]) :-not(par(N1)),genera(L),T1 is (3*N1)+1,writeln(T1).






cubo(Y,X):-T is (X*X*X), Y=:=T.
numero(_,1):-!.
numero(X,Y):-not(cubo(X,Y)),writeln("NO"),T is X -1,numero(X,T).
numero(X,Y):-cubo(X,Y),writeln("SI").

prueba(_,1):-!.
prueba(X,Y):-not(cubo(X,Y)),T is Y-1,prueba(X,T).
prueba1(X):-write(X),Y is X-1,prueba(X,Y).

prue(X),



/*




maximonum(M, [X|Xs]):-maximonum2(M, X, Xs).

maximonum2(M, M, []):- !.

maximonum2(X, Y, [Z|Zs]):-Z >= Y,!,maximonum2(X, Z, Zs).

maximonum2(X, Y, [Z|Zs]):-Z =< Y,maximonum2(X, Y, Zs).












*/
