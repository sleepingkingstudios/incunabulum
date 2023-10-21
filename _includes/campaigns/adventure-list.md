{% assign adventures = site.adventures | where: "campaign", page.campaign %}
{% for adventure in adventures %}
[{{adventure.name | strip}}]({{site.baseurl}}/campaigns/{{adventure.campaign | strip }}/adventures/{{adventure.slug | strip}})
: {{ adventure.summary }}
{% endfor %}
