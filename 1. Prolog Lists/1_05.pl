% 1.05 (*) Reverse a list.

% reverseList(L1, L2) :- Unifies L2 with the list L1 with its elements reversed.
%   (list, list) (?, ?)

reverseList([], []).
reverseList([X], [X]).
reverseList([H|T], L) :-
    reverseList(T, X),
    append(X, [H], L).
