with payment as (

    select * from {{ ref('stg_pagila__payment') }}

),

rental as (

    select * from {{ ref('stg_pagila__rental') }}

),

joined as (

    select

        {{ dbt_utils.star(
            from=ref('stg_pagila__rental'),
            except=[
                'return_date',
                'staff_id',
                'last_update',
                '_loaded_at'
            ],
            relation_alias='rental'
        ) }},
        payment.amount

    from payment
    inner join rental
        on rental.rental_id = payment.rental_id

)

select * from joined
