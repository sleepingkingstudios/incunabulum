{% assign characters = site.characters | where: "campaign", "wellspring" | where: "category", "player_character" %}

{% for character in characters %}
[{{ character.name }}]({{site.baseurl}}/campaigns/wellspring/characters/{{character.slug}})
: {{ character.preview }} -- played by {{ character.played_by }}.
{% endfor %}
