select m.movie_id,title,budget,revenue,currency,unit,
CASE
WHEN unit = 'Thousands' THEN  ROUND((revenue-budget)/1000,1)
WHEN unit = 'Billions' THEN  ROUND((revenue-budget)*1000,1)
WHEN unit = 'Millions' THEN  ROUND((revenue-budget),1)
END as profit_mln 
from movies m 
LEFT JOIN financials f
ON m.movie_id= f.movie_id
WHERE industry ='Bollywood'
order by profit_mln desc 