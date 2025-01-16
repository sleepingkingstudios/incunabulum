---
title: Character Boons
---

# Character Boons

- [Character Boons And Tiers](#character-boons-and-tiers)
- [Minor Boons](#minor-boons)
- [Runic Blessings](#runic-blessings)

Character Boons are an option for non-class character progression. They are intended to be on the order of a feat in terms of balance; at the DM's discretion, a character may elect to take a Character Boon instead of an Ability Score Improvement or a Feat whenever their class would allow them to select one of the latter. Boons may also be awarded for particular achievements in-game.

Unless otherwise stated, a boon cannot be selected more than once. Certain boons can be selected more than once, up to a total number of times equal to one less than your Proficiency Bonus, i.e. only once per tier of play.

## Character Boons And Tiers

D&D Fifth Edition divides characters into four tiers of play, corresponding to a Proficiency Bonus of +2 to +5. Many character boons are likewise restricted to characters with a minimum tier.

- [Minor Boons](#minor-boons) are available to all characters, regardless of tier.
- Moderate Boons are available to characters with a Proficiency Bonus of at least +3.
- Major Boons are available to characters with a Proficiency Bonus of at least +4.
- Superior Boons are available to characters with a +5 Proficiency Bonus.

[Back To Top](#)

{% assign all_boons = site.dnd5e_boons %}

## Minor Boons

{% assign minor_boons = all_boons | where: "tier", "minor" %}

Minor boons are available to all characters, regardless of tier.

| **Name** | **Description** | **Prerequisite** |{% for boon in minor_boons %}
| [{{ boon.name }}](#boon-of-{{boon.slug}}) | {{ boon.description | default: boon.content | strip_html | strip }} | {{ boon.prerequisite | default: "—" }} |{% endfor %}

{% for boon in minor_boons %}
### {{ boon.name }}

{% if boon.prerequisite %}
Prerequisite
: {{ boon.prerequisite }}
{% endif %}

{% if boon.repeatable %}
Repeatable
: You can select this boon multiple times{% if boon.repeatable == "1/tier" %}, up to a total number of times equal to one less than your Proficiency Bonus.{% else %}.{% endif %}
{% endif %}

{{ boon.content }}

[Back To Top](#)
{% endfor %}

## Runic Blessings

{% assign runic_blessings = all_boons | where: "tier", "runic-blessing" %}

Runic blessings are granted by the Giantish pantheon, known as the Ordnung. Giantish clerics and runethanes will sometimes offer to extend these blessings to outsiders in exchange for some service. A character cannot have more than one runic blessing; a character who already has a runic blessing and accepts a second will lose their original blessing, and likely earn the wrath of the deity who granted it.

| **Name** | **Description** | **Prerequisite** |{% for boon in runic_blessings %}
| [Blessing of {{ boon.name }}](#blessing-of-{{boon.slug}}) | {{ boon.description | default: boon.content | strip_html | strip }} | {{ boon.prerequisite | default: "—" }} |{% endfor %}

{% for boon in runic_blessings %}
### Blessing of {{ boon.name }}

{% if boon.prerequisite %}
Prerequisite
: {{ boon.prerequisite }}
{% endif %}

{% if boon.repeatable %}
Repeatable
: You can select this boon multiple times{% if boon.repeatable == "1/tier" %}, up to a total number of times equal to one less than your Proficiency Bonus.{% else %}.{% endif %}
{% endif %}

{{ boon.content }}

[Back To Top](#)
{% endfor %}

---

[Back to Home]({{site.baseurl}}/)
|
[Back to Game Systems]({{site.baseurl}}/systems)
|
[Back to D&D 5E]({{site.baseurl}}/systems/5e)

