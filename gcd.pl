gcd(A,B):-A is 0,write(B),!.

gcd(A,B):- not(A =0), Anew is B mod A,gcd(Anew,A).








