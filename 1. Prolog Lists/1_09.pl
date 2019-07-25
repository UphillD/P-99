% 1.09 (**) Pack consecutive duplicates of list elements into sublists.
% If a list contains repeated elements they should be placed in separate sublists.

% packList(L1, L2) :- Unifies L2 with the list L1 with any consecutive duplicate elements packed into sublists.
%   (list, list) (+, ?)

packList([], [[]]).
packList([X], [[X]]).
packList([A, A|T1], [H|T2]) :-
    pLHelper([A, A|T1], L1n, H),
    packList(L1n, T2).

pLHelper([A, B|T], [B|T], [A]) :-
    A \= B.
pLHelper([A, A|T1], L1n, [A|T2]) :-
    pLHelper([A|T1], L1n, T2).
