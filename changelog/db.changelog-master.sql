--liquibase formatted sql

--changeset estudiante:001
CREATE SCHEMA IF NOT EXISTS workspace.bi_lab_7003116419
COMMENT 'Laboratorio 02 - BI y Big Data - UCV';

--rollback DROP SCHEMA IF EXISTS workspace.bi_lab_7003116419;

--changeset estudiante:002
CREATE SCHEMA IF NOT EXISTS workspace.bi_staging_7003116419
COMMENT 'Staging schema - BI and Big Data - Lab 03';

--rollback DROP SCHEMA IF EXISTS workspace.bi_staging_7003116419;

--changeset estudiante:008
CREATE SCHEMA IF NOT EXISTS workspace.bronze
COMMENT 'Bronze - raw data layer';

CREATE SCHEMA IF NOT EXISTS workspace.silver
COMMENT 'Silver - cleaned and standardized data layer';

--rollback DROP SCHEMA IF EXISTS workspace.silver;
--rollback DROP SCHEMA IF EXISTS workspace.bronze;

--changeset estudiante:009
CREATE TABLE IF NOT EXISTS workspace.bronze.sales_raw (
    sale_id STRING,
    sale_date STRING,
    product_id STRING,
    quantity STRING,
    unit_price STRING
)
USING DELTA;

CREATE TABLE IF NOT EXISTS workspace.bronze.products_raw (
    product_id STRING,
    product_name STRING,
    category STRING
)
USING DELTA;

--rollback DROP TABLE IF EXISTS workspace.bronze.products_raw;
--rollback DROP TABLE IF EXISTS workspace.bronze.sales_raw;