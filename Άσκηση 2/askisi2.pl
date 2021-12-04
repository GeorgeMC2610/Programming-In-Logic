/* Ορίζουμε, πρώτα, δύο κατηγορήματα που θα ισχύουν και την κενή λίστα και για την λίστα που έχει μονάχα ένα στοιχείο. */
common_list([], []).
common_list([X], [X]).

common_list([X | L1], [Y | L2]):- X =:= Y; common_list(L1, L2).
common_list([X, Y | L1], [Z, A | L2]):- X =:= Z; X =:= A; Y =:= Z; Y =:= A; common_list(L1, L2).