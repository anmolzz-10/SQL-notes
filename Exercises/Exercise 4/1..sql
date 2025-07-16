-- 1) select all the movies with minimum and maximum release_year. Note that there 
-- can be more than one movies in min and max year hence output rows can be more than 2

select * from movies where release_year in 
((select max(release_year) from movies),(select min(release_year) from movies))
order by release_year

-- 2) select all the rows from movies table whose imdb_rating is higher than the average rating
select * from movies where imdb_rating > (select round(avg(imdb_rating),2) from movies)

