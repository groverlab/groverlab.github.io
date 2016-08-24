---
layout: post
title:  "Dissecting a TransLink Compass Card"
date:   2016-08-24 12:00:00 -0800
---

On a recent trip to Vancouver B.C. we decided to take [TransLink](http://www.translink.ca)'s SkyTrain and buses from the airport to the Horseshoe Bay ferry terminal.  We bought our tickets at the YVR SkyTrain station:

<img src="/assets/compass-card-outside.jpg">

The tickets looked like the usual disposable paper tickets that are used on lots of buses and trains.  But I was surprised when I reached the turnstile and found no place to insert the paper ticket.  Instead there was a target for tapping a smart card.  All the smart cards I've ever seen are plastic, so it took me a second to realize that my disposable paper ticket might harbor smart insides.  But after tapping the ticket against the reader, the turnstile gates opened and we were on our way.

A ray of sunlight confirmed that our paper ticket was no dummy:

<img src="/assets/compass-card-backlit.jpg">

Looping around inside the card is the radio antenna the card uses to communicate with the tapping target.  Plastic smart cards with RF antennas are nothing new, but seeing these electronics sandwiched into a normal sheet of paper was impressive.  You can see something else inside the card below the "m" in "Compass" but it's hard to make it out.  Time to dissect...

Since the card is mostly paper, peeling it apart was relatively easy:

<img src="/assets/compass-card-delaminated-1.jpg">

After removing the top layer of paper, a very thin plastic layer is revealed.  This layer contained the metal antenna traces.  It also contained a tiny brown blob that was located beneath the "m".  Time for the microscope:

<img src="/assets/compass-card-chip-1.jpg">

The brown blob encloses a tiny square silicon chip placed precisely at the ends of the antenna traces.  It's hard to see anything on this side of the chip---maybe the other side of the chip has something to see?  To find out, I peeled off the remaining layer of paper from the backside of the card and was left with this thin sheet of plastic:

<img src="/assets/compass-card-delaminated-2.jpg">

It's hard to convey how extraordinarily thin this plastic sheet is.  Imagine Saran Wrap or cellophane, but with an electronic circuit inside.  Really impressive technology.

With all the paper gone, the plastic sheet is transparent, so I looked at the chip from the backside on the microscope:

<img src="/assets/compass-card-backside.jpg">

The silicon chip is visible in the gap between the antenna traces, and you can see four bulges in the antenna where the chip might make electrical contact with it.  But I still can't see the surface of the chip.

Time to remove the chip from the plastic sheet.  After some careful poking and prodding with the tools I had available (the tweezers and toothpick from a swiss army knife), I had removed the chip and put it back on the microscope:

<img src="/assets/compass-card-chip-2.jpg">

The silicon's a bit worse for wear, but still not much to see here---this must be the side that was facing away from the antenna traces.  So I carefully flipped over the chip and looked again:

<img src="/assets/compass-card-chip-3.jpg">

Yuck, the yellow remnants of the epoxy blob!  But also something interesting on this side---a tiny bright square on the chip---maybe the connection between the chip and the antenna?  After a little more tweezing and poking, the surface of the chip is finally visible:

<img src="/assets/compass-card-chip-4.jpg">

Now we're getting somewhere...  time to switch to a higher-magification objective:

<img src="/assets/compass-card-chip-5.jpg">

And there they are---the traces on the silicon chip, the brains of this paper smart card.  Hard to believe that hidden inside a piece of paper was this silicon circuit:

<img src="/assets/compass-card-chip-6.jpg">

The traces are still a little hard to see because of the remaining epoxy on the chip, so the next step would probably be using a solvent or [piranha](https://en.wikipedia.org/wiki/Piranha_solution) to try to get rid of the last of the epoxy.  But that's enough card dissection for today.

Finally, a couple photos to show how incredibly small this silicon chip is:

<img src="/assets/compass-card-finger.jpg">

Without the microscope, the brains of this smart card are indistinguishable from a single grain of pepper.  And when carefully placed on a penny, the silicon chip fits into the zero in the year 2000:

<img src="/assets/compass-card-penny.jpg">

All this, hidden in a piece of paper and made inexpensive enough to be disposable.
