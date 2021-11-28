/* Με την παρακάτω σειρά ορίζονται οι οικογένειες: */
/*                                  ΠΑΤΕΡΑΣ                                                                                  ΜΗΤΕΡΑ                                                                                ΠΑΙΔΙ Α'                                                                  ΠΑΙΔΙ Β'                                                                                     ΠΑΙΔΙ Γ'                                        */
family(person(torn,         fox,            date(7, may, 1950),      works(bbe, 15200)),        person(ann,       fox,           date(9, may, 1951),       unemployed),           [person(pat,       fox,           date(5, may, 1973),        unemployed),              person(jim,       fox,       date(5, may, 1973),        unemployed)]).
family(person(john,         wick,           date(19, october, 1978), works(meta, 65000)),       person(julia,     wick,          date(31, january, 1982),  works(razer, 10150)),  [person(marianne,  wick,          date(1, february, 2009),   unemployed),              person(patrick,   wick,      date(29, july, 2011),      unemployed)]).
family(person(marinos,      papadakis,      date(30, june, 1932),    works(retired, 2400)),     person(amalia,    papadaki,      date(26, april, 1934),    works(asus, 2000)),    [person(emmanouil, papadakis,     date(11, september, 1968), works(attikiodos, 3000)), person(dimitrios, papadakis, date(29, september, 1973), works(lg, 1200)),              person(elena, papadaki, date(25, february, 1976), works(samsung, 1200))]).
family(person(georgios,     dertayan,       date(2, november, 1931), works(retired), 3900)),    person(vasiliki,  dertayan,      date(20, december, 1935), works(retired, 900)),  [person(danai,     dertayan,      date(4, october, 1960),    works(ikea, 1000)),       person(ioannis,   dertayan,  date(5, july, 1964),       works(ethnikitrapeza, 3000))]).
family(person(ilias,        mitaj,          date(18, august, 1994),  works(olympiakos, 9000)),  person(dimitra,   veneti,        date(12, january, 1992),  unemployed),           []).
family(person(konstantinos, mparmparoussis, date(22, march, 1989),   works(id, 4000)),          person(anastasia, menidaki,      date(25, december, 1993), works(bbc, 11000)),    []).
family(person(eleftherios,  manousopoulos,  date(17, april, 1930),   works(activision, 5000)),  person(melina,    manousopoulou, date(31, december, 1931), unemployed),           [person(pavlos,    manousopoulos, date(27, may, 1959),       works(thrustmaster, 900))]).


/* Ορίζουμε το κατηγόρημα exists να ορίζει κάθε γονέα. */
exists(X)         :- family(X, Y, Z).
exists(Y)         :- family(X, Y, Z).

/* Ορίζουμε το κατηγόρημα dateofbirth να υπάρχει για κάθε γονέα. */
dateofbirth(X, Y) :- exists(person(A, B, date(C, X, Y), D)).

/* Ορίζουμε το κατηγόρημα salary να υπάρχει για κάθε εργαζόμενο γονέα. */
salary(X, Y) :- exists(person(A, B, C, works(X, Y))).

/* ΑΥΤΟ ΔΟΥΛΕΥΕΙ!!! */
%exists(person(FIRSTNAME, LASTNAME, date(DAY, MONTH, YEAR), works(PLACE, SALARY))), dateofbirth(MONTH, YEAR), salary(PLACE, SALARY), YEAR < 1950, SALARY < 8000.