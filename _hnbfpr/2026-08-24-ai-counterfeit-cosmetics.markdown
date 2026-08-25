---
layout: post
title:  'Identifying fake cosmetics using artificial intelligence'
date:   2025-06-08 01:00:00 -0800
---

![](/assets/freezer1.jpg) 

My lab develops [low-cost and easy-to-use tools for identifying fake medicines](/fakes), but we're always on the lookout for other types of fakes that we can go after.  For example, the cosmetics industry has a massive problem with counterfeit products.  Studies estimate that two-thirds of branded makeup and skincare products on sites like eBay, TikTok Shop, and Vinted are fake.  Counterfeit cosmetics don't just waste consumers' money; they also may expose wearers to harmful contaminants like heavy metals and bacteria.

As part of an ongoing study, I've been purchasing both authentic and counterfeit versions of various cosmetics.  I'm always struck by how much work goes into making the fakes look authentic.  At a glance, the counterfeit versions of a product are virtually indistinguishable from the genuine ones.  However, with a little research and a close inspection, you can start to find little inconsistencies that give away the fakes.  But not everyone has the time or expertise to research a particular product before they buy it.  That got me wondering: could artificial intelligence identify a counterfeit product?  If so, then consumers could snap some photos and use ChatGPT or Gemini or Claude to verify an item before they purchase it.

<!--more-->

To explore this idea, I took photos of three different tubes of Rhode Peptide Lip Tint.  I chose this product because it's a known target for counterfeiters according to [a recent New York Times article on fake beauty products](https://www.nytimes.com/wirecutter/reviews/counterfeit-beauty-products/).  For each tube, I took four photos of the cardboard box (one for each side) and two photos of the tube itself (front and back).  I then uploaded each tube's six photos to Google Gemini and used the Gemini 3.6 Flash model with Thinking enabled and fed it this prompt:

![](/assets/rhode_prompt_1.png) 

I then recorded the model's response, then I prodded it to work a little harder using this prompt:

![](/assets/rhode_prompt_2.png) 

I repeated this process for all three tubes of the product.


# Tube A

> This Rhode Peptide Lip Tint appears to be counterfeit due to several prominent typographical errors and packaging discrepancies between the box and the tube.

> Typographical Errors: The ingredients list on the outer box misspells Diisostearyl as Diisosteary! Malate using an exclamation mark.

> On the back of the tube, the regulatory text misspells "SOLUTIONS" as PWC SOLOTIONS LIMITED and omits a space in LIMITED,STANLAW.

> Mismatched Distributor Information: The outer box lists BIORIUS (Belgium and UK) as the Responsible Person (RP), whereas the tube itself lists PWC Services (Ireland and UK). Authentic products maintain identical regulatory contact details on both the outer packaging and the inner container.

> Batch Code Stamp: The deeply stamped batch number (112505) on the tube's crimp is a known marking frequently seen on counterfeit Rhode lip products circulating from unauthorized sellers.

> Counterfeit cosmetic products do not undergo standard safety or quality testing and may contain unknown or irritating ingredients. To ensure formula safety, authentic Rhode products should be purchased directly from the official brand website or authorized retailers.

> Several additional packaging, text, and manufacturing red flags are present across the box and tube:

> Redundant Product Description: The back of the box (Image A3) states, "Apply this tinted lip tint daily..."Authentic Rhode packaging reads "Apply this tinted lip treatment daily..." Calling it a "tinted lip tint" is a clear text error.

> Italian Recycling Misspelling: Above the recycling icon on the box back (Image A3), the text reads RACCOLTA PLASTIC. The correct Italian term is RACCOLTA PLASTICA (missing the 'A' at the end).

> Postal Code Letter/Number Swap: On the regulatory text on the back of the tube (Image A6), the Dublin postal code uses the capital letter O instead of the number 0 (DO1 A2T5 instead of D01 A2T5).

> Box Box-Outline Debossing: Image A1 shows a stamped rectangular border outline debossed into the cardboard around the front text (rhode PEPTIDE LIP TINT...). Official Rhode unit cartons are smooth and do not have this outer mold line stamped around the front logos.

> Volume Spacing Errors: On the front right side of the box (Image A1), the measurement text is crammed together as 10mL/0.3floze without standard spaces separating the units or the e estimate symbol.

> Shade Name Placement: On the tube (Image A6), the shade label ribbon is printed sideways directly against the crimped seam edge, which differs from standard factory placement.

> These additional text errors, formatting bugs, and box mold defects further confirm this item is a counterfeit.







# The experiment

Today's experiment uses the big upright freezer in my garage, which looks like this:

![](/assets/freezer2.png) 

