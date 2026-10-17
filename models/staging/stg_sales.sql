SELECT
    CAST(sale_id AS BIGINT) AS sale_id,
    CAST(sale_date AS DATE) AS sale_date,
    CAST(product_id AS BIGINT) AS product_id,
    CAST(customer_id AS BIGINT) AS customer_id,
    CAST(store_id AS BIGINT) AS store_id,
    CAST(quantity AS INT) AS quantity,
    CAST(unit_price AS DECIMAL(12,2)) AS unit_price,
    CAST(quantity AS INT) * CAST(unit_price AS DECIMAL(12,2)) AS sales_amount
FROM {{ source('bronze', 'sales_raw') }}