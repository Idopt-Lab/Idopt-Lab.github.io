---
layout: page
title: research
permalink: /research/
description: Methods developed and applied in the Intelligent Design Optimization Lab.
nav: true
nav_order: 2
---

Aircraft are prime examples of complex engineering systems. Their design is shaped by the missions they perform and the environments in which they operate. Aircraft design requires consideration of multiple disciplines—such as aerodynamics, propulsion, structures, and controls—and the coupled analysis of these disciplines to evaluate overall performance. As safety-critical systems, aircraft must meet rigorous regulatory certification standards and demonstrate high reliability across all components.

At the IDOpt Lab, we focus on developing and applying advanced methods to tackle these challenges:

- Multidisciplinary Design Analysis and Optimization (MDAO)
- Multifidelity Surrogate Models
- Reliability-Based Optimization
- Model-Based Systems Engineering (MBSE)

Figures, publications, and slides for each method live with the [projects](/projects/) that apply them.

## Multidisciplinary Design Optimization (MDO)

At the IDOpt Lab, our MDAO framework is geometry-centric, meaning the geometry of the system serves as the foundation for all analyses and optimizations. This approach enables us to represent the design in a unified and modifiable form. During optimization, the geometry evolves to meet performance, reliability, and safety objectives.

Our framework leverages computational graphs to represent all mathematical models, providing two critical advantages:

- **Automated Derivative Computation** — The computational graph structure enables automatic differentiation, eliminating the need for manually derived gradients. This capability is essential for optimizing large-scale systems with hundreds of design variables and constraints.
- **High-Performance Computing Acceleration** — The same computational graph structure facilitates acceleration on high-performance computing platforms, including GPU clusters. This ensures that even computationally expensive models can be executed efficiently, reducing turnaround times for optimization.

Our framework builds on tools developed by our collaborators at the [LSDO Lab](https://lsdo.eng.ucsd.edu/) at UC San Diego.

### Aircraft Sizing Framework

At its core, the framework has a 6 Degrees of Freedom (6-DoF) Flight Dynamics Module, enabling detailed and accurate analysis of aircraft performance throughout the mission envelope.

The framework is designed with flexibility and modularity in mind:

- **Modular Functional-Form Approach** — The framework supports the use of any aerodynamic, propulsion, or mass properties model, allowing users to customize the system based on their specific design requirements. This flexibility makes it possible to analyze a wide range of aircraft configurations.
- **Versatility for Conventional and Novel Designs** — The Aircraft Sizing Framework is equipped to handle both conventional fixed-wing aircraft and unconventional designs, such as truss-braced wing, blended-wing-body, or multi-rotor configurations. It is equally adept at evaluating traditional fuel-based propulsion systems and novel electrified propulsion architectures, including hybrid-electric and fully electric systems.

This framework allows for rapid exploration of design trade-offs, enabling engineers to assess the feasibility of various aircraft configurations and optimize them to meet performance, safety, and regulatory requirements.

Applied in [Electric Air Taxi Concept System-Level MDO](/projects/6_evtol_system_mdo/).

## Multifidelity Surrogate Models

Engineering design often involves computationally intensive analyses that require evaluating a system repeatedly under varying conditions. Examples of these "many-query" analyses include optimization, design space exploration, and uncertainty quantification. These tasks become especially demanding when traditional high-fidelity simulations are used. While these models provide accurate results, their computational cost makes them impractical for iterative analyses that require thousands of evaluations.

Low-fidelity models, on the other hand, are computationally faster but often less accurate, introducing errors that can compromise the reliability of results. Multifidelity surrogate models strike a balance by leveraging the strengths of both approaches. A small number of high-fidelity simulations are strategically combined with a larger number of low-fidelity evaluations. This integration accelerates the overall computation while maintaining the accuracy and reliability of the final results.

Applied in [Multi-Fidelity Reduced-Order Modeling (ROM)](/projects/15_multifidelity_rom/).

## Reliability-Based Optimization

The simplest definition of safety risk in the literature generally involves quantifying it as a combination of two entities - the probability of a failure or an unsafe event, and the severity associated with it.

Reliability-based optimization aim to ensure that any system under consideration poses no worse than an acceptable level of risk.

### Hazard Safety Analysis and Bayesian Compliance Assessment

The approach combines top-down and bottom-up approaches to address limitations in traditional risk assessment methods and bridge gaps in safety evaluations for novel aircraft architectures. The framework defines three levels of analysis:

- **System-Level:** Refers to the aircraft as a whole, capturing its overall behavior using six-degree-of-freedom (6 DoF) flight dynamics models. These models analyze how the entire system responds to off-nominal conditions and 14-CFR regulatory requirements.
- **Control-Level:** Represents subsystems that effect changes in the aircraft's state, including traditional control surfaces, engines, motors, and other mechanisms for movement control. This generalization encompasses all possible means of influencing the aircraft's dynamics.
- **Component-Level:** Focuses on individual components within the aircraft's powertrain, such as specific motors or energy storage units, and their respective failure behaviors.

The process begins with a top-down analysis, where system-level performance is assessed to derive failure rate requirements for the control-level. This ensures alignment with regulatory standards and safety goals. Conversely, a bottom-up approach models component-level failures in a probabilistic framework, propagating their effects through the system to evaluate the control-level failure rate. The framework then compares the computed failure rate from the bottom-up analysis to the required failure rate from the top-down analysis. This comparison enables a safety assessment, determining whether the system meets acceptable risk thresholds.

Applied in [Reliability-Based Design of the X-57 Concept](/projects/9_x57_reliability/).

## Model-Based Systems Engineering (MBSE)

Applied in [Integrating MBSE and MDO through an Extended RFLP Framework](/projects/16_mbse_rflp/).
