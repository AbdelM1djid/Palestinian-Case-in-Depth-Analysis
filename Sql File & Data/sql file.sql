SHOW tables ; 
USE  palestine  ; 
-- 
SELECT * 
FROM demons ; 
SELECT * 
FROM target ;
SELECT * 
FROM violence ;  

SELECT DISTINCT Country  
FROM demons ; 

ALTER TABLE demons
DROP COLUMN Country; 

ALTER TABLE target 
MODIFY COLUMN Year INT; 

SELECT target.Year,target.Month,target.Events AS 'Targeting Events',target.Fatalities AS 'Targeting Fatalities',
demons.Events AS 'Demonstration Events',
violence.Events AS 'Violence Events',violence.Fatalities AS 'Violence Fatalities'
FROM target 
INNER JOIN demons 
  ON demons.Year = target.Year AND demons.Month = target.Month
INNER JOIN violence 
  ON violence.Year = target.Year AND violence.Month = target.Month;