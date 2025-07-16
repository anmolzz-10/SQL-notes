SELECT * from movies where imdb_rating >=9

SELECT * FROM movies where imdb_rating between 6 and 8

SELECT * FROM movies where release_year IN(2018,2019,2022)

SELECT * FROM movies where studio IN("Marvel Studios", "Zee Studios")

select * from movies where imdb_rating is null

select * from movies where imdb_rating is not null

select * from movies where industry = 'Bollywood' ORDER BY imdb_rating DESC

select * from movies where industry = 'Bollywood' ORDER BY imdb_rating DESC LIMIT 5 

select * from movies where industry = 'Hollywood' ORDER BY imdb_rating DESC LIMIT 5 OFFSET 1  ##skips first movie that is index 0 