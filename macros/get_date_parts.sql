{% macro get_date_parts(date_column) %}

   STRUCT(
        {{ date_column }} AS original_date,
        YEAR({{ date_column }}) AS year,
        MONTH({{ date_column }}) AS month,
        DAY({{ date_column }}) AS day,
        DAYOFWEEK({{ date_column }}) AS day_of_week,
        DAYOFYEAR({{ date_column }}) AS day_of_year,
        WEEKOFYEAR({{ date_column }}) AS week,
        QUARTER({{ date_column }}) AS quarter
    )
{% endmacro %}



