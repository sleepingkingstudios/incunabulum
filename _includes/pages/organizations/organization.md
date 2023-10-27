{% assign organization = include.organization %}

## [{{ organization.name }}]({{site.baseurl}}/campaigns/{{page.campaign}}/organizations/{{organization.slug}})

{{ organization.content }}

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
### Services

{{ organization.services }}
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

{% if organization.child_organizations %}
### {{ organization.child_organizations_label | default: "Child Organizations" }}

{% for child in organization.child_organizations %}
{% include pages/organizations/child-organization.md child=child %}
{% endfor %}
{% endif %}

[Back To Top](#)
