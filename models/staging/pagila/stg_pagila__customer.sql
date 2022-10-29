with source as (

    select * from {{ source('pagila', 'customer') }}

),

renamed as (

    select
        customer_id,
        store_id,
        first_name as customer_first_name,
        last_name as customer_last_name,
        email,
        address_id,
        activebool as customer_active_bool,
        create_date,
        last_update,
        active as customer_active

    from source
    {% if target.name == 'dev' %}
    limit 10
    {% endif %}

)

select * from renamed
