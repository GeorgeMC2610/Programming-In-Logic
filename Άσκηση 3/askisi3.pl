/*
1. GO TO GAS_STATION.
2. OPEN CAR DOOR.
3. OPEN GAS_STATION_DOOR.
4. TAKE SODA.
5. TAKE NEWS_PAPER.
*/

go_to(gas_station)      :- write("You are now in the gas station.").
open(car_door)          :- write("Opened car door.").
open(gas_station_door)  :- write("Opened gas station door.").
take(soda)              :- write("Took soda.").
take(news_paper)        :- write("Took newspaper.").