with 

source as (

    select * from {{ source('olympics', 'olympics_raw') }}

),

renamed as (

    select
        id,
        name,
        sex,
        age,
        height,
        weight,
        team,
        noc,
        games,
        year,
        season,
        city,
        sport,
        event,
        medal,
        noc_region,
        noc_notes

    from source

)

select * from renamed
