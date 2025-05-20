{% set source_name = 'flat_files' %}
{% set source_name = 'flat_files' %}
{% set tables = source(source_name) %}

{% for table in tables %}
    {{ config(
        materialized='table',
        schema='DBT_NNAME',  -- Specify your target schema here
        name=table.name  -- Use the name of the source table
    ) }}

    select *
    from {{ source(source_name, table.name) }}
{% endfor %}