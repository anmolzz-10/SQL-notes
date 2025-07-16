## Select the actor id, actor name and the total number of movies they acted in
explain analyze
select ma.actor_id,name,count(*) as movie_count from movie_actor ma
JOIN actors a ON
 ma.actor_id = a.actor_id
 group by actor_id
order by movie_count desc

## Alternate way: using correlated subquery where inner query runs for every row in outer query
explain analyze
select actor_id,name,
(select count(*) as movie_count from movie_actor 
where actor_id= actors.actor_id )
as movie_count
from actors
where movie_count<5

select title,(select count(*) from movie_actor where movie_id= movies.movie_id)
as actor_count from movies ##uses movie_id from outer query. basically like looping so we 
##are looping across all rows instead of using group by 