select distinct
result_id
,athlete_stat_id
,event_id
,medal
from {{ ref('stg_olympics') }}