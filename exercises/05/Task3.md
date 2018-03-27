# Solution
Note: maybe more efficient with columnar
1. Make bitmap indexes for Sex (2 columns: Male and Female)
2. Make bitmap indexes for Rating(5 columns: 1-5)
3. Answer query efficiently:
```sql
Select count(*)
From Ratings
Where S=‘F’ or R=5
```
Pick column Female and column Rating 5
Treat them as vector
Do bitwise OR
Sum