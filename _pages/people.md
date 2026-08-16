---
layout: page
title: people
permalink: /people/
description: The Intelligent Design Optimization Lab.
nav: true
nav_order: 4
---

<!-- Roster lives in _data/people.yml. To add someone, append an entry there —
     no edits to this file are needed. Groups are listed in display order. -->

{% assign groups = "phd,bsms,ms,undergrad,alumni" | split: "," %}
{% assign labels = "PhD Students,Accelerated BS/MS Students,Master's Students,Undergraduate Researchers,Alumni" | split: "," %}

{% assign pi = site.data.people.pi %}
{% if pi %}

## Principal Investigator

{% for p in pi %}

**{% if p.url %}[{{ p.name }}]({{ p.url }}){% else %}{{ p.name }}{% endif %}**{% if p.role %} — {{ p.role }}{% endif %}{% if p.email %}
<br>{{ p.email }}{% endif %}
{% endfor %}
{% endif %}

{% for g in groups %}
{% assign members = site.data.people[g] %}
{% if members and members.size > 0 %}

## {{ labels[forloop.index0] }}

<ul>
{% for p in members %}
  <li>
    <strong>{% if p.url %}<a href="{{ p.url }}">{{ p.name }}</a>{% else %}{{ p.name }}{% endif %}</strong>
    {%- if p.topic %} — {{ p.topic }}{% endif -%}
    {%- if p.grad %} <em>(expected {{ p.grad }})</em>{% endif -%}
    {%- if p.note %}<br><small>{{ p.note }}</small>{% endif -%}
  </li>
{% endfor %}
</ul>
{% endif %}
{% endfor %}

---

Interested in joining? See the [openings](/join/).
