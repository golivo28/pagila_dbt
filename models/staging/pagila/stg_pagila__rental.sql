with source as (

    select * from {{ source('pagila', 'rental') }}

),

renamed as (

    select
        rental_id,
        rental_date,
        inventory_id,
        customer_id,
        return_date,
        staff_id,
        last_update,
        _loaded_at

    from source
    {% if target.name == 'dev' %}
        where _loaded_at between (now() - interval '365 days') and now()
    {% endif %}

)

select * from renamed
