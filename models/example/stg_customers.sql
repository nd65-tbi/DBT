with customers as (

    select
        id as customer_id,
        first_name,
        last_name

    from raw.dbt_src.customers

)
select * from customers