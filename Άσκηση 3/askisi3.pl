/* πρώτα συνδέουμε τους κόμβους μεταξύ τους */

%START
connect(start, 2).

%1
connect(1, 7).

%2
connect(2, start).
connect(2, 3).
connect(2, 8).

%3
connect(3, 2).
connect(3, 4).
connect(3, 9).

%4
connect(4, 3).
connect(4, 10).

%5
connect(5, 6).
connect(5, 11).

%6
connect(6, 5).

%7
connect(7, 1).

%8
connect(8, 2).
connect(8, 9).

%9
connect(9, 8).
connect(9, 3).

%10
connect(10, 4).
connect(10, 16).

%11
connect(11, 5).
connect(11, 17).

%12
connect(12, 18).

%13
connect(13, 7).
connect(13, 14).

%14
connect(14, 13).
connect(14, 15).
connect(14, 20).

%15
connect(15, 14).
connect(15, 21).

%16
connect(16, 10).
connect(16, 22).

%17
connect(17, 11).
connect(17, 23).

%18
connect(18, 12).
connect(18, 24).

%19
connect(19, 25).

%20
connect(20, 14).
connect(20, 26).

%21
connect(21, 15).
connect(21, 22).

%22
connect(22, 16).
connect(22, 21).

%23
connect(23, 17).
connect(23, 29).

%24
connect(24, 18).
connect(24, 30).

%25
connect(25, 19).
connect(25, 31).

%26
connect(26, 20).
connect(26, 27).

%27
connect(27, 26).
connect(27, 28).

%28
connect(28, 27).
connect(28, 29).

%29
connect(29, 23).
connect(29, 28).

%30
connect(30, 24).
connect(30, 36).

%31
connect(31, 25).
connect(31, 32).

%32
connect(32, 31).
connect(32, 33).
connect(32, finish).

%33
connect(33, 32).
connect(33, 34).

%34
connect(34, 28).
connect(34, 33).
connect(34, 35).

%35
connect(35, 34).
connect(35, 36).

%36
connect(36, 30).
connect(36, 35).

/* το is_combo/2 παίρνει ως όρισμα 2 αριθμούς και βλέπει αν είναι συνδεδεμένοι μεταξύ τους, ανεξάρτητα από τη σειρά. */
is_combo(X, Y) :- connect(X, Y); connect(Y, X).

/* η find path ακολουθεί μία διαδικασία που στη συνέχεια θα εξηγήσουμε, αλλά εδώ βάζει τα στοιχεία στη λίστα ώστε να προβάλλεται πλήρως. */
find_path(Destination, Source, Path) :- find_path(Destination, Source, [], Path).

/* αν ξεκινάμε και τελειώνουμε στο ίδιο σημείο, τότε η λίστα δεν θα 'χει κάτι. */
/* αλλιώς, παίρνουμε αναδρομικά τον κώδικα αυτόν και βλέπουμε αν υπάρχει combo με ΚΑΠΟΙΟ c. Αν υπάρχει το βάζουμε στη λίστα και συνεχίζουμε την εύρεση του αγνώστου. Αυτό ακριβώς, τίποτε άλλο.Δ */
find_path(A, A, T, T).
find_path(A, B, T, T2) :- is_combo(A, C), \+ member(C, T), find_path(C, B, [C|T], T2).