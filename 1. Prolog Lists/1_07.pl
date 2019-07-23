% 1.07 (**) Flatten a nested list structure. 
% Transform a list, possibly holding lists as elements into a 'flat' list by replacing each list with its elements (recursively).

% flattenList(L1, L2) :- Unifies L2 with the list L1 with any sublists flattened.
%   (list, list) (+, ?)

flattenList([], []).
flattenList(X, [X]) :-
    \+ is_list(X).
flattenList([H|T], L2) :-
    flattenList(H, Y),
    flattenList(T, Ys),
    append(Y, Ys, L2).
