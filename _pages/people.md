---
layout: page
title: people
permalink: /people/
description: The Intelligent Design Optimization Lab.
nav: true
nav_order: 5
---

<!-- Roster lives in _data/people.yml; this file only renders it. -->

{% assign pi = site.data.people.pi %}

## Principal Investigator

<div class="person person-pi">
  {% if pi.photo %}
  <img class="person-photo" src="{{ pi.photo | prepend: '/assets/img/' | relative_url }}" alt="{{ pi.name }}">
  {% endif %}
  <div class="person-body">
    <h3>{{ pi.name }}</h3>
    {% for para in pi.bio %}<p>{{ para }}</p>{% endfor %}
    <p>
      <a href="mailto:{{ pi.email }}">{{ pi.email }}</a>
      {% for l in pi.links %} &middot; <a href="{{ l[1] }}">{{ l[0] }}</a>{% endfor %}
    </p>
  </div>
</div>

{% assign groups = "current,alumni" | split: "," %}
{% for group in groups %}
{% assign members = site.data.people[group] %}
{% if members and members.size > 0 %}

## {% if group == "current" %}Current Members{% else %}Alumni{% endif %}

{% assign levels = "Ph.D.,M.S.,B.S.,High School" | split: "," %}
{% for level in levels %}
{% assign tier = members | where: "level", level %}
{% if tier.size > 0 %}

### {{ level }}

<div class="person-grid">
{% for p in tier %}
  <div class="person">
    {% if p.photo %}
    <img class="person-photo" src="{{ p.photo | prepend: '/assets/img/' | relative_url }}" alt="{{ p.name }}">
    {% else %}
    <div class="person-photo person-photo-placeholder" aria-hidden="true"></div>
    {% endif %}
    <div class="person-body">
      <h3>{{ p.name }}</h3>
      {% if p.degree %}<p class="person-meta"><strong>Degree</strong><br>{{ p.degree }}{% if p.grad %}<br>{{ p.grad }}{% endif %}</p>{% endif %}
      {% if p.area %}<p class="person-meta"><strong>Research area</strong><br>{{ p.area }}</p>{% endif %}
      {% if p.now %}<p class="person-meta"><strong>Now at</strong><br>{{ p.now }}</p>{% endif %}
      {% if p.distinctions %}
      <p class="person-meta"><strong>Distinctions</strong><br>
        {% for d in p.distinctions %}{{ d }}{% unless forloop.last %}<br>{% endunless %}{% endfor %}
      </p>
      {% endif %}
      {% if p.links %}
      <p class="person-links">
        {% for l in p.links %}<a href="{{ l[1] }}">{{ l[0] }}</a>{% unless forloop.last %}, {% endunless %}{% endfor %}
      </p>
      {% endif %}
    </div>
  </div>
{% endfor %}
</div>
{% endif %}
{% endfor %}
{% endif %}
{% endfor %}

<style>
  .person-grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(260px, 1fr));
    gap: 2rem;
    margin-top: 1.5rem;
  }
  .person-photo {
    width: 100%;
    max-width: 200px;
    aspect-ratio: 1 / 1;
    object-fit: cover;
    border-radius: 8px;
    display: block;
  }
  .person-photo-placeholder {
    background: rgba(128, 128, 128, 0.15);
    border-radius: 8px;
  }
  .person-pi {
    display: flex;
    gap: 2rem;
    align-items: flex-start;
    flex-wrap: wrap;
  }
  .person-pi .person-photo { max-width: 220px; flex: 0 0 auto; }
  .person-pi .person-body { flex: 1 1 320px; }
  .person h3 { margin: 0.75rem 0 0.35rem; font-size: 1.05rem; }
  .person-meta { margin: 0 0 0.5rem; font-size: 0.9rem; line-height: 1.45; }
  .person-links { font-size: 0.85rem; }
</style>
