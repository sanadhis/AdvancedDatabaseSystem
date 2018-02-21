SELECT D.age, D.year
FROM
(
    SELECT C.age, C.year, max(C.CountAge)
    FROM
    (
        SELECT S.age, S.year, count(*) as CountAge
        FROM Student S
        GROUP BY S.age, S.year
    ) C
) D
    