SELECT product_category_name_english, round(SUM(revenue),2)
from ecommerce_analysis.fact_sales
GROUP BY product_category_name_english
order by round(SUM(revenue),2) DESC 