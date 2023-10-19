---
title:    Daragoth the Mojh
campaign: wellspring
slug:     daragoth
---

{% assign character = site.characters | where: "campaign", page.campaign | where: "slug", page.slug | first %}

{% include character.md character=character %}

---

[Back to Home]({{site.baseurl}}/)
|
[Back to Campaigns]({{site.baseurl}}/campaigns)
|
[Back to Adventures in Wellspring]({{site.baseurl}}/campaigns/wellspring)
|
[Back to Characters]({{site.baseurl}}/campaigns/wellspring/characters)