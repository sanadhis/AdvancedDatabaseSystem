# 3 Steps:
1. Slice by time
```sql
SELECT T.quarter, T.tid
FROM Time T
WHERE T.Quarter >= “2013-Jan” AND T.Quarter <= “2013-Aug”
```

2. Slice by S.tid = T.tid, S.pid = P.pid
```sql
SELECT S.pid
FROM Sales S, Time T, Product P
WHERE S.tid = {{ step1 }} AND S.pid = P.pid
```

3. Dicing
```sql
SELECT sum(S.Sales)
FROM Sales S
WHERE S.pid = {{ step2 }}
```

# ALTERNATIVE
Replace 2,3 with ROLL UP by PGroup and Quarter