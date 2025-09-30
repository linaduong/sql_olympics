with 

source as (

    select * from {{ source('olympics', 'olympics_raw') }}

),

renamed as (

    select
        id as athlete_id,
        {{ dbt_utils.generate_surrogate_key(['athlete_id','age']) }} as athlete_stat_id,
        name,
        sex,
        age,
        height,
        weight,
        team,
        noc,
        games,
        {{ dbt_utils.generate_surrogate_key(['games']) }} as game_id,
        year,
        season,
        city,
        sport,
        event,
        {{ dbt_utils.generate_surrogate_key(['event']) }} as event_id,
        medal,
        {{ dbt_utils.generate_surrogate_key(['athlete_id','event','games']) }} as result_id,
        noc_region,
        noc_notes

    from source

)

select * from renamed
