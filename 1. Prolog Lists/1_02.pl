% 1.02 (*) Find the last but one element of a list. 

% secondLastElement(L, X) :- Unifies X with the last but one element of the list L.
%   (list, element) (?, ?)

secondLastElement([X, _], X).
secondLastElement([_, Y|T], X) :-
    secondLastElement([Y|T], X).
