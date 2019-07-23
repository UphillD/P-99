% 1.04 (*) Find the number of elements of a list.

% numElements(L, N) :- Unifies N with the number of elements in the list L.
%   (list, integer) (+, ?)

numElements([], 0).
numElements([_|T], N) :-
    numElements(T, Nt),
    N is Nt + 1.
