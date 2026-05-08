select sum(c.population)
from city c inner join COUNTRY r
on c.countrycode= r.CODE and CONTINENT = 'Asia'
