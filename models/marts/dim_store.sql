SELECT
    ROW_NUMBER() OVER (ORDER BY store_id) AS store_key,
    store_id,
    store_name,
    city,
    region,
    country
FROM {{ ref('stg_stores') }}