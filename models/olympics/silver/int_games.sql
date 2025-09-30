select distinct
games
,year
,season
,city
,event_id
,game_id
,athlete_stat_id
from {{ ref('stg_olympics') }}