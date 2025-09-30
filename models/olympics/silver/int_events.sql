select distinct
event_id
,event
,athlete_stat_id
from {{ ref('stg_olympics') }}