with source as (

    select * from {{ source('pagila', 'country') }}

),

renamed as (

    select
        country_id,
        country as country_name,
        last_update

    from source
    {% if target.name == 'dev' %}
    limit 10
    {% endif %}
    
)

select * from renamed
