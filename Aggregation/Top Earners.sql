select top(1) salary*months as earning ,count(*)
from employee
group by salary*months
ORDER by earning  desc
