{% macro generate_model_doc_blocks(
                             model_name
                             ) %}
    {% if execute %}

        {% do print("# " ~ model_name ~ "\n") %}

        {% do print("{% docs " ~ model_name ~ " %}") %}
                        
        {% do print("{% enddocs %}" ~ "\n") %}

        {% for node in graph.nodes.values() 
            | selectattr("resource_type", "equalto", "model") 
            | selectattr("name", "equalto", model_name) %}

            {% for column_name in node.columns %}

                {% do print("{% docs " ~ node.name ~ "__" ~ column_name ~ " %}") %}
                
                {% do print("{% enddocs %}" ~ "\n") %}

            {% endfor %}

        {% endfor %}
                   
    {% endif %}

{% endmacro %}
