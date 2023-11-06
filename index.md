---
---

# Incunabulum

A repository of game design and development by [Sleeping King Studios](https://www.sleepingkingstudios.com).

## [Campaigns]({{site.baseurl}}/campaigns)

{% for campaign in site.campaigns %}
[{{ campaign.name }}]({{site.baseurl}}/campaigns/{{campaign.slug}})
: {{ campaign.content }}
{% endfor %}

## [Game Systems]({{site.baseurl}}/systems)

[Dungeons And Dragons: Fifth Edition]({{site.baseurl}}/systems/5e)
: The rules-heavy standard bearer.

## [Game Settings]({{site.baseurl}}/settings)

Settings for roleplaying adventure campaigns.

<!-- Corsairs of the Star Ocean
: A crew of adventurers sails the stars in search of fortune and glory. -->

<!-- Echoes of the Calamity
: A hundred years after the death of the Calamity, the Kingdom of Hyrule struggles to rebuild amidst ancient foes and new challenges. -->

<!-- The Myriadic Gates
: An original fantasy world with a deep history, a dynamic present and endless opportunities for adventure. -->

[The Sapphire Coast]({{site.baseurl}}/settings/sapphire-coast)
: A land of classical fantasy adventure, the Sapphire Coast is an idyllic frontier that hides a dark past and faces a troubled future.

[Wellspring, City of Adventure]({{site.baseurl}}/campaigns/wellspring/setting)
: A setting of renaissance urban fantasy adventure, set in a city perched on the edge of a fantastical chasm.
