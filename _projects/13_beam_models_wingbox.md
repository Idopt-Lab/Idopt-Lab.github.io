---
layout: page
title: Beam Models for Aircraft Wingbox Structures
description: Physics-based model reduction for wing primary structure
importance: 8
category: completed
---

The research involves exploring physics-based model reduction to create a simplified beam model representation of the aircraft wing primary structure.

- Developed using the modular OpenMDAO platform and CasADi to automate derivative computations.
- Consider arbitrary cross-sections, dynamic loads, both strength and buckling structural constraints, and can model multiple beam members connected by joints, as well as the addition of multiple masses and point loads.
- The scientific contribution of the research lies in the development of a one-time correction using the higher-order Variational Asymtotic Method (VAM).
- Weight predicted by the beam model compared to higher-fidelity shell models was reduced to < 5% difference with a 12x speed-up, even for complex aircraft configurations like the truss-braced wing.

{% include figure.liquid path="assets/img/research/beam-models-wingbox/01-tbw-beam-model.png" alt="Beam model of the truss-braced wing" class="img-fluid rounded z-depth-1" %}

Role: Ph.D. thesis at ASDL lab at Georgia Tech

Sarojini, D., & Mavris, D. (2022). [Structural Analysis and Optimization of Wings Subjected to Dynamic Loads](https://doi.org/10.2514/1.J060931). AIAA Journal, 60(2), 1013-1023. [[Download from ResearchGate](https://www.researchgate.net/publication/354980737_Structural_Analysis_and_Optimization_of_Wings_Subjected_to_Dynamic_Loads)]

#### Slides

- [WCSMO-14 Beam Preconditioning](https://drive.google.com/file/d/1ZRhKVd2V8cQFF-_ISPzF7IVoj7iV3TOD/view?usp=sharing)
