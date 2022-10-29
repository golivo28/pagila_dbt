with source as (

    select * from {{ source('pagila', 'store') }}

),

renamed as (

    select
        store_id,
        manager_staff_id,
        address_id,
        last_update

    from source
    {% if target.name == 'dev' %}
    limit 10
    {% endif %}

)

select * from renamed
