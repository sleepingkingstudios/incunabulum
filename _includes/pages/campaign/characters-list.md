{% assign characters = site.characters | where: "campaign", page.campaign | where: "category", "player_character" %}

{% for character in characters %}
[{{ character.name }}]({{site.baseurl}}/campaigns/{{page.campaign}}/characters/{{character.slug}})
: {{ character.preview }} -- played by {{ character.played_by }}.
{% endfor %}
