with source as (

    select * from {{ source('pagila', 'actor') }}

),

renamed as (

    select
        actor_id,
        first_name as actor_first_name,
        last_name as actor_last_name,
        last_update

    from source

)

select * from renamed
