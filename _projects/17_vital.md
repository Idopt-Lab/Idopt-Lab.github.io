---
layout: page
title: Virtual Integrated Testing & Analysis Laboratory (VITAL) for AAM Certification
description: A regulator-controlled digital environment for certification-informed-by-analysis
importance: 3
category: ongoing
---

Advanced Air Mobility introduces aircraft and operations that differ fundamentally from legacy aviation in their configurations, energy sources, operational envelopes, and reliance on autonomy. Certification and airspace integration&mdash;not the technology itself&mdash;remain the principal barriers to scalable deployment, driven by prolonged certification timelines, limited precedent, and uncertainty in evaluating novel system behaviors under operational variability.

A question often put to the FAA is whether simulation can replace certification testing. It cannot. The real question is how to use digital evidence *earlier* and more systematically, so that certification programs, operational approvals, and physical test campaigns are better informed before high-cost flight testing begins.

**VITAL is proposed as a pre-certification digital environment that would allow the FAA to exercise emerging aircraft, technologies, and operational concepts across large numbers of nominal and off-nominal scenarios before full-scale demonstration.** It supports *certification-informed-by-analysis*: identifying where uncertainty remains, where additional evidence is required, which operating conditions create unacceptable risk, and which performance thresholds may be defensible as aviation moves toward performance-based certification frameworks.

Proposed by Darshan Sarojini and [Justin Jaworski](https://www.aoe.vt.edu/people/faculty/jaworski.html), Aerospace and Ocean Engineering, Virginia Tech.

## The concept: a regulator-controlled evaluation environment

In the VITAL concept the FAA owns and controls the virtual test environment. Industry participants connect their digital twins, aircraft models, autonomy systems, or communications models to it. The FAA defines the scenario space, stressors, assumptions, evaluation metrics, and decision logic.

That structure lets the FAA act as a technical *red team*. Rather than relying only on applicant-defined demonstrations, the regulator can prescribe test envelopes and run large-scale virtual exploration of weather, traffic density, degraded navigation, GPS-denied regions, communications dropouts, terrain effects, vehicle failures, contingency procedures, and other edge cases&mdash;then observe how candidate systems perform under common, repeatable, regulator-defined conditions.

It also preserves the separation between regulator and applicant. Companies retain ownership of proprietary digital twins and protected models; the FAA controls the evaluation environment, test scenarios, data products, and compliance-relevant questions. VITAL creates a mechanism for earlier technical dialogue without requiring industry to expose raw proprietary data beyond the interface needed for evaluation.

### Design certification

An applicant connects a digital representation of its aircraft through a standardized interface. The FAA defines mission- and certification-relevant test cases and runs them at scale. Instead of evaluating a small set of applicant-selected points, the regulator explores a broader envelope and identifies combinations of conditions that produce degraded performance or failure&mdash;results that can inform certification basis discussions, physical test planning, applicant design revisions, and performance-based standards. No integrated environment like this exists at the FAA Technical Center today, though there is precedent in the DoD Joint Mission Environment Test Capability (JMETC).

### Communications and NAS integration

Dense, low-altitude, increasingly automated operations require reliable communications, navigation, and surveillance under conditions unlike conventional aviation: urban canyons, mountainous terrain, low-altitude coverage gaps, signal blockage, multipath, network congestion, and BVLOS operations. Within VITAL the FAA could evaluate candidate communications and positioning architectures across varying aircraft density, altitude, terrain, latency, network topology, and positioning uncertainty&mdash;identifying minimum thresholds for coverage, reliability, latency, mesh density, and positioning accuracy before field demonstrations.

## Technical architecture

- **An aircraft-agnostic simulation and flight physics environment.** It must support wing-borne and thrust-borne lift, conventional and novel configurations, fuel-, battery-, and hydrogen-based energy systems, and propulsion from engines through distributed propellers&mdash;because AAM spans multicopters, lift-plus-cruise vehicles, tiltrotors, eCTOL, hybrids, and configurations still under development.
- **Standardized digital interfaces.** These let applicants connect models to an FAA-controlled environment without forcing everyone onto the same internal tools. Candidate schemas could build on the Common Parametric Aircraft Configuration Schema (CPACS) and the Boeing Aircraft Data Hierarchy (ADH), covering geometry, mass properties, propulsion, aerodynamic data, mission definitions, control-relevant parameters, requirements, and performance outputs.
- **An Information-Rich Visualization Environment (IRVE).** Engineers and stakeholders need to inspect results, compare performance across scenarios, visualize trajectories and failure cases, trace requirements, and understand *why* a system passed, failed, or approached an edge condition. This connects directly to our work on [advanced visualization methods](/projects/3_advanced_visualization/).

## Subprojects

**Aircraft Flight Simulator** &mdash; Krish D. Bhatt

A multi-aircraft simulator built on MATLAB/Simulink for the 6-DoF dynamics, with 3-D visualization through X3D, Cesium, and Unreal Engine. It provides the aircraft-agnostic simulation backbone the concept requires. Developed with support from Virginia Tech College of Engineering philanthropic funding and a MathWorks curriculum development grant; source is on the [lab GitHub](https://github.com/Idopt-Lab).

**A mock VITAL Room in capstone design.** The [Air Vehicle Design sequence](/teaching/) serves as a low-risk, non-proprietary demonstrator of the workflow. Student teams act as applicant surrogates&mdash;developing a concept, defining assumptions, generating performance estimates, and submitting design data to a common digital workflow&mdash;while the instructional and research team acts as an FAA-like evaluator that defines requirements, mission scenarios, constraints, and off-nominal cases, then tests each design against common criteria. The structure preserves the distinction at the heart of VITAL: applicants own their designs, the evaluator owns the scenario space and the compliance-relevant questions.
