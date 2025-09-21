{% macro get_date_parts(date_column) %}
    STRUCT(
        TO_DATE({{ date_column }}, 'M/d/yyyy') AS original_date,
        YEAR(TO_DATE({{ date_column }}, 'M/d/yyyy')) AS year,
        MONTH(TO_DATE({{ date_column }}, 'M/d/yyyy')) AS month,
        DAY(TO_DATE({{ date_column }}, 'M/d/yyyy')) AS day,
        DAYOFWEEK(TO_DATE({{ date_column }}, 'M/d/yyyy')) AS day_of_week,
        DAYOFYEAR(TO_DATE({{ date_column }}, 'M/d/yyyy')) AS day_of_year,
        WEEKOFYEAR(TO_DATE({{ date_column }}, 'M/d/yyyy')) AS week,
        QUARTER(TO_DATE({{ date_column }}, 'M/d/yyyy')) AS quarter
    )
{% endmacro %}