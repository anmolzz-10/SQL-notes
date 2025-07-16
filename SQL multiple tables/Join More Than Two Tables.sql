##display cast of a movie
SELECT m.movie_id, m.title,group_concat(a.name separator " | ") as actors  -- group_concat groups multiple rows of same column together by a separator 
from movies m JOIN movie_actor ma
ON m.movie_id = ma.movie_id
JOIN actors a ON
ma.actor_id = a.actor_id
group by m.movie_id 

##number of movies done by an actor
SELECT a.name, group_concat(m.title separator " | ") as movies, 
count(m.title) as movie_count
from actors a JOIN movie_actor ma
ON a.actor_id = ma.actor_id
JOIN movies m ON
ma.movie_id = m.movie_id
group by a.name 
order by movie_count desc