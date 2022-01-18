/*
1. GO TO GAS_STATION.
2. OPEN CAR DOOR.
3. OPEN GAS_STATION_DOOR.
4. TAKE SODA.
5. TAKE NEWS_PAPER.
*/

action_list([car]).

go_to(X) :- member(car, action_list([X])).