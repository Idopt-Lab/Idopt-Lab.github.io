---
layout: page
title: Autonomous Battery Units (ABUs)
description: Detachable, self-navigating battery units that rendezvous with a host aircraft in flight
importance: 5
category: ongoing
---

Battery mass is one of the hardest constraints on electric urban air mobility. An aircraft sized around a fixed onboard pack carries the mass of its worst-case mission on every flight, and spends time on the ground recharging that it cannot spend flying.

Autonomous Battery Units treat energy storage as a detachable, self-navigating element of the system rather than as a fixed part of the airframe. An ABU must locate a host aircraft at long range, close the distance, and dock with it&mdash;so the concept turns an energy-storage problem into a coupled problem spanning vehicle sizing, autonomy, perception, and fleet operations. That coupling is what places this work in our [vehicle-operations co-design](/research/) theme.

Nguyen, K., Hogge, D., Riris, J., Sarojini, D., & Denby, B. (2026). [Autonomous Battery Units as an Enabling Technology for Urban Air Mobility](https://doi.org/10.2514/6.2026-1713). In AIAA SCITECH 2026 Forum.

The underlying concept is the subject of an invention disclosure, *Autonomous Battery Unit for Electric Aviation* (INV2025-055), with Dr. Bradley Denby.

## Subprojects

**SPA2D: Shift-Plus-Add for Long-Range Aerial Target Tracking** &mdash; Khoa D. Nguyen

Before an ABU can dock, it has to see its host. At long range the host may occupy only a few pixels, with low signal-to-noise ratio, weak spatial structure, and motion hard to distinguish from clutter in any single frame. Single-frame detectors degrade sharply in this few-pixel regime, and simply raising the detector input resolution trades throughput away without reliably recovering accuracy.

SPA2D is a track-before-detect framework that recovers the target from motion instead. It evaluates candidate image-plane motion hypotheses, aligns consecutive frames according to each hypothesis, and integrates the aligned sequence, so that motion-consistent target energy accumulates into a compact peak while uncorrelated background responses smear out and suppress. To keep the hypothesis search tractable, it combines GPU-accelerated trajectory evaluation with dynamic local tracking that restricts later searches to a neighborhood around the previously estimated state, falling back to a coarse-to-fine global search for acquisition and reacquisition.

On representative drone sequences SPA2D holds 100% visible-target recall on the primary sky-tracking case and 97&ndash;99% on a second, while remaining effective on harder stress-test sequences. On embedded NVIDIA Jetson AGX Orin hardware it runs at 27.9 FPS and 16.5 FPS on those two cases under non-overlapping updates&mdash;fast enough to run onboard rather than depending on a link to the ground.

*SPA2D: Shift-Plus-Add for Long-Range Aerial Target Tracking.* Khoa D. Nguyen, Darshan Sarojini, and Bradley Denby. Under review.

**Design-Build-Fly of a Tiltrotor eVTOL** &mdash; Ferris Barghouty

A flying testbed. Designing, building, and flying a tiltrotor eVTOL exposes the integration problems that analysis alone tends to hide&mdash;transition control, thermal behavior, and the practical mechanics of transferring energy in flight&mdash;and gives the modeling work something to be validated against.
