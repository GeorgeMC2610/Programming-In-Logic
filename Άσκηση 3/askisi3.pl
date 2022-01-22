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

connect(16, 22).

connect(22, 21).

connect(21, 15).

connect(15, 14).

connect(14, 20).
connect(14, 13).