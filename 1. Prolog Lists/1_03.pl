% 1.03 (*) Find the K'th element of a list. 
% The first element in the list is number 1.

% kthElement(L, K, X) :- Unifies X with the K'th element of the list L.
%   (list, integer, element) (?, +, ?)

kthElement([X|_], 1, X).
kthElement([_|T], K, X) :-
    K \= 1,
    Kt is K - 1,
    kthElement(T, Kt, X).
