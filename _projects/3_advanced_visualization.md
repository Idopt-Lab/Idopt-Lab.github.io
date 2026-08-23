---
layout: page
title: Advanced Visualization Methods for Design
description: Web-based visualization of 3-D geometry and scientific data
importance: 3
category: subproject
---

A subproject of [Certification-Driven Aircraft Design under Uncertainty](/projects/2_certification_driven_design/), led by Tien Nguyen.

Aircraft design information is usually communicated through disconnected artifacts: CAD screenshots, static renderings, aerodynamic plots, tabulated performance data, presentation slides. Tools that display three-dimensional geometry interactively generally do not carry the engineering information needed to interpret the design&mdash;aerodynamic fields, component metadata, subsystem relationships, dynamic behavior&mdash;so the geometry and the reasoning about it stay separate.

This project develops an interactive web-based pipeline that integrates aircraft geometry, aerodynamic simulation data, engineering metadata, and animations into a single browser-accessible environment.

The workflow combines outer mold line generation in **OpenVSP**, aerodynamic analysis with **VSPAERO**, geometry organization and animation in **Blender**, pressure-field post-processing in **ParaView**, and deployment through **X3DOM**. The resulting environment supports 3-D geometry inspection, surface pressure visualization, component-level selection, contextual information panels, embedded engineering plots, animated moving components, and hierarchical exploration of aircraft subsystems.

It has been demonstrated on multiple aircraft models and deployed in the [Air Vehicle Design capstone](/teaching/), where senior undergraduate teams built interactive visualizations of their own aircraft concepts&mdash;making the pipeline a shareable framework for design communication, education, and design review. The same capability underpins the Information-Rich Visualization Environment in [VITAL](/projects/17_vital/).

Anem, S., Enwiya, E., Sandbrook, B., Sarojini, D., & Polys, N. (2026). Interactive Web-Based Visualization for Aircraft Multidisciplinary Design, Analysis, and Exploration. In *The 31st International Conference on 3D Web Technology (Web3D '26)*, Doha, Qatar.

#### Examples

- [Fighter aircraft](https://metagrid1.sv.vt.edu/~sdarshan/aoe-4066-spring-2025/Team%205/expo_demo.html)

{% include figure.liquid path="assets/img/research/advanced-visualization/01-fighter-cutaway.png" alt="A fighter aircraft cutaway with subsystems higlighted." class="img-fluid rounded z-depth-1" %}

Collaborators: MathWorks, VT ARC Visionarium

Further worked examples are published in the lab's [interactive visualization gallery](/interactive-visualization/).
