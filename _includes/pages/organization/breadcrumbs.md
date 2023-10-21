
---

{% if include.campaign %}
[Back to Home]({{site.baseurl}}/)
|
[Back to Campaigns]({{site.baseurl}}/campaigns)
|
[Back to {{include.campaign.name}}]({{site.baseurl}}/campaigns/{{include.campaign.slug}})
|
[Back to Organizations]({{site.baseurl}}/campaigns/{{include.campaign.slug}}/organizations)
{% elsif include.setting %}
[Back to Home]({{site.baseurl}}/)
|
[Back to Settings]({{site.baseurl}}/settings)
|
[Back to {{include.setting.name}}]({{site.baseurl}}/campaigns/{{include.setting.slug}})
|
[Back to Organizations]({{site.baseurl}}/campaigns/{{include.setting.slug}}/organizations)
{% endif %}
