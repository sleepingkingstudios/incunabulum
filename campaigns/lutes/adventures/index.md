---
title: Sapphire Coast \| Adventures
campaign: lutes
---

{% assign campaign = site.campaigns | where: "slug", page.campaign | first %}

# Adventures

{{ campaign.content }}

{% include pages/campaign/adventures-list.md omake=false %}

## Omake

{% include pages/campaign/adventures-list.md omake=true %}

---

[Back to Home]({{site.baseurl}}/)
|
[Back to Campaigns]({{site.baseurl}}/campaigns)
|
[Back to {{campaign.name}}]({{site.baseurl}}/campaigns/{{campaign.slug}})
