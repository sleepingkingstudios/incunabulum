{% assign characters = include.characters %}

{% assign group = characters | where: "name", "player_character" | first %}
{% assign player_characters = group.items %}

{% assign group = characters | where: "name", "ally" | first %}
{% assign allies = group.items %}

{% assign group = characters | where: "name", "contact" | first %}
{% assign contacts = group.items %}

{% assign group = characters | where: "name", "adversary" | first %}
{% assign adversaries = group.items %}

{% assign group = characters | where: "name", "" | first %}
{% assign other_characters = group.items %}

{% if player_characters %}
- [Player Characters](#player-characters)
{%- for character in player_characters %}
  - [{{character.name}}](#{{character.slug}})
{%- endfor %}
{% endif %}
{% if allies %}
- [Allies](#allies)
{%- for character in allies %}
  - [{{character.name}}](#{{character.slug}})
{%- endfor %}
{% endif %}
{% if contacts %}
- [Contacts](#contacts)
{%- for character in contacts %}
  - [{{character.name}}](#{{character.slug}})
{%- endfor %}
{% endif %}
{% if adversaries %}
- [Adversaries](#adversaries)
{%- for character in adversaries %}
  - [{{character.name}}](#{{character.slug}})
{%- endfor %}
{% endif %}
{% if other_characters %}
- [Other Characters](#other-characters)
{%- for character in other_characters %}
  - [{{character.name}}](#{{character.slug}})
{%- endfor %}
{% endif %}
