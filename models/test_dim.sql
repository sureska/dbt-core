{{ config(
        materialized='table'
    ) }}

    select 1
    as test_col
    union
    select 2
    as test_col