-- cross product between all rows of both tables, useful when we do not have common columns between two tables
select * from food_db.items 
CROSS JOIN
food_db.variants

select *,concat(variant_name,' ', name ) as full_name, price+ variant_price as final_price
from food_db.items
Cross join
food_db.variants

