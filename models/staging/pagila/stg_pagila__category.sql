with source as (

    select * from {{ source('pagila', 'category') }}

),

renamed as (

    select
        category_id,
        name as category_name,
        last_update

    from source
    {% if target.name == 'dev' %}
    limit 10
    {% endif %}

)

select * from renamed
