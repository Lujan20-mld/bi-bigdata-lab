--liquibase formatted sql
--changeset estudiante:005

CREATE TABLE IF NOT EXISTS ucv_bi.gold.dim_customer (
    customer_key BIGINT,
    customer_id BIGINT,
    customer_name STRING,
    segment STRING,
    city STRING,
    country STRING
)
USING DELTA;

--rollback DROP TABLE IF EXISTS ucv_bi.gold.dim_customer;