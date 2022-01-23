/* πρώτα συνδέουμε τους κόμβους μεταξύ τους */

%START
connect(start, 2).

%1
connect(1, 7).

%2
%connect(2, start).
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
%connect(32, finish).

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

is_combo(X, Y) :- connect(X, Y); connect(Y, X).
neighbor(X, Y) :- X - Y =:= 6; Y - X =:= 6; X - Y =:= 1; Y - X =:= 1.

is_related(X, Y) :- connect(X, Y), neighbor(X, Y).

path(X, Z) :- is_related(X, Z).
path(X, Z) :- is_related(X, Y), path(Z, Y), writeln(Y).

/*
pathlist([]).

append([], X, X).
append([H | Tail], X, [H | Tail2]) :- append(Tail, X, Tail2).

should_i_stop(X) :- X < 50.
find_path(X) :- H is X+1, is_combo(X, H), write(X), find_path(H).
*/
