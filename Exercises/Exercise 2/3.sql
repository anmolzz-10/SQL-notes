
##Q1
SELECT count(*) FROM movies WHERE release_year between 2015 and 2022

##Q2
SELECT max(release_year) as max_year,min(release_year) as min_year from movies

##Q3
SELECT release_year, count(*) AS movies_count from movies 
GROUP BY release_year
ORDER BY release_year DESC


