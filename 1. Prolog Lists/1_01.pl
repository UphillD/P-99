% 1.01 (*) Find the last element of a list.

% lastElement(L, X) :- Unifies X with the last element of the list L.
%   (list, element) (?, ?)

lastElement([X], X).
lastElement([_|T], X) :-
    lastElement(T, X).
