SELECT
    CAST(store_id AS BIGINT) AS store_id,
    TRIM(store_name) AS store_name,
    TRIM(city) AS city,
    TRIM(region) AS region,
    TRIM(country) AS country
FROM {{ source('bronze', 'stores_raw') }}