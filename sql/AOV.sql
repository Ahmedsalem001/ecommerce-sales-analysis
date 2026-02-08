SELECT round(SUM(revenue)/ COUNT(distinct order_id),2) as avg_order_value
FROM ecommerce_analysis.fact_sales