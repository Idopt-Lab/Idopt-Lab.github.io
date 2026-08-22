---
layout: page
title: research
permalink: /research/
description: Certification-driven conceptual design, vehicle-operations co-design, and the methods that support them.
nav: true
nav_order: 2
---

Our scholarship advances methods and tools for the design and operations of complex mechanical systems&mdash;engineered machines that manage power to perform tasks involving forces and motion, such as aircraft, automobiles, robots, and other safety- and performance-critical platforms. In recent decades these systems have become substantially harder to design and operate, because of

- tightly coupled multidisciplinary physics,
- conflicting objectives across performance, cost, safety, sustainability, and usability,
- the volume of design and operational data that has to be managed, and
- regulatory and certification processes that impose hard feasibility constraints on what can be built and fielded.

Aircraft are a clear exemplar. Their design requires coupled analysis across aerodynamics, propulsion, structures, controls, and avionics to evaluate overall performance. They are safety-critical and heavily regulated, so certification requirements and reliability constraints ultimately define which designs are feasible. They are also embedded in operational ecosystems&mdash;airlines, routes, airspace, maintenance practices, infrastructure, and human decision-making&mdash;that shape whether a concept succeeds in practice. We treat these realities as central design drivers rather than as boundary conditions.

That view leads to two linked research themes. Both are systems-level: progress requires integration across disciplines, stakeholders, and scales of decision-making, so the work is intentionally collaborative and spans academic, industry, and federal partners.

## Theme 1: Certification-Driven Conceptual Design

Certification criteria shape the design space of regulated systems. Yet in much of current conceptual design practice, certification is treated as a post-hoc compliance check rather than as a primary design driver. This creates a recurring gap between what appears optimal in early-stage optimization and what turns out to be feasible under certification and reliability requirements.

We close that gap by embedding certification-relevant constraints and reliability considerations earlier in the conceptual design process, so that feasibility, safety margins, and regulatory drivers are represented explicitly while the design space is still fluid. The technical focus is on the algorithms, methods, and software tooling that integrate reliability and certification constraints with multidisciplinary design optimization and simulation workflows.

Projects in this theme:

- [Certification Driven Aircraft Design](/projects/2_certification_driven_design/)&mdash;embedding reliability, handling qualities, and 14-CFR time-marching simulations into large-scale MDAO
- [Certification-Driven MDO of Aircraft](/projects/8_certification_driven_mdo/)&mdash;the trade-off between performance and certification constraints
- [Reliability-Based Design of the X-57 Concept](/projects/9_x57_reliability/)&mdash;off-nominal performance and safety assessment of a distributed electric propulsion concept

## Theme 2: Vehicle-Operations Co-Design

Design and operations are usually siloed in engineering practice. For complex systems operating under uncertainty, that separation produces designs that are locally optimal from a vehicle standpoint but suboptimal&mdash;or infeasible&mdash;once embedded in a realistic operational environment. We are working toward vehicle-operations co-design, in which vehicle technologies and operational context are optimized simultaneously.

Aerial firefighting motivates the theme. Decision-making there spans vehicle capabilities, fleet composition under budget constraints, and operational tactics that adapt in real time as conditions evolve. Solving those layers in sequence misses the couplings between them; co-design treats them as a single integrated problem.

We develop the theme through application-driven threads that double as methodological testbeds:

- **Regional air mobility in the context of networks and economics.** Vehicle design is treated alongside the routes and airline networks in which the vehicle has to operate, including the economic conditions under which an airline would offer and sustain service. This thread aligns with Virginia Tech's land-grant mission through its focus on accessibility for infrastructure-constrained and underserved regions.
- **Aerial firefighting as a benchmark for integrated design&ndash;fleet&ndash;tactics optimization.** This thread combines aircraft systems expertise with mission engineering and operations research, and leverages agent-based operational modeling as a foundation for co-design.

Across these efforts the methodological intent is consistent: connect vehicle models, fleet-level resource allocation, and operational decision-making under uncertainty, so that performance is evaluated at the system level rather than for an isolated vehicle.

Projects in this theme:

- [Advancing Regional Air Mobility in Appalachia](/projects/1_regional_air_mobility/)&mdash;a framework for increased accessibility in overburdened communities
- [Aerial Firefighting as a Co-Design Benchmark](/projects/5_aerial_firefighting/)&mdash;integrated design&ndash;fleet&ndash;tactics optimization under uncertainty
- [Design Optimization of Ocean Vehicles Using Large-Scale MDO Methods](/projects/4_ocean_vehicle_mdo/)&mdash;carrying the same methods across to maritime systems

