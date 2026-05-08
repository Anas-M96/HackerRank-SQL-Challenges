select  top(1) city,len (city)
from station
order by len(city)asc,city  ASC;

select  top(1) city,len (city)
from station
order by len(city) DESC,city desc;
