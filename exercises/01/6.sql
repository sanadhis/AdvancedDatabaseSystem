SELECT DISTINCT(F.fname)
FROM Faculty F, Class C, Enrolled E
WHERE 
    F.fid = C.fid AND
    E.cname = C.cname
GROUP BY E.cname
HAVING COUNT(*) < 5