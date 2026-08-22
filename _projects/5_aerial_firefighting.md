---
layout: page
title: Aerial Firefighting
description: Integrated design-fleet-tactics optimization under uncertainty
importance: 6
category: ongoing
---

Aerial firefighting is a demanding testbed for [vehicle-operations co-design](/research/). Decision-making spans three layers that are usually treated separately:

- **Vehicle capabilities** &mdash; payload, range, loiter, turnaround time, and the ability to operate from constrained bases near an incident.
- **Fleet composition under budget constraints** &mdash; how many aircraft of which types an agency can afford to acquire, position, and sustain.
- **Operational tactics** &mdash; how aircraft are dispatched and re-tasked in real time as fire behavior, weather, and visibility evolve.

Solving these layers in sequence misses the couplings between them. A vehicle optimized in isolation may be the wrong vehicle for the fleet it joins, and a fleet sized against average conditions may be the wrong fleet for the tactics an incident actually demands. Co-design treats all three as a single integrated problem.

This project combines our expertise in aircraft systems with complementary expertise in mission engineering and operations research, using agent-based operational modeling as the foundation for the operations layer. The intent is a benchmark problem that is realistic enough to expose the couplings and open enough to serve the wider community as an extensible reference for next-generation aviation systems methods.

The methods developed here are shared with our other co-design work: connecting vehicle models, fleet-level resource allocation, and operational decision-making under uncertainty, so that performance is evaluated at the system level rather than for an isolated vehicle.

## Subprojects

**Mission Engineering** &mdash; Katherine Lemke

Building the operations layer of the co-design problem: an agent-based model of how aircraft are dispatched, re-tasked, and resupplied as an incident evolves, so that fleet composition and vehicle capability can be evaluated against tactics that adapt rather than against a fixed script.
