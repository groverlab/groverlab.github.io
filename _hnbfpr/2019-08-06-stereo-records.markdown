---
layout: post
title:  "How stereo phonograph records work"
date:   2019-08-06 01:00:00 -0800
---

Here's a photo I took of a phonograph record using a microscope in my lab:

<img src="/assets/side2.png">

You can see the grooves, the little paths that the needle follows.  If you [search Google for record grooves under a microscope](https://www.google.com/search?q=record+groove+microscope), you'll find a lot of similar images of record grooves with seemingly random jagged edges.  How do those jagged lines capture all of Verdi's opera?

Luckily, I have a special record that can help answer this question:

<img src="/assets/record.jpeg">

<!--more-->

This is a "test record" used to evaluate stereo equipment.  It contains a collection of standardized tones and clicks and other noises.  And while it probably never made the *Billboard Top 100*, it can help us understand how records work.

Here's a closeup of a particularly riveting track that consists of nothing but a constant 600 Hz tone:

<img src="/assets/track_05.png">

Using this simple tone, we can see how the sound is encoded in the record.  The groove for this simple tone is just a sine wave; when the needle is being dragged through it, this groove wobbles the needle back and forth 600 times per second.  A sensor on the needle detects this wobble and converts it to an electrical signal which oscillates 600 times per second.  This signal is then amplified and sent to a speaker.  The result:  we hear a 600 Hz tone.

*The record groove is a physical manifestation of the waveform of the recorded sound.*  If you looked at that 600 Hz sound on an oscilloscope, you'd see a sinusoidal waveform that's identical to the record groove shown above.

I like how the grooves wobble in sync in the photo above.  It means that the circumference of the record at this groove must be an exact multiple of the wavelength of the sine wave.  Here's a nearby track with a slightly different frequency:

<img src="/assets/track_05b.png">

The grooves no longer wobble in sync; the waves are out of phase with each other.

This track plays A-440, the A above Middle C on the piano.  This 440 Hz note is commonly used by musicians to tune their instruments:

<img src="/assets/track_08.png">

These waveforms are simple because the sounds they encode are simple:  pure tones with single frequencies.  But for complex sounds like those in Verdi's *Aida*, a lot of sine waves are combined together, and the resulting record groove looks a lot more complicated.  Here's Verdi again: 

<img src="/assets/side2.png">

But the groove is still just a physical representation of the recorded sound wave, the pattern of pressure waves that traveled from the musicians' instruments, through the air, and to the microphone that recorded this record.  And by dragging a needle over that groove, we can recreate that pattern of pressure waves, send them through the air again, and into our ears, where the music lives again.

Let's finish with a brain teaser:  how do *stereo* records work?  Remember that stereo recordings have two channels, a Left channel and a Right channel, and they can contain different sounds; that's how you might hear a song with the vocalist in your left ear and the rest of the band in your right ear.  In fact, a stereo record actually contains *two totally separate recordings*, but there's still only one groove on the record, and one needle!  How does that work?!?

Happily, my fancy test record has a couple tracks that are perfect for answering this question.  Here's a track that plays a 3000 Hz tone in the Left channel, and an 800 Hz tone in the Right channel:

<img src="/assets/track_10.png">

Do you see the two waveforms?  If not, check out this version where I've highlighted the edges of one groove in red:

<img src="/assets/track_10_highlighted.png">

The waveform of the higher-frequency 3000 Hz tone is on the *left edge of the groove*, and the waveform for the lower-frequency 800 Hz tone is on the *right edge of the groove!*

In stereo records, the two edges of the groove are different.  As the needle is dragged through the groove, it contacts both edges at the same time.  In the 3000 and 800 Hz recording above, the small bumps on the left edge bounce the needle rapidly in the upper-right direction, and the bigger bumps on the right edge bounce the needle slowly in the upper-left direction.  Now, if we just put *two* sensors on the needle, one to measure its motion in the upper-right direction, and one to measure its motion in the upper-left direction, and connect the first sensor to the Right speaker and the second sensor to the Left speaker, we have stereo sound!  One groove, two recordings!

For completeness, here's another track with the Left and Right channels swapped (800 Hz in the Left and 3000 Hz in the Right):

<img src="/assets/track_09.png">

See how the edges are swapped?

In a stereo record, the needle isn't just bouncing back and forth; it's actually moving in two dimensions, sketching out a path that's basically a plot of the Left channel waveform vs. the Right channel waveform.  And if you view the needle's motion along the groove as travel in a third dimension, then Verdi's opera is just the dance of a needle through space, a dance a fraction of a millimeter wide and half a kilometer long, a slow dance for the low notes, a fast dance for the high notes, a subdued dance for the quiet notes, a frenetic dance for the loud notes, a shimmy one way for our left ears, and a shake the other way for our right.




