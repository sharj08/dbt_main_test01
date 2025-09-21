{% macro get_date_parts_flat(date_column) %}
    TO_DATE({{ date_column }}, 'MM/dd/yyyy') AS original_date,
    YEAR(TO_DATE({{ date_column }}, 'MM/dd/yyyy')) AS year,
    MONTH(TO_DATE({{ date_column }}, 'MM/dd/yyyy')) AS month,
    DAY(TO_DATE({{ date_column }}, 'MM/dd/yyyy')) AS day,
    DAYOFWEEK(TO_DATE({{ date_column }}, 'MM/dd/yyyy')) AS day_of_week,
    DAYOFYEAR(TO_DATE({{ date_column }}, 'MM/dd/yyyy')) AS day_of_year,
    WEEKOFYEAR(TO_DATE({{ date_column }}, 'MM/dd/yyyy')) AS week,
    QUARTER(TO_DATE({{ date_column }}, 'MM/dd/yyyy')) AS quarter
{% endmacro %}