{% assign character = site.characters | where: "campaign", page.campaign | where: "slug", page.slug | first %}

# {{ character.name }}

{% if character.played_by %}
Played By
: {{ character.played_by }}
{% endif %}

{% if character.full_name %}
Full Name
: {{ character.full_name }}
{% endif %}

{% if character.status %}
Status
: {{ character.status }}
{% endif %}

{% if character.lineage %}
Lineage
: {{ character.lineage }}
{% endif %}

{% if character.description %}
Description
: {{ character.description }}
{% endif %}

{{ character.content }}

{% if character.characters or character.organizations %}
## Affiliations
{% endif %}

{% if character.characters %}
### Characters

{% for character in character.characters %}
{% if character.slug %}
[{{ character.name }}]({{site.baseurl}}/campaigns/{{page.campaign}}/characters/{{character.slug}})
: {{ character.details | strip }}
{% else %}
{{ character.name }}
: {{ character.details | strip }}
{% endif %}
{% endfor %}
{% endif %}

{% if character.organizations %}
### Organizations

{% for organization in character.organizations %}
{% if organization.slug %}
[{{ organization.name }}]({{site.baserul}}/campaigns/{{page.campaign}}/organizations/{{organization.slug}})
: {{ organization.details }}
{% else %}
{{ organization.name }}
: {{ organization.details }}
{% endif %}
{% endfor %}
{% endif %}

{% if character.adventures %}
## Adventures

{% for adventure in character.adventures %}
{% if adventure.slug %}
[{{ adventure.name }}]({{site.baseurl}}/campaigns/{{page.campaign}}/adventures/{{adventure.slug}})
: {{ adventure.details }}
{% else %}
{{ adventure.name }}
: {{ adventure.details }}
{% endif %}
{% endfor %}
{% endif %}

{% include pages/character/breadcrumbs.md %}
