with source as (

    select * from {{ source('pagila', 'film_category') }}

),

renamed as (

    select
        film_id,
        category_id,
        last_update

    from source
    {% if target.name == 'dev' %}
    limit 10
    {% endif %}

)

select * from renamed
