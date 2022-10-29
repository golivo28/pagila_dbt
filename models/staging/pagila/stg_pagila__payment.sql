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
        payment_date

    from source
    {% if target.name == 'dev' %}
    limit 10
    {% endif %}

)

select * from renamed
