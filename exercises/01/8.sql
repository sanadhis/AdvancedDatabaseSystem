Select S.year, avg(S.age)
from Student S
WHERE S.year <> 'JR'
GROUP BY S.year
