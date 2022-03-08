
uloha5([]).
uloha5([Head|Tail]) :- 
    Z is Head mod 2, Z = 0 ->  even(Tail);
    odd(Tail).

odd([]).
odd([Head|Tail]) :-
    write(Head),nl,
    Y is Head//2, YY is Y * 2, YY \= Head,
    odd(Tail).

even([]).
even([Head|Tail]) :-
    write(Head),nl,
    Y is Head mod 2, Y = 0,
    even(Tail).