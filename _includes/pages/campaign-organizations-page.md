{% assign organizations = '' | split: '' %}
{% assign matching = site.organizations | where: "campaign", page.campaign %}
{% for organization in matching %}
{% unless organization.parent_organization %}
{% assign organizations = organizations | push: organization %}
{% endunless %}
{% endfor %}

# Organizations

<!-- Table Of Contents -->
{% include pages/campaign-organizations-page/table-of-contents.md organizations=organizations %}

{% if setting.blurbs.organizations %}
{{ setting.blurbs.organizations }}
{% endif %}

{% for organization in organizations %}
{% include pages/campaign-organizations-page/organization.md organization=organization %}
{% endfor %}

{% include pages/campaign-organizations-page/breadcrumbs.md %}
