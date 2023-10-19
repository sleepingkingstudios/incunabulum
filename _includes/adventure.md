{% assign adventure = site.adventures | where: "campaign", page.campaign | where: "slug", page.slug | first %}

# {{ adventure.name | strip }}

- [Adventure Log](#adventure-log)
{% if adventure.characters %}- [Characters](#characters){% endif %}

{{ adventure.summary }}

## Adventure Log

{{ adventure.content }}

{% if adventure.characters %}
## Characters

{% for character in adventure.characters %}
{% if character.slug %}
[{{ character.name }}]({{site.baseurl}}/campaigns/{{page.campaign}}/characters/{{character.slug}})
: {{ character.details }}
{% else %}
{{ character.name }}
: {{ character.details }}
{% endif %}
{% endfor %}
{% endif %}
