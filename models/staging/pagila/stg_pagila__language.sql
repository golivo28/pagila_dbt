with source as (

    select * from {{ source('pagila', 'language') }}

),

renamed as (

    select
        language_id,
        name as language_name,
        last_update

    from source
    {% if target.name == 'dev' %}
    limit 10
    {% endif %}

)

select * from renamed
