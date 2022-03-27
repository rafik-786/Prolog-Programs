prime(N):-
    N > 1,
    End is sqrt(N),
    primecheck(N,2,End).


primecheck(N,I,End):-
    N=\=0,
    I >=End,
    !.

primecheck(N,I,End):-
    I =< End ,
    N mod I =\= 0 ,
    Inew is I + 1,
    primecheck(N,Inew,End).
