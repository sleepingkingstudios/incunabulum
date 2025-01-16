---
title: Beneath Wellspring
campaign: wellspring
---

# Beneath Wellspring

Beneath the city of Wellspring lies a vast, mostly uncharted network of caves, caverns, and catacombs, home to creatures fair and foul and filled with lairs, traps, treasures, and ruins from lost and ancient civilizations. Collectively, they are known as the Deeps. Members of the Delvers' Guild risk their lives to explore the Deeps in search of fame, fortune, and the all-important magicite that crystallizes from raw mana from the Great Chasm.

{% assign upper_locations = site.locations | where: "campaign", page.campaign | where: "location", "wellspring-upper-deeps" %}
{% assign middle_locations = site.locations | where: "campaign", page.campaign | where: "location", "wellspring-middle-deeps" %}

- [The Upper Deeps](#the-upper-deeps){% for location in upper_locations %}
{% assign url = location.heading | default: location.slug %}  - [{{ location.name }}](#{{url}}){% endfor %}
- [The Middle Deeps](#the-middle-deeps){% for location in middle_locations %}
{% assign url = location.heading | default: location.slug %}  - [{{ location.name }}](#{{url}}){% endfor %}
- [The Far Deeps](#the-far-deeps)

## The Upper Deeps

The Upper Deeps beneath Wellspring are a tangled labyrinth of natural caves, ruins, and foul lairs. Its chaotic nature is most evident in the wake of an Upwelling, when the surge of raw mana reshapes the subterranean landscape, forging new pathways and rearranging familiar landmarks. For this reason, maps of the Upper Deeps are only reliable between Upwellings, and charting the areas directly below Wellspring are a constant chore for the Delvers' Guild, who pay money to adventuring parties willing to risk a journey of exploration. Because of this, any particular landmark may or may not be accessible, either because no route to it has been found, or (as some scholars believe), its very existence is subject to the whims of chance and the flows of magic. The presence of creatures from distant lands, or strange ruins from unknown cultures, seems to support this hypothesis.

Despite the unpredictability, the Upper Deeps are still the safest place for delvers to explore beneath Wellspring. While an unprepared or incautious party can still come to grief, the relative closeness of the surface provides some amount of safety, while the more dangerous denizens of the depths tend to live deeper below, where the flow of magic is stronger.

{% for location in upper_locations %}
#### {{ location.name }}

{{ location.content }}

[Back To Top](#)
{% endfor %}

## The Middle Deeps

The Middle Deeps beneath Wellspring are a warren of twisting passages and larger caverns, ranging from underground rivers and fungal forests to shattered ruins and warrens of deadly beasts. The Middle Deeps are comparatively stable, with large areas remaining more or less static even through the worst Upwellings, and include safe havens in the form of allied (or at least friendly) outposts of tortles, myconids, and others. They are also much richer in precious magicite, with the crystals forming more frequently and in larger clusters. For this reason, the Middle Deeps are referred to as the graveyard of overconfident delvers; the density of magic this far below Wellspring attracts and supports monsters of far greater strength, with lethal consequences for the unprepared.

{% for location in middle_locations %}
#### {{ location.name }}

{{ location.content }}

[Back To Top](#)
{% endfor %}

## The Far Deeps

Few delvers even attempt to reach the Far Deeps, despite the lure of ever-greater hoards of magicite. Unpredictable magical effects and murderously dangerous beasts pose a lethal threat to all but the most experienced and prepared adventurers. Those few who have made the journey and survived claim to have seen crystalline passages alight with the focused magic of the ley lines beneath Wellspring, fragments of civilizations lost to time, and foes and treasures unlike any found elsewhere in the world. Passage beyond the Far Deeps is said to be blocked by a magical barrier of uncertain origin and incredible power; if any have the knowledge of what lies beyond and beneath, they have not shared it with the Delver's Guild.

[Back To Top](#)

{% assign campaign = site.campaigns | where: "slug", page.campaign | first %}

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
