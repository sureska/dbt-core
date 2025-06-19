{{ config(
        materialized='table',
        schema='DBT_NNAME'
    ) }}

    select *
    from {{ source('flat_files', 'FILE_PRIORITY_SKU') }}