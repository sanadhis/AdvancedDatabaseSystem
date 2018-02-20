SELECT max(age)
FROM Student S, Class C, Enrolled E, Faculty F
WHERE 
    (S.snum = E.snum AND E.cname = "History") 
    OR 
    (S.snum = E.snum AND
     E.cname = C.cname AND
     C.fid = F.fid AND
     f.fname = "I. Teach"
    )