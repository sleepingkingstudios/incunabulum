{% assign campaign = site.campaigns | where: "slug", page.campaign | first %}
{% assign setting = site.settings | where: "slug", page.setting | first %}
{% assign organizations = '' | split: '' %}
{% assign matching = site.organizations | where: "campaign", page.campaign %}
{% for organization in matching %}
{% unless organization.parent_organization %}
{% assign organizations = organizations | push: organization %}
{% endunless %}
{% endfor %}

# Organizations

<!-- Table Of Contents -->
{% include pages/organizations/table_of_contents.md organizations=organizations %}

{% if setting.blurbs.organizations %}
{{ setting.blurbs.organizations }}
{% endif %}

{% for organization in organizations %}
{% include pages/organizations/organization.md organization=organization %}
{% endfor %}

{% include pages/organizations/breadcrumbs.md campaign=campaign setting=setting %}
