SELECT DISTINCT(S.sname)
FROM Student S, Enrolled E, Class C, Faculty F
WHERE 
    S.snum = E.snum AND 
    E.cname = C.cname AND 
    C.fid = F.fid AND 
    S.year = "JR"  AND 
    F.fname LIKE "I. Teach"