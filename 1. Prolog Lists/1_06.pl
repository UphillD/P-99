% 1.06 (*) Find out whether a list is a palindrome. 
% A palindrome can be read forward or backward; e.g. [x,a,m,a,x].

% palindrome(L) :- True if list L is a palindrome.
%   (list) (?)

palindrome(L) :-
    reverse(L, L).
