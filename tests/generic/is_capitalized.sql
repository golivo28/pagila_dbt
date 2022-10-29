{% test is_capitalized(model, column_name)%}

    select * 
    from {{ model }}
    where {{ column_name }} != initcap({{ column_name }})

{% endtest%}
