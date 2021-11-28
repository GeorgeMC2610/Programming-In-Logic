family(person(torn, fox, date(7, may, 1950), works(bbe, 15200)),                     person(ann, fox, date(9, may, 1951), unemployed),                           [person(pat, fox, date(5, may, 1973), unemployed),                person(jim, fox, date(5, may, 1973), unemployed)]).
family(person(john, wick, date(19, october, 1978), works(meta, 65000)),              person(julia, wick, date(31, january, 1982), works(razer, 10150)),          [person(marianne, wick, date(1, february, 2009), unemployed),     person(patrick, wick, date(29, july, 2011), unemployed)]).
family(person(torn, fox, date(7, may, 1950), works(bbe, 15200)),                     person(ann, fox, date(9, may, 1951), unemployed),                           [person(pat, fox, date(5, may, 1973), unemployed),                person(jim, fox, date(5, may, 1973), unemployed)]).
family(person(torn, fox, date(7, may, 1950), works(bbe, 15200)),                     person(ann, fox, date(9, may, 1951), unemployed),                           [person(pat, fox, date(5, may, 1973), unemployed),                person(jim, fox, date(5, may, 1973), unemployed)]).
family(person(torn, fox, date(7, may, 1950), works(bbe, 15200)),                     person(ann, fox, date(9, may, 1951), unemployed),                           [person(pat, fox, date(5, may, 1973), unemployed),                person(jim, fox, date(5, may, 1973), unemployed)]).
family(person(torn, fox, date(7, may, 1950), works(bbe, 15200)),                     person(ann, fox, date(9, may, 1951), unemployed),                           [person(pat, fox, date(5, may, 1973), unemployed),                person(jim, fox, date(5, may, 1973), unemployed)]).
family(person(torn, fox, date(7, may, 1950), works(bbe, 15200)),                     person(ann, fox, date(9, may, 1951), unemployed),                           [person(pat, fox, date(5, may, 1973), unemployed),                person(jim, fox, date(5, may, 1973), unemployed)]).


/* Ορίζουμε το κατηγόρημα exists να ορίζει κάθε γονέα. */
exists(X)         :- family(X, Y, Z).
exists(Y)         :- family(X, Y, Z).

/* Ορίζουμε το κατηγόρημα dateofbirth να υπάρχει για κάθε γονέα. */
%dateofbirth(X, Y) :- family(person(A, B, date(C, X, Y), D), E, F).
%dateofbirth(X, Y) :- family(E, person(A, B, date(C, X, Y), D), F).

dateofbirth(X, Y) :- exists(person(A, B, date(C, X, Y), D)).

/* Ορίζουμε το κατηγόρημα salary να υπάρχει για κάθε εργαζόμενο γονέα. */
%salary(X, Y) :- family(person(A, B, C, works(X, Y)), W, F).
%salary(X, Y) :- family(H, person(A, B, C, works(X, Y)), F).

salary(X, Y) :- exists(person(A, B, C, works(X, Y))).

/* ΑΥΤΟ ΔΟΥΛΕΥΕΙ!!! */
%exists(person(FIRSTNAME, LASTNAME, date(DAY, MONTH, YEAR), works(PLACE, SALARY))), dateofbirth(MONTH, YEAR), salary(PLACE, SALARY), YEAR < 1950, SALARY < 8000.