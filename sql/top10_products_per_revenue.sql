SELECT product_id, revenue, rank_revenue
FROM (SELECT 
	product_id ,
	SUM(revenue ) as revenue,
	DENSE_RANK() over (order by SUM(revenue) DESC ) as rank_revenue
FROM ecommerce_analysis.fact_sales
GROUP BY product_id  ) ranked_products
WHERE rank_revenue  <= 10
ORDER BY rank_revenue