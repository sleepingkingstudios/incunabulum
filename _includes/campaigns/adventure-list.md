{% assign adventures = site.adventures | where: "campaign", page.campaign %}
{% for adventure in adventures %}
{% include adventure-link.md adventure=adventure %}
{% endfor %}
