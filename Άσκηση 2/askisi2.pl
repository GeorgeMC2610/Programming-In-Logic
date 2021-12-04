/* Ορίζουμε, πρώτα, δύο κατηγορήματα που θα ισχύουν και την κενή λίστα και για την λίστα που έχει μονάχα ένα στοιχείο. */
common_list([], []).
common_list([X], [X]).

common_list([H | L1], [K | L2]):- member(K, L1), common_list(L1, L2).
common_list([H | L1], [K | L2]):- member(H, L2), common_list(L1, L2).