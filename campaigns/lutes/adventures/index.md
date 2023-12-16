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

## Timeline

The Sapphire Coast, the Kingdom of Amaranth, and all of the surrounding nations use the [Sherem Calendar]({{site.baseurl}}/campaigns/lutes/setting/daily-life#calendar), which is based on the constellations.

### Spring 2258

30 Roc
: Aoife receives a letter from [Garrick the Luthier]({{site.baseurl}}/campaigns/lutes/characters/thea-garrick), inviting her to Jewel to try a new masterwork lute.

5 Phoenix
: Aoife is attacked by twig blights shortly before arriving in Jewel.
: [The Luthier's Plight]({{site.baseurl}}/campaigns/lutes/adventures/luthiers-plight): Garrick has been abducted by goblins. Aoife and Jack descend into the sewers to rescue her, but the masterwork lute has already been sent as tribute to "the Goblin King".

15 Phoenix
: The Spring Equinox. [Fire Serpent Pass]({{site.baseurl}}/campaigns/lutes/setting/geography#fire-serpent-pass) erupts, isolating the Sapphire Coast from the rest of the kingdom.

### Summer 2258

15 Dragon
: The Summer Solstice. The winds rage out of control, causing widespread damage and the crash of the [Sky Dancer]({{site.baseurl}}/campaigns/lutes/setting/geography/city-of-jewel#the-sky-dancer) outside of Jewel.

### Autumn 2258

15 Unicorn
: The Autumn Equinox. The [Lapis River]({{site.baseurl}}/campaigns/lutes/setting/geography#lapis-river) dries up, crippling internal trade in the Sapphire Coast.

---

[Back to Home]({{site.baseurl}}/)
|
[Back to Campaigns]({{site.baseurl}}/campaigns)
|
[Back to {{campaign.name}}]({{site.baseurl}}/campaigns/{{campaign.slug}})
