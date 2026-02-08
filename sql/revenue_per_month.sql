SELECT order_month, ROUND(SUM(revenue),2) as revenue_per_month
FROM ecommerce_analysis.fact_sales
GROUP BY order_month 
order by order_month 
