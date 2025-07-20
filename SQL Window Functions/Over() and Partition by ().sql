SELECT * FROM random_tables.expenses;
## each row amount percentage of total expenses sum
select 
             *,
    	     amount*100/sum(amount) over () as pct ##window is all the rows 
	from random_tables.expenses 
	order by category;

##amount percentage by category total sum
select 
             *,
    	     amount*100/sum(amount) over (partition by category) as pct ##window is partitioned by each category that is percentage contribution per category. Window is defined by category.
	from random_tables.expenses 
	order by category;
    
## cumulative sum of amount in each category

select 
             *,
    	     sum(amount) 
             over(partition by category order by date) as total_expense_till_date ##window defined by category ordered by date
	from random_tables.expenses 
	order by category;
    
    