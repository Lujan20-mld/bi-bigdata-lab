SELECT
    s.sale_id,
    d.date_key,
    p.product_key,
    c.customer_key,
    st.store_key,
    s.quantity,
    s.unit_price,
    s.sales_amount
FROM {{ ref('stg_sales') }} s
LEFT JOIN {{ ref('dim_date') }} d
    ON s.sale_date = d.full_date
LEFT JOIN {{ ref('dim_product') }} p
    ON s.product_id = p.product_id
LEFT JOIN {{ ref('dim_customer') }} c
    ON s.customer_id = c.customer_id
LEFT JOIN {{ ref('dim_store') }} st
    ON s.store_id = st.store_id