##row number assigns unique number irrespective of same value 
select *,
 row_number() over(partition by category order by amount desc) ##desc to give highest amount as rank 1
as rank_category
from expenses;

##top 2 expenses
with cte as (select *, 
row_number() over(partition by category order by amount desc) ##desc to give highest amount as rank 1
as rank_category
from expenses)

select * from cte where rank_category <=2;

##rank gives the same rank for different values unlike row number but it will skip the next number. For ex: rank 2 to two same rows skipping 3 and giving 4 to the next row

select *, 
row_number() over(partition by category order by amount desc) as row_number_category ,
rank() over(partition by category order by amount desc) 
as rank_category
from expenses;

##dense rank is similar to rank just that it doesnt skip the next number after same ranks
select *, 
row_number() over(partition by category order by amount desc) as row_number_category ,
rank() over(partition by category order by amount desc) as rank_category,
 dense_rank() over(partition by category order by amount desc) as dense_rank_category
from expenses;

##top 2 rows using dense rank 

with cte as (select *, 
row_number() over(partition by category order by amount desc) as row_number_category ,
rank() over(partition by category order by amount desc) as rank_category,
 dense_rank() over(partition by category order by amount desc) as dense_rank_category
from expenses)

select* from cte where dense_rank_category <=2