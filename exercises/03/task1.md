# Steps for Row Store
1. Select all from R
2. Select all from S
3. Inner Product R x S on Rc=Sb
4. Filter Ra
5. Filter Rb
6. Filter Sa
7. Select Ra

# Steps for Column Store in early materialization
1. Select Ra 
2. Select Rb 
3. Select Rc
3. Construct inter1 = (Ra,Rb,Rc)
4. Filter Ra,Rb
5. Select Sa
6. Select Sb
7. Construct inter2 = (Sa,Sb)
8. Filter Sa
9. Join (inter1,inter2)
10. Select Ra only

# Steps for Column Store in late materialization
1. inter1 = select(Ra,5,20)
2. inter2 = reconstruct(Rb,inter1)
3. inter3 = select(inter2.Rb,40,50)
4. R = reconstruct(Rc,inter3)
5. inter4 = select(Sa,49,65)
6. inter5 = reconstruct(Sb,inter4)
7. S = reverse(inter5)
8. R_S = join(R,S)
9. inter6 = voidTail(R_S)
10. result = reconstruct(inter6)
