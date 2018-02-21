SELECT F.fname, COUNT(C.cname)
FROM Faculty F, Class C
WHERE
    C.room = 'R128' AND
    F.fid IN 
    (
        SELECT F2.fid 
        FROM Faculty F2, Class C2
        WHERE F2.fid = C2.fid
        GROUP BY F2.fid, F2.fname
        HAVING COUNT(distinct C2.room) = 1
    )
GROUP BY F.fid, F.fname