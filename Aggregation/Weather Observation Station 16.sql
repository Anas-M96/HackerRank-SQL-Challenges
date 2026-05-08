select cast (min(Lat_n) as decimal(10,4))
from station
where Lat_n>38.7780;
