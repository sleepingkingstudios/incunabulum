{% assign campaign = site.campaigns | where: "slug", page.campaign | first %}

{% assign matching_characters = site.characters | where: "campaign", page.campaign | where: "location", include.location %}

{% assign matching_locations = site.locations | where: "campaign", page.campaign | where: "location", include.location %}

{% if matching_characters.size > 0 %}
### {{ include.label }} Characters
{% endif %}

{% for character in matching_characters %}
{% assign url = character.heading | default: character.slug %}  - [{{ character.name }}](#{{url}}){% endfor %}

{% for character in matching_characters %}
#### [{{ character.name }}]({{site.baseurl}}/campaigns/{{campaign.slug}}/characters/{{character.slug}})

{{ character.content }}

[Back To Top](#)
{% endfor %}

{% if matching_locations.size > 0 %}
### {{ include.label }} Locations
{% endif %}

{% for location in matching_locations %}
{% assign url = location.heading | default: location.slug %}  - [{{ location.name }}](#{{url}}){% endfor %}

{% for location in matching_locations %}
#### {{ location.name }}

{{ location.content }}

[Back To Top](#)
{% endfor %}

{% if matching_characters.size == 0 and matching_locations.size == 0 %}
[Back To Top](#)
{% endif %}
