
---

{% if include.campaign %}
[Back to Home]({{site.baseurl}}/)
|
[Back to Campaigns]({{site.baseurl}}/campaigns)
|
[Back to {{include.campaign.name}}]({{site.baseurl}}/campaigns/{{include.campaign.slug}})
|
[Back to Characters]({{site.baseurl}}/campaigns/{{include.campaign.slug}}/characters)
{% elsif include.setting %}
[Back to Home]({{site.baseurl}}/)
|
[Back to Settings]({{site.baseurl}}/settings)
|
[Back to {{include.setting.name}}]({{site.baseurl}}/campaigns/{{include.setting.slug}})
|
[Back to Characters]({{site.baseurl}}/campaigns/{{include.setting.slug}}/characters)
{% endif %}
