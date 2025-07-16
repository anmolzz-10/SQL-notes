SELECT MAX(imdb_rating) from movies where industry  = 'Bollywood'

SELECT ROUND(AVG(imdb_rating),2) as AVG_rating from movies where studio  = 'Marvel Studios'

SELECT min(imdb_rating), max(imdb_rating),ROUND(AVG(imdb_rating),2) from movies where studio = 'Marvel Studios' 

SELECT studio,count(*) as count from movies GROUP BY studio ORDER BY count desc

SELECT studio,count(*) as count,ROUND(AVG(imdb_rating),2) as avg from movies where studio is not null
group by studio order by avg desc 