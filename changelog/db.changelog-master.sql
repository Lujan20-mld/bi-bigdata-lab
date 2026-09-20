--liquibase formatted sql

--changeset estudiante:001
CREATE SCHEMA IF NOT EXISTS workspace.bi_lab_7003116419
COMMENT 'Laboratorio 02 - BI y Big Data - UCV';

--rollback DROP SCHEMA IF EXISTS workspace.bi_lab_7003116419;

--changeset estudiante:002
CREATE SCHEMA IF NOT EXISTS workspace.bi_staging_7003116419
COMMENT 'Staging schema - EDITADO EXPERIMENTO';

--rollback DROP SCHEMA IF EXISTS workspace.bi_staging_7003116419;