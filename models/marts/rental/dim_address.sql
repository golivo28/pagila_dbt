with address as (

    select * from {{ ref('stg_pagila__address') }}

),

cities as (

    select * from {{ ref('int_pagila__countries_and_cities_joined') }}

),

final as (

    select

        address.address_id,
        address.address,
        address.address2,
        address.district,
        address.postal_code,
        address.phone,
        cities.city,
        cities.country_name as country

    from address
    inner join cities
        on cities.city_id = address.city_id

)

select * from final
