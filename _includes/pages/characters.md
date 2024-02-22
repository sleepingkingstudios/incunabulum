{% assign characters = site.characters | where: "campaign", page.campaign | group_by: "category" %}

# Characters

<!-- Table Of Contents -->
{% include pages/characters/table-of-contents.md characters=characters %}

{% if setting.blurbs.characters %}
{{ setting.blurbs.characters }}
{% endif %}

{% assign group = characters | where: "name", "player_character" | first %}
{% assign player_characters = group.items %}

{% if player_characters %}
## Player Characters

{% for character in player_characters %}
{% include pages/characters/character.md character=character %}
{% endfor %}
{% endif %}

{% assign group = characters | where: "name", "ally" | first %}
{% assign allies = group.items %}

{% if allies %}
## Allies

{% for character in allies %}
{% include pages/characters/character.md character=character %}
{% endfor %}
{% endif %}

{% assign group = characters | where: "name", "contact" | first %}
{% assign contacts = group.items %}

{% if contacts %}
## Contacts

{% for character in contacts %}
{% include pages/characters/character.md character=character %}
{% endfor %}
{% endif %}

{% assign group = characters | where: "name", "adversary" | first %}
{% assign adversaries = group.items %}

{% if adversaries %}
## Adversaries

{% for character in adversaries %}
{% include pages/characters/character.md character=character %}
{% endfor %}
{% endif %}

{% assign group = characters | where: "name", "" | first %}
{% assign other_characters = group.items %}

{% if other_characters %}
## Other Characters

{% for character in other_characters %}
{% include pages/characters/character.md character=character %}
{% endfor %}
{% endif %}

{% include pages/characters/breadcrumbs.md %}
