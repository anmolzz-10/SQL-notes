CREATE PROCEDURE `top_n_products`(
in_fiscal_year int,
in_top_n int
)
BEGIN
SELECT product,round(sum(net_sales)/1000000,2) as net_sales_mln
FROM gdb041.net_sales
WHERE fiscal_year = in_fiscal_year
group by p.product 
order by net_sales_mln desc 
limit in_top_n ;
END