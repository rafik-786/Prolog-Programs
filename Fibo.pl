% Program to print Fibonacci Sequence (Iterative Version).
fib(N):- fibo(0,1,N).

fibo(A,B,1):- write(A),A =\= -1 , B=\= -1 , !.

fibo(A,B,N):-
    not(N=1),
    write(A),write('\t'),
    C is A + B ,
    Anew is B,
    Bnew is C,
    Nnew is N -1 ,
    fibo(Anew,Bnew,Nnew).
