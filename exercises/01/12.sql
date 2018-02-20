Select C.age, C.year, max(C.CountAge)
FROM
(
    select S.age, count(S.age) as countAge, S.year
    from Student S
    GROUP BY S.age, S.year
) C
GROUP BY C.year