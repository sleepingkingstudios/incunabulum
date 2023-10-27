{% assign campaign = site.campaigns | where: "slug", page.campaign | first %}

---

[Back to Home]({{site.baseurl}}/)
|
[Back to Campaigns]({{site.baseurl}}/campaigns)
|
[Back to {{campaign.name}}]({{site.baseurl}}/campaigns/{{campaign.slug}})
|
[Back to Organizations]({{site.baseurl}}/campaigns/{{campaign.slug}}/organizations)
