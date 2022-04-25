reverse([H|T],ReverseList):-
    worker([H|T],[],ReverseList).

worker([],Acc,Acc).
worker([H|T],Acc,RL):-
    worker(T,[H|Acc],RL).
