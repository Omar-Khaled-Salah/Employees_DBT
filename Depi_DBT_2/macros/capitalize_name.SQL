{% macro capitalize_name(first_name, last_name) %}
    CONCAT(
        UPPER(LEFT({{ first_name }}, 1)), SUBSTRING({{ first_name }}, 2, LEN({{ first_name }})),
        ' ',
        UPPER(LEFT({{ last_name }}, 1)), SUBSTRING({{ last_name }}, 2, LEN({{ last_name }}))
    )
{% endmacro %}