Much of this work is dual-use. The methods and tools support public-good applications that can be openly published and shared&mdash;regional accessibility, disaster response, resilient transportation systems&mdash;and the same methodological advances apply to national security and defense contexts.

## Methods and Tools

The two themes rest on a shared set of methods. Figures, publications, and slides for each live with the [projects](/projects/) that apply them.

### Multidisciplinary Design Analysis and Optimization (MDAO)

Our MDAO framework is geometry-centric: the geometry of the system serves as the foundation for all analyses and optimizations, which lets us represent the design in a unified and modifiable form. During optimization, the geometry evolves to meet performance, reliability, and safety objectives.

The framework leverages computational graphs to represent all mathematical models, which provides two critical advantages:

- **Automated Derivative Computation**&mdash;The computational graph structure enables automatic differentiation, eliminating the need for manually derived gradients. This is essential for optimizing large-scale systems with hundreds of design variables and constraints.
- **High-Performance Computing Acceleration**&mdash;The same structure allows acceleration on high-performance computing platforms, including GPU clusters, so that even computationally expensive models run efficiently and optimization turnaround stays short.

The framework builds on tools developed by our collaborators at the [LSDO Lab](https://lsdo.eng.ucsd.edu/) at UC San Diego.

#### Aircraft Sizing Framework

At its core the framework has a 6 Degrees of Freedom (6-DoF) Flight Dynamics Module, enabling detailed and accurate analysis of aircraft performance throughout the mission envelope. It is designed for flexibility and modularity:

- **Modular Functional-Form Approach**&mdash;Any aerodynamic, propulsion, or mass properties model can be substituted, so the system can be customized to specific design requirements. This makes it possible to analyze a wide range of aircraft configurations.
- **Versatility for Conventional and Novel Designs**&mdash;The framework handles both conventional fixed-wing aircraft and unconventional designs such as truss-braced wing, blended-wing-body, or multi-rotor configurations. It is equally adept at evaluating traditional fuel-based propulsion and novel electrified architectures, including hybrid-electric and fully electric systems.

Applied in [Electric Air Taxi Concept System-Level MDO](/projects/6_evtol_system_mdo/).

### Multifidelity Surrogate Models

Engineering design often involves computationally intensive analyses that require evaluating a system repeatedly under varying conditions. These "many-query" analyses include optimization, design space exploration, and uncertainty quantification, and they become especially demanding when traditional high-fidelity simulations are used. Those models are accurate, but their cost makes them impractical for iterative analyses requiring thousands of evaluations.

Low-fidelity models are faster but less accurate, introducing errors that can compromise the reliability of results. Multifidelity surrogate models strike a balance: a small number of high-fidelity simulations is strategically combined with a larger number of low-fidelity evaluations, accelerating the overall computation while maintaining the accuracy of the final result.

Applied in [Multi-Fidelity Reduced-Order Modeling (ROM)](/projects/15_multifidelity_rom/).

### Reliability-Based Optimization

Safety risk is generally quantified as a combination of two entities: the probability of a failure or unsafe event, and the severity associated with it. Reliability-based optimization aims to ensure that the system under consideration poses no worse than an acceptable level of risk.

#### Hazard Safety Analysis and Bayesian Compliance Assessment

The approach combines top-down and bottom-up analysis to address limitations in traditional risk assessment methods and to bridge gaps in safety evaluation for novel aircraft architectures. The framework defines three levels:

- **System-Level**&mdash;The aircraft as a whole, captured with six-degree-of-freedom flight dynamics models. These analyze how the entire system responds to off-nominal conditions and 14-CFR regulatory requirements.
- **Control-Level**&mdash;Subsystems that effect changes in the aircraft's state, including traditional control surfaces, engines, motors, and other mechanisms for movement control. This generalization encompasses all possible means of influencing the aircraft's dynamics.
- **Component-Level**&mdash;Individual components within the powertrain, such as specific motors or energy storage units, and their respective failure behaviors.

The process begins with a top-down analysis, where system-level performance is assessed to derive failure rate requirements for the control level, ensuring alignment with regulatory standards and safety goals. A bottom-up approach then models component-level failures probabilistically and propagates their effects through the system to evaluate the control-level failure rate. Comparing the computed failure rate against the required one determines whether the system meets acceptable risk thresholds.

Applied in [Reliability-Based Design of the X-57 Concept](/projects/9_x57_reliability/).

### Model-Based Systems Engineering (MBSE)

MBSE connects requirements to the analyses that satisfy them, so that the rationale behind a configuration stays traceable as the design evolves. We work on linking MBSE artifacts directly to the optimization models that size the vehicle, rather than maintaining the two separately.

Applied in [Integrating MBSE and MDO through an Extended RFLP Framework](/projects/16_mbse_rflp/).
