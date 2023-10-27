{% if child.slug %}
#### [{{ child.name }}]({{site.baseurl}}/campaigns/{{page.campaign}}/organizations/{{child.slug}})

{{ child.details }}
{% else %}
#### {{ child.name }}

{{ child.details }}
{% endif %}
