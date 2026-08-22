---
layout: page
title: Ship Conceptual Design using MDAO
description: Differentiable coupling of hull form, propulsion, and maneuvering
importance: 4
category: ongoing
---

Early-stage ship design couples hull form, propulsion, and maneuvering, but in practice these disciplines are evaluated in separate loops. That separation limits the use of gradient-based optimization precisely when the design variables change the hull surface itself&mdash;and it pushes maneuvering to the end of the development cycle, where the hull can no longer cheaply change.

This project builds a differentiable multidisciplinary design optimization framework in which a parametric hull, a thin-ship wave-resistance model, a Wageningen B-series propulsor with hull&ndash;propeller interaction, and a three-degree-of-freedom maneuvering simulation are assembled into a single computational graph with analytic derivatives throughout.

The methodological contribution is in how maneuvering criteria are handled. Advance and tactical diameter are *event-based*: they are defined at the instant the ship reaches a prescribed heading change, not at a fixed time. We make them compatible with gradient-based optimization by normalizing the simulation time, solving for the event time with a root-finder, and differentiating through the resulting implicit relation&mdash;at a cost of roughly one extra simulation.

This matters beyond ships. Certification-type requirements are overwhelmingly event-based&mdash;a heading reached, a distance covered, a speed lost&mdash;and it is exactly this class of requirement that has kept dynamic performance outside the reach of gradient-based design optimization. The same construction extends to the zig-zag, stopping, and course-keeping criteria that follow the turning circle, which places this work alongside our [certification-driven design](/projects/2_certification_driven_design/) theme.

Demonstrated on the DTMB 5415 hull, a joint hull and propeller optimization subject to hull-validity, propulsor-feasibility, and turning-circle constraints converges in a handful of analyses. The optimizer returns a longer, narrower hull driven by a smaller, higher-pitch, slower-turning propeller, with a large predicted reduction in delivered power at fixed speed and near-constant displacement, and with the turning-circle criterion satisfied at the solution. Because each discipline is a separate operation in the graph, weight, stability, and seakeeping can be added modularly without rewriting the problem formulation.

## Subprojects

**Ship Design Optimization and Dynamics** &mdash; Jeremy John

John, J., Coe, R. G., & Sarojini, D. (2026). Optimization of Ships with Coupled Resistance, Propulsion, and Maneuvering Analysis. OCEANS 2026, Monterey, CA (to appear).

Supported by the U.S. Department of War SMART Scholarship-for-Service Program, sponsored by the Naval Surface Warfare Center &mdash; Carderock Division. Earlier work in Summer 2025 was supported by a Fincantieri Marine Group scholarship through VT MAOP.
