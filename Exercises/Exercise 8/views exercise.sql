CREATE VIEW "gross sales" AS SELECT 
		s.date,
		s.fiscal_year,
		s.customer_code,
		c.customer,
		c.market,
		s.product_code,
		p.product, p.variant,
		s.sold_quantity,
		g.gross_price,
        round(s.sold_quantity*g.gross_price,2) as gross_price_total
        from fact_sales_monthly s 
        JOIN dim_customer c ON
        c.customer_code = s.customer_code
        JOIN dim_product p ON
        p.product_code = s.product_code
        JOIN fact_gross_price g ON
        g.product_code = s.product_code and
        g.fiscal_year = s.fiscal_year