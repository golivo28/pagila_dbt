with country as (

    select * from {{ ref('stg_pagila__country') }}

),

city as (

    select * from {{ ref('stg_pagila__city') }}

),

joined as (

    select

        city.city_id,
        city.city,
        country.country_name

    from country
    inner join city
        on city.country_id = country.country_id

)

select * from joined
