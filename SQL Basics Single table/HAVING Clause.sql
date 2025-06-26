select release_year,count(*) from movies group by release_year 

Select release_year,count(*) as count from movies group by release_year
having count>2 ORDER BY count desc ##always use having after group by 

-- FROM --> WHERE --> GROUP BY --> HAVING --> ORDER BY thats why where will not work as its accessed before group by so it wont recognize the derived column
-- hence use HAVING.Also ensure whatever column in having clause must be there in select statement.

SELECT release_year,count(*) as count from movies
where imdb_rating>6 -- WHERE clause will work even if column is not in select like here imdb is not in select 
group by release_year having count>2 order by count desc

Select release_year,count(*) as count from movies gro up by release_year
having imdb_rating>2 -- HAVING wont work unless column is mentioned in select statement
 order by count desc
 
 -- HAVING CLAUSE USE CASES: 1) Aggregated column 2) derived column