I started the barometer (air pressure) logger in [Phyphox](https://phyphox.org), then I placed my iPhone inside a big upright freezer in my garage and closed the door.  I then waited for about a minute before opening the freezer door and retrieving my phone.

After exporting the barometer data from Phyphox and whipping up a quick Python program to plot it, here's what I got:

![](/assets/freezer3.png) 

What's going on here? 

# The phenomenon 

What is the phenomenon I observed that I'm trying to explain?

Looking at the data above, I marked in red the point at which I closed the freezer door with the phone inside, at the ten second mark.  Within a couple seconds of closing the door, we see the air pressure inside the freezer drop from 95.70 kPa to 95.50 kPa.  This is a relatively small change---just a 0.2% decrease---but it is easily detectible using my iPhone's barometric pressure sensor.  Then around the 20-second mark we see the air pressure inside the freezer start to rise again, reaching the starting pressure within about five seconds.

So that's our phenomenon:  we observed that after opening and closing a freezer door, the air pressure inside the freezer abruptly drops, then rises back to the starting pressure.

# What's happening?

This is the point where you might show your students this data (or better yet, have them recreate my experiment using their own phones and freezers and get their own data) and have them write in their notebooks possible explanations for what is causing the changes in the pressure inside the freezer.  There are two distinct changes here---the *decrease* in pressure after the door is closed, and the *increase* in pressure after a little time passes---and we should have explanations for both of these changes.  Students could then share their proposed explanations with the rest of the class and we can arrive at a consensus explanation.

Here's my explanation:

This is an upright freezer that's normally filled with cold air.  When I opened the freezer door, a lot of that cold air slid down and out of the front of the freezer (because cold air is more dense than warm air) and was replaced by warm air from my garage.  When I closed the freezer door, that new warm air is trapped in the freezer, and it quickly cools down.  The amount of gas inside the freezer remains unchanged, but the temperature of the gas inside the freezer drops.  The [Gay-Lussac law](https://en.wikipedia.org/wiki/Gay-Lussac%27s_law) and the [ideal gas law](https://en.wikipedia.org/wiki/Ideal_gas_law) tell us that if the volume of gas remains constant but the temperature drops, we expect the pressure to drop, and that's exactly what our smartphone records in the first few seconds after closing the door!

So what causes the pressure to rise again a few seconds later?  The seal on my freezer door isn't perfect---it lets a little air pass between the outside and the inside of the freezer.  So when the pressure inside the freezer drops to below atmospheric pressure, air from outside the freezer flows into the freezer until the pressures inside and outside of the freezer are equal again.  In fact, if I listen closely, I can hear the "whoosh" of air flowing through little leaks in the door seal.

# The engineering practice

Now let's look at this phenomenon from a practical standpoint:  we're using my freezer to cool my garage air, which isn't really optimal.  Ideally, my freezer should be cooling my food, not my air!  And that's a jumping-off-point for a possible engineering practice in the classroom:  how could you engineer a change in this setup to make my freezer more efficient?  To not waste energy cooling air every time I open and close the freezer door?

One possible answer might be to make the seal around my freezer door better, so that no air flows into or out of the freezer when the door is closed.  But this could have an unintended side effect:  if the air inside the freezer stays at low pressure, it might become difficult for me to open the door!  Let's perform a little calculation.  Our data shows that there's a 0.20 kPa (or 200 Pa) pressure difference between the inside of the freezer and the outside.  Remember that pressure units are force applied over a surface area.  In the case of pascals, 200 Pa is 200 newtons of force applied over 1 square meter of surface area.  Conveniently, my freezer door has a surface area of about 1 square meter, so we can estimate that the pressure difference between the inside and outside of my well-sealed freezer creates a force of about 200 newtons---this force is holding the door closed, so I'll need to pull with about 200 newtons of force in the opposite direction to overcome the pressure difference and open the door.  How much force is 200 newtons?  We can use force = mass x acceleration (F = ma) to calculate how much mass (or weight) we'd need to hang from the door (presumably using a pulley) to open the door.  Rearranging the equation to m = F/a, we determine m = 200 newtons / 9.8 m s^-2 = 20 kg of mass (or weight).  That's about 44 pounds that I'll need to apply to the freezer door to overcome the pressure difference that's holding it closed!  That's doable, but I'm not sure I want to pull 44 pounds every time I want a bowl of ice cream...

Another possible answer to the question "how can I stop my freezer from wasting energy cooling air?" is to get a different type of freezer.  Specifically, I could get a *chest freezer* like the one shown here:

![](/assets/freezer4.png) 

These freezers have some disadvantages---they take up more floor space, for example---but they have an enormous energy-efficiency advantage over upright freezers:  *the cold air doesn't spill out of them when you open the door*.  That means that they don't have to waste energy cooling a new volume of warm air every time you open the door.  Here's a quote from a [University of California, Santa Barbara blog post about upright versus chest freezers:](https://www.sustainability.ucsb.edu/blog/just-facts-labrats/chest-vs-upright-freezers-which-more-efficient-lab) 

> "When the door is opened in an upright freezer, large sums of cold air are let out and heat is let in which draws more energy to re-cool the system. Whereas with a chest freezer, there is less cold air loss when the door is opened, the larger depth of the freezer also helps reduce cold air loss, resulting in less energy being needed to restabilize the cold temperature in the freezer."

Those are two ideas for how to improve the energy efficiency of my freezer.  What else can your students come up with?  Model their proposed solutions in their notebooks!

In summary, we've gone from an observed phenomenon (the air pressure inside my freezer drops then rises whenever I open the door) to an explanation (gas density as a function of temperature, the ideal gas laws, and a leaky freezer door) and a modeling based engineering practice (brainstorming ways to improve the energy efficiency of my freezer), all thanks to Phyphox and my phone.  Hopefully this experience (or something like it) can be useful in your STEM classroom!


