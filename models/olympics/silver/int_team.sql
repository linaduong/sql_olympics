select distinct
athlete_id
,team
,noc
from {{ ref('stg_olympics') }}