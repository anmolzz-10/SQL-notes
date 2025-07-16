# select actors who acted in any of these movies (101,110,121)

-- 1st way
select ma.actor_id,name,ma.movie_id from actors a
JOIN movie_actor ma on a.actor_id = ma.actor_id
JOIN movies m ON ma.movie_id= m.movie_id
WHERE ma.movie_id in (101,110,121)

-- 2nd way
select * from actors where actor_id in
(select actor_id from movie_actor where movie_id in (101,110,121))

-- 3rd way using ANY. ANY is used as IN just that ANY is used in WHERE condition. 

select * from actors where actor_id = ANY
(select actor_id from movie_actor where movie_id in (101,110,121))

## select all movies whose rating is greater than any of the marvel movies rating.
##ANY also means satisfying condition out of any of the values.

SELECT * from movies where imdb_rating> any
(select imdb_rating from movies where studio = 'Marvel Studios') 
-- SOME is same as any
SELECT * from movies where imdb_rating> some
(select imdb_rating from movies where studio = 'Marvel Studios') 

##ALL is used to satisfy conidition for all values.
SELECT * from movies where imdb_rating> all 
(select imdb_rating from movies where studio = 'Marvel Studios') 