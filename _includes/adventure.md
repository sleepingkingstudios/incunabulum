{% assign adventure = site.adventures | where: "campaign", page.campaign | where: "slug", page.slug | first %}

# {{ adventure.name | strip }}

- [Adventure Log](#adventure-log)
{% if adventure.characters %}- [Characters](#characters){% endif %}
{% if adventure.organizations %}- [Organizations](#organizations){% endif %}

{{ adventure.summary }}

## Adventure Log

{{ adventure.content }}

[Back To Top](#)

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

[Back To Top](#)
{% endif %}

{% if adventure.organizations %}
## Organizations

{% for organization in adventure.organizations %}
{% if organization.slug %}
[{{ organization.name }}]({{site.baseurl}}/campaigns/{{page.campaign}}/organizations/{{organization.slug}})
: {{ organization.details }}
{% else %}
{{ organization.name }}
: {{ organization.details }}
{% endif %}
{% endfor %}

[Back To Top](#)
{% endif %}
