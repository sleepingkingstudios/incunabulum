{% capture season %}
{% case include.month %}
{% when "Roc", "Phoenix", "Centaur", "Zephyr", "Tempest", "Breeze" %}spring
{% when "Serpent", "Dragon", "Harper", "Spark", "Flame", "Ember" %}summer
{% when "Griffon", "Unicorn", "Sphinx", "Mountain", "Avalanche", "Boulder" %}autumn
{% when "Manticore", "Tortoise", "Hydra", "River", "Ocean", "Waves" %}
{% endcase %}
{% endcapture %}

{% capture url %}
{{ site.baseurl }}/campaigns/{{ page.campaign }}/adventures#{{ season | strip }}-{{ include.year }}
{% endcapture %}

> Date: [{{ include.day }} {{ include.month }}]({{ url | strip }})
