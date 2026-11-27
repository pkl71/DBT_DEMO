{%  macro get_season(x) %}

case when month(to_timestamp({{x}})) in (12, 1,2) then 'WINTER'
    WHEN month(to_timestamp({{x}})) between 3 and 5 then 'SPRING'
    WHEN month(to_timestamp({{x}})) between 6 and 8 then 'Summer'
    else 'Autumn'
end

{% endmacro %}

{% macro day_type(x)%}

case
when dayname(to_timestamp({{ x }})) in ('Sat','Sun')
    then 'WEEKEND'
    else 'BUSINESSDAY'
end

{% endmacro %}