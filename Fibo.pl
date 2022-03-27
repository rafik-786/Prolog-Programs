% Program to print Fibonacci Sequence (Iterative Version).
fib(N):- fibo(0,1,N).

fibo(A,B,1):- write(A),A =\= 0 , B=\=0 , !.

fibo(A,B,N):-
    not(N=1),
    write(A),write('\t'),
    C is A + B ,
    Anew is B,
    Bnew is C,
    Nnew is N -1 ,
    fibo(Anew,Bnew,Nnew).
