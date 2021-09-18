{%  macro limit_data_in_dev(column_name, No_of_days=3 )  %}
{% if target.name=='dev' %}
where {{ column_name }}>=dateadd('day', -{{ No_of_days }} ,current_timestamp)
{% endif %}
{% endmacro %}