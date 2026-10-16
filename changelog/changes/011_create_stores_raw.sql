--liquibase formatted sql
--changeset estudiante:011

CREATE TABLE IF NOT EXISTS workspace.bronze.stores_raw (
    store_id STRING,
    store_name STRING,
    city STRING,
    region STRING,
    country STRING
)
USING DELTA;

--rollback DROP TABLE IF EXISTS workspace.bronze.stores_raw;