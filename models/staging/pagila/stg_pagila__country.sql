with source as (

    select * from {{ source('pagila', 'country') }}

),

renamed as (

    select
        country_id,
        country as country_name,
        last_update

    from source

)

select * from renamed
