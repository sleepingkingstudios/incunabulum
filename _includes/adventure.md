{% assign adventure = site.adventures | where: "campaign", page.campaign | where: "slug", page.slug | first %}

# {{ adventure.name | strip }}

{{ adventure.summary }}

## Adventure Log

{{ adventure.content }}
