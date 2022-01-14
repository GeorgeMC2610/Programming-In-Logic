# Προαιρετική Εργασία 3
### 3η Εργασία (Παραδοτέο είναι pdf (όχι zip!) μέσω gunet2 με τεκμηριωμένο κώδικα και παράδειγμα εκτέλεσης).
**[Για φοιτητές με επώνυμο από Ο έως Ρ]:** Αναπτύξτε πρόγραμμα adventure game που να επιτρέπει σε κάποιον να βγει από το αυτοκίνητό του, να διασχίσει το δρόμο και να μπει σε ένα βενζινάδικο από το οποίο μπορεί να αγοράσει αναψυκτικό και εφημερίδα, και στη συνέχεια να επιστρέψει στο αυτοκίνητό του. Ενδεικτικές ερωτήσεις και απαντήσεις είναι οι παρακάτω:

```prolog
?- go.
>> goto(gas_station).
You are in the gas_station.
>> goto(car).
You can't get there from here.
>> open(car_door).
>> open(gas_station_door).
>> take(soda).
You now have a soda.
>> goto(car).
You are in the car
Thanks for getting the newspaper.
```
