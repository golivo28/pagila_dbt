with inventory as (

    select * from {{ ref('stg_pagila__inventory') }}

),

store as (

    select * from {{ ref('stg_pagila__store') }}

),

joined as (

    select

        inventory.inventory_id,
        store.address_id

    from inventory
    inner join store
        on store.store_id = inventory.store_id

)

select * from joined
