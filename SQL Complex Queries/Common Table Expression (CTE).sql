## get all actors whose age is betweeb 70 and 85

with table1 as (select name,year(current_date()) - birth_year as age
from actors)

select * from table1 where age between 70 and 85

## give default name to the cte columns as parameters
with table1(actor_name,age) as (select name,year(current_date()) - birth_year 
from actors)

select * from table1 where age between 70 and 85

##movies with 500% profit and having imdb ratings less than average imdb ratings.
with x as (select *, round((revenue-budget)*100/budget,2) as profit_pct 
from financials
having profit_pct >500),
y as (select * from movies where imdb_rating <
(select avg(imdb_rating) from movies) )

select x.movie_id,x.profit_pct,y.title,y.imdb_rating from x JOIN y on
x.movie_id= y.movie_id