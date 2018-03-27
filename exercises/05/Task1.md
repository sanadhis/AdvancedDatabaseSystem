# A
```sql
SELECT L.state, sum(S.sales)
FROM Locations L, Sales S
WHERE S.locid = L.locid
AND S.locid = 1
```

```sql
SELECT L.state, sum(S.sales)
FROM Locations L, Sales S
WHERE S.locid = L.locid
AND S.locid = 2
```

# B
```sql
SELECT L.state, sum(S.sales)
FROM Locations L, Sales S
WHERE S.locid = L.locid
GROUP BY L.state
```

```sql
SELECT T.Year, sum(S.sales)
FROM Sales S, Time T
WHERE S.timeid = T.timeid
GROUP BY T.Year
```

```sql
Select sum(S.sales)
FROM Sales S, Locations L
Where S.locid = L.locid
```