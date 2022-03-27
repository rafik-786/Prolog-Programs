% -1 is  used to avoid singleton variable warning.
%
% Prolog Program to print fibonnaci prime sequence
fib(N,Ans):- fibo(0,1,N,Ans).

fibo(A,B,1,Ans):-
    A =\= -1 ,
    B=\= -1 ,
    Ans is A ,
    !.

fibo(A,B,N,Ans):-
    not(N=1),
    C is A + B ,
    Anew is B,
    Bnew is C,
    Nnew is N -1 ,
    fibo(Anew,Bnew,Nnew,Ans).



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

printprime(N):-
  prime(N), write(N),write('\t'),!;N =\= -1.


fibprime(N):- fibprime_(1,N).

fibprime_(I,N):-
    I >= N,
    !.

fibprime_(I,N):-
    I =< N,
    fib(I,Ans),

    printprime(Ans),
    Inew is I +1 ,
    fibprime_(Inew,N).


