Select S.sname
FROM Student S,
    (
        SELECT S2.snum as SNUM, max(Total) FROM
        (
            SELECT S2.snum, sum(count(E2.cname)) as Total
            From Student S2, Enrolled E2
            Where S2.snum = E.snum
            GROUP BY E.snum
        ) as enrolledTotal
    ) m
Where 
    S.snum = m.SNUM
