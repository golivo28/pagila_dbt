with source as (

    select * from {{ source('pagila', 'city') }}

),

renamed as (

    select
        city_id,
        city,
        country_id,
        last_update

    from source
    {% if target.name == 'dev' %}
    limit 10
    {% endif %}

)

select * from renamed
