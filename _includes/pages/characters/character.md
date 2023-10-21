{% assign character = include.character %}

### [{{character.name}}]({{site.baseurl}}/campaigns/{{page.campaign}}/characters/{{character.slug}})

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

[Back To Top](#)
