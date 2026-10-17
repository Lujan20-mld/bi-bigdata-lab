SELECT DISTINCT
    CAST(DATE_FORMAT(sale_date, 'yyyyMMdd') AS INT) AS date_key,
    sale_date AS full_date,
    YEAR(sale_date) AS year,
    QUARTER(sale_date) AS quarter,
    MONTH(sale_date) AS month,
    MONTHNAME(sale_date) AS month_name,
    DAY(sale_date) AS day
FROM {{ ref('stg_sales') }}