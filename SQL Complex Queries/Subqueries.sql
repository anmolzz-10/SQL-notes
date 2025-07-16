-- subqueries that return a single single 
SELECT * from movies where imdb_rating = (SELECT max(imdb_rating) from movies)

SELECT * from movies where imdb_rating = (SELECT min(imdb_rating) from movies)

-- subqueries that return multiple values
SELECT * from movies where imdb_rating in ((SELECT max(imdb_rating) from movies),
(SELECT min(imdb_rating) from movies))

-- returns a table 

select * from  (select name,year(curdate())- birth_year as age from actors) as a
where age >70 and age < 85