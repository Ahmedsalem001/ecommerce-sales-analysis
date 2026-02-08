SELECT
    ROUND(
        SUM(CASE WHEN customer_type = 'repeat' THEN customers_count ELSE 0 END)
        /
        SUM(customers_count) * 100
    , 2) AS repeat_customer_pct
FROM (
    SELECT
        CASE
            WHEN COUNT(DISTINCT order_id) = 1 THEN 'one_time'
            ELSE 'repeat'
        END AS customer_type,
        COUNT(DISTINCT customer_id) AS customers_count
    FROM fact_sales
    GROUP BY customer_id
) t;
