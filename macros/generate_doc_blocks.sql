{% macro generate_doc_blocks(model_name, doc_blocks_for_sources, doc_blocks_for_models, doc_blocks_for_seeds) %}
    {% if execute %}
        

        {% set sources_list = [] %}

        {% for node in graph.sources.values() %}
            {% for column_name in node.columns %}
                {% do print("{% docs " ~ node.name ~ "__" ~ column_name ~ " %}") %}
                {% do print("{% enddocs %}") %}
            {% endfor %}
        {% endfor %}
            
        
    {% endif %}

{% endmacro %}