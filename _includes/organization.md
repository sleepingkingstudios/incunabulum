# {{ organization.name }}

{{ organization.content }}

{% if organization.parent_organization %}
{% if organization.parent_organization.slug %}
Parent Organization
: [{{ organization.parent_organization.name }}]({{site.baseurl}}/campaigns/{{page.campaign}}/organizations/{{organization.parent_organization.slug}})
{% else %}
Parent Organization
: {{ organization.parent_organization.name }}
{% endif %}
{% endif %}

{% if organization.headquarters %}
Headquarters
: {{ organization.headquarters }}
{% endif %}

{% if organization.membership %}
Membership
: {{ organization.membership }}
{% endif %}

{% if organization.relationships %}
Relationships
: {{ organization.relationships }}
{% endif %}

{% if organization.services %}
## Services

{{ organization.services }}
{% endif %}

{% if organization.child_organizations or organization.members %}
## Affiliations
{% endif %}

{% if organization.child_organizations %}
### {{ organization.child_organizations_label | default: "Child Organizations" }}

{% for child in organization.child_organizations %}
{% if child.slug %}
[{{ child.name }}]({{site.baseurl}}/campaigns/{{page.campaign}}/organizations/{{child.slug}})
: {{ child.details }}
{% else %}
{{ child.name }}
: {{ child.details }}
{% endif %}
{% endfor %}
{% endif %}

{% if organization.members %}
### Members

{% for member in organization.members %}
{% if member.slug -%}
- [{{ member.name | strip }}]({{site.baseurl}}/campaigns/{{page.campaign}}/characters/{{member.slug}}){% if member.former %} (Former){% endif %}{% if member.details %}: {{ member.details | strip }}{% endif %}
{%- else -%}
- {{ member.name | strip }}{% if member.former %} (Former){% endif %}{% if member.details %}: {{ member.details | strip }}{% endif %}
{%- endif -%}
{% endfor %}
{% endif %}

{% if include.organization.adventures %}
## Adventures

{% for adventure in include.organization.adventures %}
{% if adventure.slug %}
[{{ adventure.name }}]({{site.baseurl}}/campaigns/{{page.campaign}}/adventures/{{adventure.slug}})
: {{ adventure.details }}
{% else %}
{{ adventure.name }}
: {{ adventure.details }}
{% endif %}
{% endfor %}
{% endif %}
