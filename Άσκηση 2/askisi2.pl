/* Ορίζουμε, πρώτα, δύο κατηγορήματα που θα ισχύουν και την κενή λίστα και για την λίστα που έχει μονάχα ένα στοιχείο. */
element_in_list(X, [X]).
element_in_list(X, [Y | T]) :- X =:= Y; element_in_list(X, T).

common_list([X], [X]).
common_list([X | T1], [Y | T2]) :- element_in_list(X, [Y | T2]); element_in_list(Y, [X | T1]); common_list(T1, T2).