SELECT DISTINCT(C.cname)
FROM Class C
WHERE C.room = "R128" 
    or 
      C.cname = 
      (
          SELECT C2.name
          FROM Class C2, Enrolled E
          WHERE C2.cname = E.cname
          GROUP BY E.cname
          HAVING COUNT(*) > 5
      )
