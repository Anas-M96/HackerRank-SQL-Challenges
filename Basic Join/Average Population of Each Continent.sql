select CONTINENT , round(avg(c.population),1)
from CITY c inner JOIN country r
on c.countrycode=r.CODE
GROUP by CONTINENT;
