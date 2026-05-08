select cast (LONG_w as decimal(10,4))
from station
where lat_n= (Select max(lat_n) from station where lat_n<137.2345)
