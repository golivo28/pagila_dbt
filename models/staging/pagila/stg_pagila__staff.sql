with source as (

    select * from {{ source('pagila', 'staff') }}

),

renamed as (

    select
        staff_id,
        first_name as staff_first_name,
        last_name staff_last_name,
        address_id,
        email,
        store_id,
        active as staff_active,
        username,
        password,
        last_update,
        picture

    from source
    {% if target.name == 'dev' %}
    limit 10
    {% endif %}

)

select * from renamed
