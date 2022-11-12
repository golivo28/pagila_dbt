{% macro generate_source_doc_blocks(
                             source_name="",
                             tables=[]
                             ) %}
    {% if execute %}

        {% do print("# " ~ source_name ~ "\n") %}

        {% do print("{% docs " ~ source_name ~ " %}") %}
                        
        {% do print("{% enddocs %}" ~ "\n") %}

        {% for node in graph.sources.values() | selectattr("source_name", "equalto", source_name) %}
                
                {% if node.name in tables %}
                
                    {% do print("## " ~ node.name ~ "\n") %}

                    {% do print("{% docs " ~ node.name ~ " %}") %}
                        
                    {% do print("{% enddocs %}" ~ "\n") %}

                    {% for column_name in node.columns %}

                        {% do print("{% docs " ~ node.name ~ "__" ~ column_name ~ " %}") %}
                        
                        {% do print("{% enddocs %}" ~ "\n") %}

                    {% endfor %}

                {% endif%}

        {% endfor %}
                   
    {% endif %}

{% endmacro %}
