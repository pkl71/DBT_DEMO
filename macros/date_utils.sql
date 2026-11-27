{%  macro get_season(x) %}

case when month(to_timestamp({{x}})) in (12, 1,2) then 'WINTER'
    WHEN month(to_timestamp({{x}})) between 3 and 5 then 'SPRING'
    WHEN month(to_timestamp({{x}})) between 6 and 8 then 'Summer'
    else 'Autumn'
end

{% endmacro %}