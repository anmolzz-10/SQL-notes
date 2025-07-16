##Exercise for Chapter 1 

##Exercise 1  Print all movie titles and release year for all Marvel Studios movies
SELECT title,release_year from movies 
WHERE studio = 'Marvel Studios'

##Exercise 2 Print all movies that have Avenger in their name
SELECT * from movies 
WHERE title LIKE '%Avengers%'

##Exercise 3 Print the year in which "The Godfather" move was released
SELECT release_year from movies
WHERE title = 'The Godfather'

##Exercise 4

SELECT distinct studio from movies
WHERE industry = 'Bollywood'