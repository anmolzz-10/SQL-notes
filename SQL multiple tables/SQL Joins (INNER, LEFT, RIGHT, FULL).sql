-- Inner JOIN
select m.movie_id,.title,f.revenue,f.budget,f.profit from movies m
JOIN financials f ON m.movie_id = f.movie_id

-- USING keyword if common column has the same name
select m.movie_id, m.title,f.revenue,f.budget,f.profit from movies m
JOIN financials f using(movie_id)

-- If we want all movie data despite some not being in financials table
select m.movie_id,m.title,f.revenue,f.budget,f.profit from movies m
LEFT JOIN financials f ON m.movie_id = f.movie_id

-- If we want all financial data despite some not being in movies table, use movie id in select statement from right table when doing right join
select f.movie_id, m.title,f.revenue,f.budget,f.profit from movies m
RIGHT JOIN financials f ON m.movie_id = f.movie_id

-- when to get full records us union it is same as full join
select m.movie_id,title,revenue,budget,profit from movies m
LEFT JOIN financials f ON m.movie_id = f.movie_id
union
select f.movie_id,title,revenue,budget,profit from movies m
RIGHT JOIN financials f ON m.movie_id = f.movie_id