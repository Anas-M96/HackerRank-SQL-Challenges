select c.name
from CITY c inner JOIN country r
on c.countrycode = r.CODE and CONTINENT ='Africa'
