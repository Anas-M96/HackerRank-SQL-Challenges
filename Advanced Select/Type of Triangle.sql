SELECT
case 
    when A+ B <=C  OR  B+C <=A OR A+C <=B
    THEN 'Not A Triangle'
    
        when A=B AND B=C 
        then 'Equilateral'
   
          when A=B OR A=C OR B=C
          THEN 'Isosceles'

          
     ELSE 'Scalene'
END
 FROM   TRIANGLES;
