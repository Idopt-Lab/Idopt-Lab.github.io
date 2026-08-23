---
layout: page
title: Virtual Integrated Testing & Analysis Laboratory (VITAL) for AAM Certification
description: A digital environment for certification-informed-by-analysis
importance: 3
category: ongoing
---

Advanced Air Mobility introduces aircraft and operations that differ fundamentally from legacy aviation in their configurations, energy sources, operational envelopes, and reliance on autonomy. Certification and airspace integration&mdash;not the technology itself&mdash;remain the principal barriers to scalable deployment, driven by prolonged certification timelines, limited precedent, and uncertainty in evaluating novel system behaviors under operational variability.

A question often asked of novel configurations is whether simulation can replace certification testing. It cannot. The real question is how to use digital evidence *earlier* and more systematically, so that certification programs, operational approvals, and physical test campaigns are better informed before high-cost flight testing begins.

**VITAL is a pre-certification digital environment being developed at Virginia Tech, in which emerging aircraft, technologies, and operational concepts can be exercised across large numbers of nominal and off-nominal scenarios before full-scale demonstration.** It supports *certification-informed-by-analysis*: identifying where uncertainty remains, where additional evidence is required, which operating conditions create unacceptable risk, and which performance thresholds may be defensible as aviation moves toward performance-based certification frameworks.

Developed by Darshan Sarojini and [Justin Jaworski](https://www.aoe.vt.edu/people/faculty/jaworski.html), Aerospace and Ocean Engineering, Virginia Tech, with support from the Virginia Tech College of Engineering Major Grant Initiatives (MGI) program.

## The concept: an evaluator-controlled environment

The distinguishing feature of VITAL is who controls what. The evaluator owns the virtual test environment and defines the scenario space, stressors, assumptions, evaluation metrics, and decision logic. Design teams connect their own digital twins, aircraft models, autonomy systems, or communications models to it, and retain ownership of those models.

That structure lets the evaluator act as a technical *red team*. Rather than relying only on designer-selected demonstrations, the evaluator prescribes test envelopes and runs large-scale virtual exploration of weather, traffic density, degraded navigation, GPS-denied regions, communications dropouts, terrain effects, vehicle failures, contingency procedures, and other edge cases&mdash;then observes how candidate systems perform under common, repeatable, evaluator-defined conditions.

It also preserves the separation between evaluator and design team. Proprietary models stay with their owners; the evaluator controls the environment, test scenarios, data products, and compliance-relevant questions. VITAL creates a mechanism for earlier technical dialogue without requiring a design team to expose raw proprietary data beyond the interface needed for evaluation.

### Design certification

A design team connects a digital representation of its aircraft through a standardized interface. The evaluator defines mission- and certification-relevant test cases and runs them at scale. Instead of evaluating a small set of hand-picked points, the evaluator explores a broader envelope and identifies combinations of conditions that produce degraded performance or failure&mdash;results that can inform certification basis discussions, physical test planning, design revisions, and performance-based standards.

### Communications and airspace integration

Dense, low-altitude, increasingly automated operations require reliable communications, navigation, and surveillance under conditions unlike conventional aviation: urban canyons, mountainous terrain, low-altitude coverage gaps, signal blockage, multipath, network congestion, and BVLOS operations. Within VITAL, candidate communications and positioning architectures can be evaluated across varying aircraft density, altitude, terrain, latency, network topology, and positioning uncertainty&mdash;identifying minimum thresholds for coverage, reliability, latency, mesh density, and positioning accuracy before field demonstrations.

## Technical architecture

- **An aircraft-agnostic simulation and flight physics environment.** It must support wing-borne and thrust-borne lift, conventional and novel configurations, fuel-, battery-, and hydrogen-based energy systems, and propulsion from engines through distributed propellers&mdash;because AAM spans multicopters, lift-plus-cruise vehicles, tiltrotors, eCTOL, hybrids, and configurations still under development.
- **Standardized digital interfaces.** These let design teams connect models without forcing everyone onto the same internal tools. Candidate schemas build on the Common Parametric Aircraft Configuration Schema (CPACS) and the Boeing Aircraft Data Hierarchy (ADH), covering geometry, mass properties, propulsion, aerodynamic data, mission definitions, control-relevant parameters, requirements, and performance outputs.
- **An Information-Rich Visualization Environment (IRVE).** Engineers and stakeholders need to inspect results, compare performance across scenarios, visualize trajectories and failure cases, trace requirements, and understand *why* a system passed, failed, or approached an edge condition. This connects directly to our work on [advanced visualization methods](/projects/3_advanced_visualization/).

## Subprojects

**Aircraft Flight Simulator** &mdash; Krish D. Bhatt

A multi-aircraft simulator built on MATLAB/Simulink for the 6-DoF dynamics, with 3-D visualization through X3D, Cesium, and Unreal Engine. It provides the aircraft-agnostic simulation backbone the concept requires. Developed with support from Virginia Tech College of Engineering philanthropic funding and a MathWorks curriculum development grant; source is on the [lab GitHub](https://github.com/Idopt-Lab).

**A mock VITAL Room in capstone design.** The [Air Vehicle Design sequence](/teaching/) serves as a low-risk, non-proprietary demonstrator of the workflow. Student teams act as design-team surrogates&mdash;developing a concept, defining assumptions, generating performance estimates, and submitting design data to a common digital workflow&mdash;while the instructional and research team acts as the evaluator, defining requirements, mission scenarios, constraints, and off-nominal cases, then testing each design against common criteria. The structure preserves the distinction at the heart of VITAL: design teams own their designs, the evaluator owns the scenario space and the compliance-relevant questions.
