with cte as (select * from financials where profit >500 )

select title,profit from movies JOIN
cte ON movies.movie_id = cte.movie_id WHERE 
industry = 'Hollywood' and release_year> 2000