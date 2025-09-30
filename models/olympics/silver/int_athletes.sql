select distinct
athlete_id
,athlete_stat_id
,name
,event_id
from {{ ref('stg_olympics') }}