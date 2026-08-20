---
layout: page
title: teaching
permalink: /teaching/
description: Courses taught and teaching activities.
nav: true
nav_order: 6
---

## Virginia Tech

### AOE 4065&ndash;4066: Air Vehicle Design

A year-long capstone sequence. Reference material is published in the [AVD Reference Library](/air-vehicle-design/).

<!-- Offerings live in _data/air_vehicle_design.yml. Adding a photo is a data
     edit: drop the file under assets/img/teaching/air-vehicle-design/<year>/
     and append it to that offering's `images`. No changes to this file are needed. -->

{% for offering in site.data.air_vehicle_design %}
  <section class="avd-offering">
    <h4 class="avd-year">{{ offering.year }}</h4>
    <p class="avd-terms">{{ offering.terms }}</p>
    {% if offering.images != blank %}
      <div class="avd-gallery">
        {% for img in offering.images %}
          {% include zoomable-figure.liquid
            path=img.path
            alt=img.alt
            caption=img.caption
            class="avd-figure"
            sizes="(max-width: 576px) 92vw, 260px"
          %}
        {% endfor %}
      </div>
    {% endif %}
  </section>
{% endfor %}

<style>
  .avd-offering {
    margin: 1.25rem 0 1.75rem;
  }
  .avd-year {
    margin-bottom: 0.15rem;
  }
  .avd-terms {
    margin-bottom: 0.6rem;
    opacity: 0.75;
  }
  .avd-gallery {
    display: flex;
    flex-wrap: wrap;
    gap: 1rem;
  }
  .avd-figure {
    flex: 0 1 260px;
    max-width: 260px;
    min-width: 0;
    margin-bottom: 0;
  }
  .avd-figure img {
    width: 100%;
    height: auto;
    cursor: zoom-in;
  }
  /* Tighter than the theme's .caption, which is sized for full-width figures. */
  .avd-figure .zoom-figure-caption {
    font-size: 0.75rem;
    line-height: 1.35;
    margin: 0.35rem 0 0;
  }
  @media (max-width: 576px) {
    .avd-figure {
      flex-basis: 100%;
      max-width: 100%;
    }
  }
</style>

## University of California San Diego

### Past courses

- [Winter 2023] MAE 155A: Aerospace Engineering Design I: Lecture on systems engineering
- [Winter 2023] MAE 270: Multidisciplinary Design Optimization: Lecture on topology optimization

## Georgia Institute of Technology

- [Spring 2021, Spring 2022] AE-6344: Aircraft Design II: Lectures on structural analysis, structural sizing, multidisciplinary design optimizations
- [Spring 2021] AE-6394: System of Systems Engineering Applications: TA
- [Spring 2017] AE-4351: AE Design Project II: TA
- [Fall 2016] AE-4350: AE Design Project I: TA

### Other teaching-related activities

- Tech to Teaching Certificate by the Center for Teaching and Learning. Completed two graduate-level courses to prepare future faculty in pedagogy and course design and a capstone teaching experience
