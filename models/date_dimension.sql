WITH CTE AS (
select
STARTED_AT,
to_timestamp(STARTED_AT) as started_at_timestamp,
date(to_timestamp(started_at)) as date_started_at_date

from
{{ source('demo', 'bike') }}
where STARTED_AT != 'started_at'
)

select
*
from CTE