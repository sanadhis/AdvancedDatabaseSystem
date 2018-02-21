SELECT DISTINCT(S.sname)
FROM Student S, Enrolled E
WHERE S.snum <> E.snum