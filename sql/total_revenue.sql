use ecommerce_analysis

SELECT ROUND(SUM(revenue), 2) AS total_revenue
FROM ecommerce_analysis.fact_sales;
