select F.fname
from Faculty F, Class C
where
    F.fid = C.fid 
    AND
    C.room IS NOT NULL
