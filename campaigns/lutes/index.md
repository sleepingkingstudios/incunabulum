---
title: Lutes Are Nothing But Trouble
campaign: lutes
---

{% assign campaign = site.campaigns | where: "slug", page.campaign | first %}

# {{ campaign.name }}

{{ campaign.content }}

- [Campaign Log](#campaign-log)
  - [Characters](#characters)
  - [Adventures](#adventures)

## Campaign Log

### Characters

See Also: [Characters In The Sapphire Coast]({{site.baseurl}}/campaigns/lutes/characters)

{% include pages/campaign/characters-list.md %}

[Back To Top](#)

### Adventures

See Also: [Adventure Timeline]({{site.baseurl}}/campaigns/wellspring/adventures)

{% include pages/campaign/adventures-list.md omake=false %}

#### Omake

{% include pages/campaign/adventures-list.md omake=true %}

[Back To Top](#)

---

[Back to Home]({{site.baseurl}}/)
|
[Back to Campaigns]({{site.baseurl}}/campaigns)
