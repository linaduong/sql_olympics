select distinct
athlete_stat_id
,sex
,age
,height
,weight
,noc_region
from {{ ref('stg_olympics') }}