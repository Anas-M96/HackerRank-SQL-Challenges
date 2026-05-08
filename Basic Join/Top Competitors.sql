select h.hacker_id,h.name
from Hackers h inner join Submissions s 
on h.hacker_id=s.hacker_id
inner JOIN Challenges c
 on s.Challenge_id= c.Challenge_id
 inner JOIN Difficulty d
 on c.Difficulty_level=d.Difficulty_level
  where s.score= d.score
  group by h.hacker_id,h.name
  having count(distinct s.Challenge_id)>1
  order by count(distinct s.Challenge_id) DESC,h.hacker_id ASC
