{% assign adventure = site.adventures | where: "campaign", page.campaign | where: "slug", page.slug | first %}

# {{ adventure.name | strip }}

- [Adventure Log](#adventure-log){% if adventure.characters %}
- [Characters](#characters){% endif %}{% if adventure.organizations %}
- [Organizations](#organizations){% endif %}{% if adventure.outcome %}
- [Outcome](#outcome){% endif %}

{{ adventure.summary }}

{% if adventure.omake %}
Omake
: The events of this adventure may not be canonical.
{% endif %}

## Adventure Log

{% assign content_length = adventure.content | strip | size %}
{% if content_length > 0 %}
{{ adventure.content }}

[Back To Top](#)
{% endif %}

{% assign scenes = site.scenes | where: "campaign", page.campaign | where: "adventure", page.slug | sort: "adventure_index" %}

{% for scene in scenes %}
- [{{ scene.title }}](#{{ scene.slug }})

  {{ scene.summary }}
{% endfor %}

{% for scene in scenes %}
{% include pages/adventure/scene.md scene=scene %}
{% endfor %}

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
[{{ organization.name }}]({{site.baseurl}}/campaigns/{{page.campaign}}/setting/organizations/{{organization.slug}})
: {{ organization.details }}
{% else %}
{{ organization.name }}
: {{ organization.details }}
{% endif %}
{% endfor %}

[Back To Top](#)
{% endif %}

{% if adventure.outcome %}
## Outcome

{{ adventure.outcome }}

{% if adventure.contacts %}
### Contacts

{% for contact in adventure.contacts %}
{% if contact.slug -%}
- [{{ contact.name | strip }}]({{site.baseurl}}/campaigns/{{page.campaign}}/characters/{{contact.slug}}){% if contact.details %}: {{ contact.details | strip }}{% endif %}
{%- else -%}
- {{ contact.name | strip }}{% if contact.details %}: {{ contact.details | strip }}{% endif %}
{%- endif -%}
{% endfor %}
{% endif %}

{% if adventure.discoveries %}
### Discoveries

{{ adventure.discoveries | markdownify }}
{% endif %}

{% if adventure.rewards %}
### Rewards

{{ adventure.rewards | markdownify }}
{% endif %}

[Back To Top](#)
{% endif %}

{% include pages/adventure/breadcrumbs.md %}
