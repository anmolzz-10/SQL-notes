SELECT title,revenue,currency,unit ,
CASE WHEN unit ='Thousands' THEN ROUND(revenue/1000,2)
WHEN  unit = 'Billions' THEN ROUND(revenue*1000,2)
else revenue
END AS revenue_mln
from movies m
 JOIN languages l
ON m.language_id = l.language_id  JOIN
financials f ON f.movie_id = m.movie_id 
WHERE l.name = 'Hindi'
ORDER BY revenue_mln DESC