{% macro tag(col) %}
    CASE 
        WHEN {{ col }} < 100 THEN 'budget'
        WHEN {{ col }} < 200 THEN 'delux'
        ELSE 'super_delux'
    END
{% endmacro %}