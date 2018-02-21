select F.fname, count(C.cname)
from Faculty F, Class C
where
    C.room = 'R128' and
    F.fid = (
        SELECT F2.fid from Faculty F2, Class C2
        where F2.fid = C2.fid
        group by C2.room
        having count(distinct C2.room) = 1
    )