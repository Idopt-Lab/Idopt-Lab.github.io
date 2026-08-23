---
layout: page
title: Autonomous Battery Units (ABUs)
description: Detachable, self-flying battery units that attach to and detach from an aircraft in flight
importance: 5
category: ongoing
---

Urban air mobility expects eVTOL aircraft to fly on batteries, but battery energy density remains many times below what practical, economical flight requires&mdash;and it has not improved significantly in a decade. Electric aircraft face two distinct energy-storage problems as a result. The first is the obvious one: there is not enough stored energy. The second is subtler. Unlike gasoline, a battery does not lose mass as it depletes, so an electric aircraft carries its full energy-storage mass for the entire flight, and its flight-averaged mass exceeds that of a comparable gasoline-powered aircraft. More mass means more energy required, which compounds the first problem.

**Autonomous Battery Units address both.** An ABU consists of one or more rotors driven by an electric motor, an attitude determination and control system, and a battery array, joined in a chassis that attaches to and detaches from an aircraft before, during, and after flight. It replenishes energy buffers mid-flight, and it lets an aircraft shed nearly-depleted batteries rather than carry them to the destination.

The idea echoes aerial refueling and drop tanks in military aviation. What makes it practical now is autonomy: vehicles routinely navigate precisely in real time&mdash;self-driving cars, boosters returning to their launch site&mdash;where a historical lack of autonomy is exactly what kept drop tanks from being recovered.

### Concept of operations

An ABU should expend minimal energy delivering charged batteries to an aircraft in flight, and minimal energy detaching and landing at a recharging station; most of its expenditure should happen while attached and providing thrust or lift. With minimizing mass as the other governing principle, this points to a barebones direct-rendezvous concept without wings, supporting four modes:

- assisted liftoff, then detaching and returning to the takeoff site;
- detachment during cruise, descending to a nearby landing site;
- direct ascent from an intermediate site near the flight path to attach a charged battery;
- assisted landing in the event of a safety issue.

For longer flights&mdash;utility or regional air mobility rather than UAM&mdash;where an ABU must cover lateral distance, a blended-wing concept supports efficient travel.

### Quantified benefits

Assisted-takeoff ABUs reduce mission energy by 7&ndash;24%. Assisted-cruise ABUs reduce end-of-mission depth-of-discharge to as little as 16%. Assisted-landing ABUs support divert missions with as little as 30 kWh of mission energy capacity. Across an eight-hour period, ABUs increase the number of UAM flights by 1.5&ndash;2.6&times;.

Nguyen, K., Hogge, D., Riris, J., Sarojini, D., & Denby, B. (2026). [Autonomous Battery Units as an Enabling Technology for Urban Air Mobility](https://doi.org/10.2514/6.2026-1713). In AIAA SCITECH 2026 Forum.

The concept is the subject of an invention disclosure, *Autonomous Battery Unit for Electric Aviation* (INV2025-055), with Dr. Bradley Denby.

## Subprojects

**eVTOLpy: Rapid eVTOL Sizing Framework** &mdash; Khoa D. Nguyen and Dylan Hogge

A rapid sizing framework that blends physics-based methods with empirical weight regressions. For each mission segment it computes power and energy requirements as functions of mass, aerodynamics, and propulsion, while an iterative loop updates component weights. Mission parameters (range, loiter time, payload), configuration choices (number of rotors, aspect ratio), and concept type (tilt-wing, lift-plus-cruise, multi-copter) can all be varied to assess their impact on feasibility and takeoff gross weight immediately.

Validated against published data for the Archer Midnight, Joby S4, and Supernal S-A2, with close agreement in TOGW for comparable mission definitions. It provides the vehicle models underpinning the ABU benefit analysis, and is also used in the [Air Vehicle Design capstone](/teaching/) to teach VTOL sizing. Open source, on the [lab GitHub](https://github.com/Idopt-Lab).

**SPA2D: Shift-Plus-Add for Long-Range Aerial Target Tracking** &mdash; Khoa D. Nguyen

Before an ABU can rendezvous, it has to see its host. At long range the host may occupy only a few pixels, with low signal-to-noise ratio, weak spatial structure, and motion hard to distinguish from clutter in any single frame. Single-frame detectors degrade sharply in this few-pixel regime, and simply raising the detector input resolution trades throughput away without reliably recovering accuracy.

SPA2D is a track-before-detect approach that recovers the target from motion instead. It evaluates candidate image-plane motion hypotheses, aligns consecutive frames according to each hypothesis, and integrates the aligned sequence, so that motion-consistent target energy accumulates into a compact peak while uncorrelated background responses smear out and suppress. To keep the hypothesis search tractable, it combines GPU-accelerated trajectory evaluation with dynamic local tracking that restricts later searches to a neighborhood around the previously estimated state, falling back to a coarse-to-fine global search for acquisition and reacquisition.

On representative drone sequences it holds 100% visible-target recall on the primary sky-tracking case and 97&ndash;99% on a second, while remaining effective on harder stress-test sequences. On embedded NVIDIA Jetson AGX Orin hardware it runs at 27.9 FPS and 16.5 FPS on those two cases under non-overlapping updates&mdash;fast enough to run onboard rather than depending on a link to the ground. Work in progress.

**Design-Build-Fly of a Tiltrotor eVTOL** &mdash; Ferris Barghouty

A flying testbed. Designing, building, and flying a tiltrotor eVTOL exposes the integration problems that analysis alone tends to hide&mdash;transition control, thermal behavior, and the practical mechanics of attaching and detaching in flight&mdash;and gives the modeling work something to be validated against.
