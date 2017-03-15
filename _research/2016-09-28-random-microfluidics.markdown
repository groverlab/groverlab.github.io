---
layout: post
title:  "Random design of microfluidics "
---

Junchao Wang, Philip Brisk, and William H. Grover.  [*Lab on a Chip*, 16, 4212-4219 (2016)](http://pubs.rsc.org/en/content/articlelanding/2016/lc/c6lc00758a).  [PDF](/assets/random-microfluidics.pdf)

<img src="/assets/random-microfluidics.png">

In this work we created functional microfluidic chips without actually designing them.  We accomplished this by first generating a library of thousands of different random microfluidic chip designs, then simulating the behavior of each design on a computer using automated finite element analysis.  The simulation results were then saved to a database which a user can query via a public website ([http://random.groverlab.org](http://random.groverlab.org)) to find chip designs suitable for a specific task.  To demonstrate this functionality, we used our library to select chip designs that generate any three desired concentrations of a solute.  We also fabricated and tested 16 chips from the library, confirmed that they function as predicted, and used these chips to perform a cell growth rate assay.  This is one of many different applications for randomly-designed microfluidics; in principle, *any* microfluidic chip that can be simulated could be designed automatically using our method.  Using this approach, individuals with no training in microfluidics can obtain custom chip designs for their own unique needs in just a few seconds.
