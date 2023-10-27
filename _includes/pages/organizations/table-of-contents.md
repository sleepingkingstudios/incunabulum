{% for organization in include.organizations %}{% assign url = organization.heading | default: organization.slug %}
- [{{organization.name}}](#{{url}})
{%- if organization.child_organizations %}
{%- for child in organization.child_organizations %}{% assign child_url = child.heading | default: child.slug %}
  - [{{child.name}}](#{{child_url}})
{%- endfor %}
{% endif %}
{%- endfor %}
