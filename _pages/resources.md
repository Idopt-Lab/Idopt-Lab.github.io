---
layout: page
title: student resources
permalink: /resources/
description: Fellowships, funding opportunities, competitions, and research award programs.
nav: true
nav_order: 8
---

This page highlights resources available to students including information about fellowships and other funding opportunities, student competitions, and research award programs.

<!-- Entries live in _data/resources.yml. Adding one is a data edit: append a
     name/type/level/scope/body block. No changes to this file are needed. -->

{% assign all = site.data.resources %}

<div class="res-filters" role="group" aria-label="Filter opportunities">
  <div class="res-facet">
    <span class="res-facet-label">Who</span>
    {% assign levels = "undergrad,masters,phd,postdoc" | split: "," %}
    {% assign level_names = "Undergraduate,Master's,PhD,Postdoc" | split: "," %}
    {% for l in levels %}
      <button class="res-chip" data-facet="level" data-value="{{ l }}" aria-pressed="false">{{ level_names[forloop.index0] }}</button>
    {% endfor %}
  </div>

  <div class="res-facet">
    <span class="res-facet-label">What</span>
    {% assign types = "fellowship,scholarship,grant,competition,summer program,travel" | split: "," %}
    {% for t in types %}
      <button class="res-chip" data-facet="type" data-value="{{ t }}" aria-pressed="false">{{ t | capitalize }}</button>
    {% endfor %}
  </div>

  <div class="res-facet">
    <span class="res-facet-label">Where</span>
    {% assign scopes = "national,international,local" | split: "," %}
    {% assign scope_names = "National,International,Virginia Tech &amp; Virginia" | split: "," %}
    {% for s in scopes %}
      <button class="res-chip" data-facet="scope" data-value="{{ s }}" aria-pressed="false">{{ scope_names[forloop.index0] }}</button>
    {% endfor %}
  </div>

  <div class="res-status">
    <span id="res-count">Showing {{ all | size }} of {{ all | size }}</span>
    <button id="res-clear" class="res-clear" hidden>Clear filters</button>
  </div>
</div>

<div class="res-list">
{% for item in all %}
  <details class="res-card"
           data-level="{{ item.level | join: ' ' }}"
           data-type="{{ item.type }}"
           data-scope="{{ item.scope }}">
    <summary>
      <span class="res-name">{{ item.name }}</span>
      <span class="res-tags">
        <span class="res-tag res-tag-type">{{ item.type }}</span>
        {% for l in item.level %}<span class="res-tag">{{ l }}</span>{% endfor %}
      </span>
    </summary>
    <div class="res-body">
      {{ item.body | markdownify }}
    </div>
  </details>
{% endfor %}
</div>

<p class="res-empty" hidden>No opportunities match those filters.</p>

<style>
  .res-filters {
    margin: 1.5rem 0 2rem;
    padding: 1rem 1.1rem;
    border: 1px solid rgba(128, 128, 128, 0.3);
    border-radius: 8px;
  }
  .res-facet {
    display: flex;
    flex-wrap: wrap;
    align-items: center;
    gap: 0.4rem;
    margin-bottom: 0.6rem;
  }
  .res-facet-label {
    font-size: 0.72rem;
    text-transform: uppercase;
    letter-spacing: 0.08em;
    opacity: 0.6;
    min-width: 3.6rem;
  }
  .res-chip {
    font: inherit;
    font-size: 0.82rem;
    line-height: 1.2;
    padding: 0.28rem 0.7rem;
    border: 1px solid rgba(128, 128, 128, 0.45);
    border-radius: 999px;
    background: transparent;
    color: inherit;
    cursor: pointer;
    transition: background 0.15s, border-color 0.15s;
  }
  .res-chip:hover { border-color: currentColor; }
  /* Selected state uses a neutral tint rather than a filled theme colour: the page
     renders in both light and dark, and a fixed fill would strand the label. */
  .res-chip[aria-pressed="true"] {
    background: rgba(128, 128, 128, 0.28);
    border-color: currentColor;
    font-weight: 600;
  }
  .res-status {
    display: flex;
    align-items: center;
    gap: 0.8rem;
    margin-top: 0.9rem;
    font-size: 0.85rem;
    opacity: 0.75;
  }
  .res-clear {
    font: inherit;
    font-size: 0.8rem;
    background: none;
    border: none;
    color: inherit;
    text-decoration: underline;
    cursor: pointer;
    padding: 0;
  }

  .res-card {
    border-bottom: 1px solid rgba(128, 128, 128, 0.22);
    padding: 0.7rem 0;
  }
  .res-card > summary {
    cursor: pointer;
    display: flex;
    flex-wrap: wrap;
    align-items: baseline;
    gap: 0.5rem 0.75rem;
    list-style: revert;
  }
  .res-name { font-weight: 600; }
  .res-tags { display: inline-flex; flex-wrap: wrap; gap: 0.3rem; }
  .res-tag {
    font-size: 0.68rem;
    text-transform: uppercase;
    letter-spacing: 0.04em;
    padding: 0.1rem 0.45rem;
    border: 1px solid rgba(128, 128, 128, 0.4);
    border-radius: 4px;
    opacity: 0.75;
    white-space: nowrap;
  }
  .res-tag-type { font-weight: 600; opacity: 0.95; }
  .res-body { padding: 0.4rem 0 0.2rem 1.1rem; }
  .res-body p { margin-bottom: 0.6rem; }
  .res-empty { margin-top: 1.5rem; font-style: italic; opacity: 0.7; }
</style>

<script>
  (function () {
    var chips = Array.prototype.slice.call(document.querySelectorAll(".res-chip"));
    var cards = Array.prototype.slice.call(document.querySelectorAll(".res-card"));
    var count = document.getElementById("res-count");
    var clear = document.getElementById("res-clear");
    var empty = document.querySelector(".res-empty");
    var total = cards.length;

    // Selected values per facet. Within a facet the filter is OR; across facets it is AND.
    var selected = { level: [], type: [], scope: [] };

    function matches(card) {
      return Object.keys(selected).every(function (facet) {
        var want = selected[facet];
        if (!want.length) return true;
        var have = (card.getAttribute("data-" + facet) || "").split(" ");
        return want.some(function (v) { return have.indexOf(v) !== -1; });
      });
    }

    function apply() {
      var shown = 0;
      cards.forEach(function (card) {
        var ok = matches(card);
        card.hidden = !ok;
        if (ok) shown++;
        else card.open = false;
      });
      count.textContent = "Showing " + shown + " of " + total;
      var any = selected.level.length || selected.type.length || selected.scope.length;
      clear.hidden = !any;
      empty.hidden = shown !== 0;
    }

    chips.forEach(function (chip) {
      chip.addEventListener("click", function () {
        var facet = chip.getAttribute("data-facet");
        var value = chip.getAttribute("data-value");
        var i = selected[facet].indexOf(value);
        if (i === -1) { selected[facet].push(value); chip.setAttribute("aria-pressed", "true"); }
        else { selected[facet].splice(i, 1); chip.setAttribute("aria-pressed", "false"); }
        apply();
      });
    });

    clear.addEventListener("click", function () {
      selected = { level: [], type: [], scope: [] };
      chips.forEach(function (c) { c.setAttribute("aria-pressed", "false"); });
      apply();
    });

    apply();
  })();
</script>
