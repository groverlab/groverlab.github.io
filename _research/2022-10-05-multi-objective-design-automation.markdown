---
layout: post
title:  "Multi-objective design automation for microfluidic capture chips"
doi:  "10.1109/TNB.2022.3212625"
---

Lisa Chen, William H. Grover, Manu Sridharan, and Philip Brisk, [*IEEE Transactions on NanoBioscience* (2022)](https://ieeexplore.ieee.org/document/9912457).  [PDF](assets/multi-objective-design-automation.pdf)

<img src="/assets/multi-objective-design-automation.png">

Microfluidic capture chips are useful for preparing or analyzing a wide range of different chemical, biological, and medical samples. A typical microfluidic capture chip contains features that capture certain targets (i.e. molecules, particles, cells) as they flow through the chip. However, creating optimal capture chip designs is difficult because of the inherent relationship between capture efficiency and flow resistance: as more capture features are added to the chip, the capture efficiency increases, but the additional features slow the flow of fluid through the chip. This paper introduces the use of multi-objective optimization to generate capture chip designs that balance the trade-off between maximizing target capture efficiency and minimizing resistance to fluid flow. Design automation for this important class of microfluidic chips has not been attempted previously. Our approach automatically produces a Pareto front of non-dominated chip designs in a reasonable amount of time, and most of these designs have comparable capture efficiency to hand-designed chips with far lower flow resistance. By choosing from the chip designs on the Pareto front, a user can obtain high capture efficiency without exceeding the flow resistance constraints of their application.