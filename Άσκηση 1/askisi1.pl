family(person(torn, fox, date(7, may, 1950), works(bbe, 15200)),                person(ann, fox, date(9, may, 1951), unemployed),      [person(pat, fox, date(5, may, 1973), unemployed),                person(jim, fox, date(5, may, 1973), unemployed)]).
family(person(manos, seimenis, date(31, march, 1962), works(archirodon, 2000)), person(vicky, rori, date(13, june, 1965), unemployed), [person(aimilios, seimenis, date(13, october, 1997), unemployed), person(giorgos, seimenis, date(26, october, 2001), unemployed)]).

/* Ορίζουμε το κατηγόρημα exists να ορίζει κάθε γονέα. */
exists(X) :- family(X, Y, Z).
exists(Y) :- family(X, Y, Z).

/* Ορίζουμε το κατηγόρημα dateofbirth να υπάρχει για κάθε γονέα. */
dateofbirth(X, Y) :- family(person(A, B, date(C, X, Y), D), E, F).
dateofbirth(X, Y) :- family(E, person(A, B, date(C, X, Y), D), F).

%salary(X, Y) :- family(person())