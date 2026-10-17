SELECT
    d.year,
    d.month,
    d.month_name,
    SUM(f.sales_amount) AS total_sales,
    SUM(f.quantity) AS units_sold,
    SUM(f.sales_amount) /
        NULLIF(COUNT(DISTINCT f.sale_id), 0) AS average_ticket
FROM {{ ref('fact_sales') }} f
JOIN {{ ref('dim_date') }} d
    ON f.date_key = d.date_key
GROUP BY
    d.year,
    d.month,
    d.month_name