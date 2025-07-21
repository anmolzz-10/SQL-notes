SELECT *,
row_number() over(order by marks desc) as row_number_category ,
rank() over(order by marks desc) as rank_category,
 dense_rank() over(order by marks desc) as dense_rank_category
 FROM random_tables.student_marks
 
 