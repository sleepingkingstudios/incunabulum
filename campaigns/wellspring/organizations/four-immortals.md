---
title:    The Four Immortals
campaign: wellspring
slug:     four-immortals
---

{% assign organization = site.organizations | where: "campaign", page.campaign | where: "slug", page.slug | first %}

{% include organization.md organization=organization %}

---

[Back to Home]({{site.baseurl}}/)
|
[Back to Campaigns]({{site.baseurl}}/campaigns)
|
[Back to Adventures in Wellspring]({{site.baseurl}}/campaigns/wellspring)
|
[Back to Organizations]({{site.baseurl}}/campaigns/wellspring/organizations)
