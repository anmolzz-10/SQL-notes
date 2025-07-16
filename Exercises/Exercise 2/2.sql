
##Q1
SELECT * from movies ORDER BY release_year DESC

##Q2
SELECT * from movies WHERE release_year = 2022

##Q3
SELECT * FROM movies where release_year > 2020

##Q4
SELECT * FROM movies Where release_year>2020 and imdb_rating>8

##Q5
SELECT * from movies WHERE studio in ('Marvel Studios', 'Hombale Films')

##Q6
SELECT title,release_year FROM movies WHERE title LIKE '%thor%'

##Q7
SELECT * FROM movies WHERE studio NOT LIKE 'Marvel Studios'
SELECT * FROM movies WHERE studio != 'Marvel Studios'


