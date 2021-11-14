family(person(torn, fox, date(7, may, 1950), works(bbe, 15200)), person(ann, fox, date(9, may, 1951), unemployed), [person(pat, fox, date(5, may, 1973), unemployed), person(jim, fox, date(5, may, 1973), unemployed)]).
exists(X) :- family(X, Y, Z).
exists(Y) :- family(X, Y, Z).