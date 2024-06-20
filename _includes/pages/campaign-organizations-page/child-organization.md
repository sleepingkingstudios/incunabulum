{% if child.slug %}
#### [{{ child.name }}]({{site.baseurl}}/campaigns/{{page.campaign}}/setting/organizations/{{child.slug}})

{{ child.details }}
{% else %}
#### {{ child.name }}

{{ child.details }}
{% endif %}
