with source as (

    select * from {{ source('pagila', 'payment') }}

),

renamed as (

    select
        payment_id,
        customer_id,
        staff_id,
        rental_id,
        amount,
        payment_date,
        _loaded_at

    from source
    {% if target.name == 'dev' %}
        where _loaded_at between (now() - interval '365 days') and now()
    {% endif %}

)

select * from renamed
