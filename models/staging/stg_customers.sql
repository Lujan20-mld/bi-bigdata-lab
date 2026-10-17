SELECT
    CAST(customer_id AS BIGINT) AS customer_id,
    TRIM(customer_name) AS customer_name,
    TRIM(segment) AS segment,
    TRIM(city) AS city,
    TRIM(country) AS country
FROM {{ source('bronze', 'customers_raw') }}