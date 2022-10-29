with source as (

    select * from {{ source('pagila', 'film_actor') }}

),

renamed as (

    select
        actor_id,
        film_id,
        last_update

    from source
    {% if target.name == 'dev' %}
    limit 10
    {% endif %}

)

select * from renamed
