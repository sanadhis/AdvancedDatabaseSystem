SELECT max(age)
FROM 
    (
        SELECT S.age
        FROM Student S, Enrolled E
        WHERE
            S.snum = E.snum AND
            E.cname = 'History'
    ) 
    UNION 
    (
        SELECT S.age
        FROM Student S, Enrolled E, Class C, Faculty F
        WHERE 
            S.snum = E.snum AND 
            E.cname = C.cname AND 
            C.fid = F.fid AND 
            F.fname LIKE "I. Teach"
    )