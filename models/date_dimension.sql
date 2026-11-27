with
    cte as (
        select
            started_at,
            to_timestamp(started_at) as started_at_timestamp,
            date(to_timestamp(started_at)) as date_started_at_date,
            {{ get_season("STARTED_AT") }} as season,
            {{ day_type("STARTED_AT") }} as day_of_week

        from {{ source("demo", "bike") }}
        where started_at != 'started_at'
    )

select *
from cte
