SELECT w.id, 
       p.age, 
       w.coins_needed, 
      w.power 
FROM   wands w
       JOIN wands_property p 
         ON w.code = p.code 
WHERE  p.is_evil = 0 
       AND w.coins_needed = (SELECT Min(ww.coins_needed) 
                             FROM   wands ww 
                                    JOIN wands_property pp 
                                      ON ww.code = pp.code 
                             WHERE  p.age = pp.age 
                                    AND w.power = ww.power) 
ORDER  BY w.power DESC, 
          p.age DESC
