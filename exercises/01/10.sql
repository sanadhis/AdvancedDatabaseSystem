SELECT DISTINCT(S.sname)
FROM STUDENT S
WHERE
    S.snum IN
    (
        SELECT E.snum
        FROM Enrolled E
        GROUP BY E.snum
        HAVING COUNT(*) >= ALL 
        (
            SELECT COUNT(*) 
            FROM Enrolled E2
            GROUP BY E2.snum
        )
    )