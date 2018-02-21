SELECT DISTINCT(C.cname)
FROM Class C
WHERE C.room = "R128" 
    or 
      C.cname IN 
      (
          SELECT E.name
          FROM Enrolled E
          GROUP BY E.cname
          HAVING COUNT(*) >= 5
      )
