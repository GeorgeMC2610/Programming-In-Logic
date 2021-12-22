/* First, we make a function which returns true if an element exists in a list. */
element_in_list(X, [X]).
element_in_list(X, [Y | T]) :- X =:= Y; element_in_list(X, T).

/* Then, we use recursion to find if two lists have at least one common element. The function above helps us a lot, as we recursively look every sublist. */
common_list([X], [X]).
common_list([X | T1], [Y | T2]) :- element_in_list(X, [Y | T2]); element_in_list(Y, [X | T1]); common_list(T1, T2).