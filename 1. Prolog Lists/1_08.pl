% 1.08 (**) Eliminate consecutive duplicates of list elements.
% If a list contains repeated elements they should be replaced with a single copy of the element. The order of the elements should not be changed.

% compressList(L1, L2) :- Unifies L2 with the list L1 with any consecutive duplicate elements removed.
%   (list, list) (+, ?)

compressList([], []).
compressList([X], [X]).
compressList([A, B|T1], [A|T2]) :-
    A \= B,
    compressList([B|T1], T2).
compressList([A, A|T1], L2) :-
    compressList([A|T1], L2).
