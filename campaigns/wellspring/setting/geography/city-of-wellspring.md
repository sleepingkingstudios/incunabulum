---
title: The City Of Wellspring
campaign: wellspring
---

{% assign campaign = site.campaigns | where: "slug", page.campaign | first %}
{% assign setting = site.settings | where: "slug", page.setting | first %}

# The City Of Wellspring

The City of Wellspring is laid out in six districts; three in [the Upper City](#the-upper-city), three in [the Lower City](#the-lower-city). Beneath the city proper is [the Undercity](#the-undercity), a tangled warren of slums, sewers, and ruins beyond the reach of the law.

- [The Upper City](#the-upper-city)
  - [The Civic District](#the-civic-district)
  - [The Garden District](#the-garden-district)
  - [The Noble Quarter](#the-noble-quarter)
- [The Lower City](#the-lower-city)
  - [The Market District](#the-market-district)
  - [The Old City](#the-old-city)
  - [The Trades District](#the-trades-district)
- [The Undercity](#the-undercity)
- [Above Wellspring](#above-wellspring)

## The Upper City

{% assign civic_locations = site.locations | where: "campaign", page.campaign | where: "location", "wellspring-civic-district" %}
{% assign garden_locations = site.locations | where: "campaign", page.campaign | where: "location", "wellspring-garden-district" %}
{% assign noble_locations = site.locations | where: "campaign", page.campaign | where: "location", "wellspring-noble-quarter" %}

The highest part of the city is referred to as the Upper City, where the rich, powerful, and influential of Wellspring live, work, and play. Although most of the city was rebuilt after the Sherem Wars, the Upper City is entirely new, carved into terraces from the raw stone of the surrounding mountains.

- [The Civic District](#the-civic-district){% for location in civic_locations %}
{% assign url = location.heading | default: location.slug %}  - [{{ location.name }}](#{{url}}){% endfor %}
- [The Garden District](#the-garden-district){% for location in garden_locations %}
{% assign url = location.heading | default: location.slug %}  - [{{ location.name }}](#{{url}}){% endfor %}
- [The Noble Quarter](#the-noble-quarter){% for location in noble_locations %}
{% assign url = location.heading | default: location.slug %}  - [{{ location.name }}](#{{url}}){% endfor %}

[Back To Top](#)

### The Civic District

The Civic District is the commercial and administrative seat of Wellspring.

{% for location in civic_locations %}
#### {{ location.name }}

{{ location.content }}

[Back To Top](#)
{% endfor %}

### The Garden District

The Garden District is the home of Wellspring’s well-to-do though not wealthy, with rows of townhouses, tree-lined avenues and parks, and shops and restaurants for fine dining and luxuries. Many of the city’s houses of worship can be found in the Garden District as well.

{% for location in garden_locations %}
#### {{ location.name }}

{{ location.content }}

[Back To Top](#)
{% endfor %}

### The Noble Quarter

The Noble Quarter is the highest point in Wellspring proper, and is the home of the truly wealthy or those few granted a title of nobility by the Kingdom of Lothian. The City Guard are quick to question those who look like they might not belong here, and the private guard forces of some manors or estates are even less welcoming of outsiders.

{% for location in noble_locations %}
#### {{ location.name }}

{{ location.content }}

[Back To Top](#)
{% endfor %}

## The Lower City

{% assign market_locations = site.locations | where: "campaign", page.campaign | where: "location", "wellspring-market-district" %}
{% assign old_city_locations = site.locations | where: "campaign", page.campaign | where: "location", "wellspring-old-city" %}
{% assign trades_locations = site.locations | where: "campaign", page.campaign | where: "location", "wellspring-trades-district" %}

The districts known as the Lower City is where most of the people of Wellspring live and work.

- [The Market District](#the-market-district){% for location in market_locations %}
{% assign url = location.heading | default: location.slug %}  - [{{ location.name }}](#{{url}}){% endfor %}
- [The Old City](#the-old-city){% for location in old_city_locations %}
{% assign url = location.heading | default: location.slug %}  - [{{ location.name }}](#{{url}}){% endfor %}
- [The Trades District](#the-trades-district){% for location in trades_locations %}
{% assign url = location.heading | default: location.slug %}  - [{{ location.name }}](#{{url}}){% endfor %}

### The Market District

The Market District is closest to the road and canal to Lothian, and most trade to and from the city passes through its streets. The majority of the city’s inns, taverns, and way houses can be found here, along with large warehouses for storage and trade. The Market District is built over the [ruins of the old fortress](#the-fortress-ruins).

{% for location in market_locations %}
#### {{ location.name }}

{{ location.content }}

[Back To Top](#)
{% endfor %}

### The Old City

The Old City is a warren of narrow, winding streets that largely predates the city of Wellspring proper, having sprung up to service the military camp and fortress built to protect the Vale. Badly damaged during the Sherem Wars, the Old City faces the loss of its more well-to-do residents to new homes farther from the Great Chasm. At the same time, the parts of the Old City near the Garden District are at constant risk of being bought out and leveled, and some fear that the Old City and its unique architecture and culture are at risk of vanishing.

{% for location in old_city_locations %}
#### {{ location.name }}

{{ location.content }}

[Back To Top](#)
{% endfor %}

### The Trades District

The Trades District is where the common folk of Wellspring live, work, and play.

{% for location in trades_locations %}
#### {{ location.name }}

{{ location.content }}

[Back To Top](#)
{% endfor %}

## The Undercity

The area beneath the city proper is known as the Undercity. Officially, this area lies beyond the city’s protection, and the City Guard are rarely seen here unless pursuing a fugitive. Those who live in the Undercity tend to be poor, desperate, or unwelcome in the “civilized” parts of the city.

{% assign undercity_locations = site.locations | where: "campaign", page.campaign | where: "location", "wellspring-undercity" %}

{% for location in undercity_locations %}
{% assign url = location.heading | default: location.slug %}  - [{{ location.name }}](#{{url}}){% endfor %}

{% for location in undercity_locations %}
#### {{ location.name }}

{{ location.content }}

[Back To Top](#)
{% endfor %}

## Above Wellspring

The [Giant's Spine Mountains]({{site.baseurl}}/campaigns/wellspring/setting/geography#the-giants-spine-mountains) rise to snow-capped peaks on three sides of Wellspring, while to the west [Wellspring Vale]({{site.baseurl}}/campaigns/wellspring/setting/geography#wellspring-vale) descends down to the plains.

{% assign above_locations = site.locations | where: "campaign", page.campaign | where: "location", "wellspring-above" %}

{% for location in above_locations %}
{% assign url = location.heading | default: location.slug %}  - [{{ location.name }}](#{{url}}){% endfor %}

{% for location in above_locations %}
#### {{ location.name }}

{{ location.content }}

[Back To Top](#)
{% endfor %}

---

[Back to Home]({{site.baseurl}}/)
|
[Back to Campaigns]({{site.baseurl}}/campaigns)
|
[Back to {{ campaign.name }}]({{site.baseurl}}/campaigns/{{campaign.slug}})
|
[Back to Setting]({{site.baseurl}}/campaigns/{{campaign.slug}}/setting)
|
[Back to Geography]({{site.baseurl}}/campaigns/{{campaign.slug}}/setting/geography)
