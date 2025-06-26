select*, ( year(curdate())- birth_year) as age from actors

select *,(revenue-budget) as profit from financials

-- IF(condition,true,false) Syntax of If
SELECT *, 
IF (currency = 'USD', revenue*85,revenue) as revenue_inr
from financials

-- Unit conversion
-- Billions --> millions --> billion*1000 
-- Thousands --> millions --> thousand/1000

SELECT *, 
CASE 
WHEN unit= 'billions' THEN revenue*1000
WHEN unit = 'thousands' THEN revenue/1000
ELSE  revenue
END as unit_mln
from financials

-- Both unit and currrency conversion
SELECT *, 
  CASE 
    WHEN currency = 'USD' AND unit = 'billions' THEN revenue * 85 * 1000
    WHEN currency = 'USD' AND unit = 'thousands' THEN revenue * 85 / 1000
    WHEN currency = 'USD' AND unit = 'millions' THEN revenue * 85
    
    WHEN currency != 'USD' AND unit = 'billions' THEN revenue * 1000
    WHEN currency != 'USD' AND unit = 'thousands' THEN revenue / 1000
    WHEN currency != 'USD' AND unit = 'millions' THEN revenue
    
    
  END AS unit_mln_inr
FROM financials;



