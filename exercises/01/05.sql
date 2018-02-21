SELECT DISTINCT(F.fname)
FROM Faculty F
WHERE NOT EXISTS
(
    SELECT F2.fname
    FROM Faculty F2, Class C1
    WHERE F2.fid <> C1.fid
)