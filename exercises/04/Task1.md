# Row Store
1. Scan: Read all R, S
2. Select R, filter Ra, Rb
3. Select S, filter Sa
4. Join R, S
5. Project Ra

# Column Store
* Early Materialization
1. Scan: Ra
2. Select Ra index, reconstruct R
3. Select Rb index, reconstruct R
4. Select Sa index, reconstruct S
5. Join R,S
6. Project Ra

* Late Materialization
1. Scan Ra
2. Select Ra index
3. Reconstruct Rb with Ra index
4. Select Rb index
5. Reconstruct Rc index with Rb+Ra index
6. Scan Sa
7. Select Sa index
8. Reconstruct Sb with Sa index
9. Reconstruct (Rc, Sb) index
10. Reconstruct Ra from (Rc, Sb) index
