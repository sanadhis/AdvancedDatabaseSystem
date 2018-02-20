SELECT DISTINCT(S.sname)
FROM Student S, Enrolled E, Class C
WHERE 
    S.snum = E.snum AND
    E.cname = C.cname AND
GROUP BY S.snum, C.meets_at
HAVING COUNT(*) >= 2