select  
case
  when grade>=8 then s.name else NULL end,grade,marks
from Students s , Grades g
  where s.marks between g.min_mark and g.max_mark
order by grade desc,
  CASE WHEN grade >= 8 THEN name END ASC,
  CASE WHEN grade < 8 THEN marks END ASC;
