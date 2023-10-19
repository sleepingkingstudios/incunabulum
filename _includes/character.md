# {{ character.name }}

{% if include.character.full_name %}
Full Name
: {{ include.character.full_name }}
{% endif %}

{% if include.character.lineage %}
Lineage
: {{ include.character.lineage }}
{% endif %}

{% if include.character.description %}
Description
: {{ include.character.description }}
{% endif %}

{{ include.character.content }}

{% if include.character.characters or include.character.organizations %}
## Affiliations
{% endif %}

{% if include.character.characters %}
### Characters

{% for character in include.character.characters %}
{% if character.slug %}
[{{ character.name }}]({{site.baseurl}}/campaigns/{{page.campaign}}/characters/{{character.slug}})
: {{ character.details | strip }}
{% else %}
{{ character.name }}
: {{ character.details | strip }}
{% endif %}
{% endfor %}
{% endif %}

{% if include.character.organizations %}
### Organizations

{% for organization in include.character.organizations %}
{% if organization.slug %}
[{{ organization.name }}]({{site.baserul}}/campaigns/{{page.campaign}}/organizations/{{organization.slug}})
: {{ organization.details }}
{% else %}
{{ organization.name }}
: {{ organization.details }}
{% endif %}
{% endfor %}
{% endif %}

{% if include.character.adventures %}
### Adventures

{% for adventure in include.character.adventures %}
{% if adventure.slug %}
[{{ adventure.name }}]({{site.baseurl}}/campaigns/{{page.campaign}}/adventures/{{adventure.slug}})
: {{ adventure.details }}
{% else %}
{{ adventure.name }}
: {{ adventure.details }}
{% endif %}
{% endfor %}
{% endif %}
