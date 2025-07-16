##Q1
SELECT m.title, l.name from movies m 
JOIN languages l on m.language_id = l.language_id

SELECT m.title, l.name from movies m 
JOIN languages l USING(language_id)

##Q2
SELECT m.title from movies m 
LEFT JOIN languages l using(language_id)
WHERE l.name= 'Telugu'

##Q3
SELECT l.name , count(m.movie_id) from languages l 
LEFT JOIN  movies m USING(language_id)
GROUP BY l.name


