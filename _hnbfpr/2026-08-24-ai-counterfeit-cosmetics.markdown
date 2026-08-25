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

## Photo A1:
![](/assets/rhode_A1.JPG) 

## Photo A2:
![](/assets/rhode_A2.JPG) 

## Photo A3:
![](/assets/rhode_A3.JPG) 

## Photo A4:
![](/assets/rhode_A4.JPG) 

## Photo A5:
![](/assets/rhode_A5.JPG) 

## Photo A6:
![](/assets/rhode_A6.JPG) 




# Tube B

## Photo B1:
![](/assets/rhode_B1.JPG) 

## Photo B2:
![](/assets/rhode_B2.JPG) 

## Photo B3:
![](/assets/rhode_B3.JPG) 

## Photo B4:
![](/assets/rhode_B4.JPG) 

## Photo B5:
![](/assets/rhode_B5.JPG) 

## Photo B6:
![](/assets/rhode_B6.JPG) 




# Tube C

## Photo C1:
![](/assets/rhode_C1.JPG) 

## Photo C2:
![](/assets/rhode_C2.JPG) 

## Photo C3:
![](/assets/rhode_C3.JPG) 

## Photo C4:
![](/assets/rhode_C4.JPG) 

## Photo C5:
![](/assets/rhode_C5.JPG) 

## Photo C6:
![](/assets/rhode_C6.JPG) 



# Tube A

Here are Google Gemini's responses to my prompt, "Is this tube of Rhode Peptide Lip Tint authentic?"

> "This Rhode Peptide Lip Tint appears to be counterfeit due to several prominent typographical errors and packaging discrepancies between the box and the tube."

Gemini's verdict is that Tube A is fake.  Here are the reasons it gives:

> "Typographical Errors: The ingredients list on the outer box misspells **Diisostearyl Malate** as **Diisosteary! Malate** using an exclamation mark."

This is correct!  It looks like someone scanned or photographed the actual ingredient list and then used optical character recognition (OCR) to convert it to text, but the OCR thought that a lower-case L was an exclamation mark.  I also noticed this error.  ✅

> "On the back of the tube, the regulatory text misspells **SOLUTIONS** as **PWC SOLOTIONS LIMITED** and omits a space in **LIMITED,STANLAW**.

The first part of this response is incorrect, and looking at the photo, we can see why:

Gemini mistook lighting glare for a printing typo.  A human wouldn't fall for this.  ❌

The second part of Gemini's response, the missing space in **LIMITED,STANLAW**, is correct.  A reputable product shouldn't have typos like that.  ✅

> Mismatched Distributor Information: The outer box lists **BIORIUS (Belgium and UK)** as the Responsible Person (RP), whereas the tube itself lists **PWC Services (Ireland and UK)**. Authentic products maintain identical regulatory contact details on both the outer packaging and the inner container.

This response impressed me.  Gemini's not just looking for inconsistencies within photos; it's also looking for inconsistencies *across* photos.  I'll admit that I missed this one.  ✅

> Batch Code Stamp: The deeply stamped batch number (112505) on the tube's crimp is a known marking frequently seen on counterfeit Rhode lip products circulating from unauthorized sellers.

I'm going to call this incorrect.  Maybe the lighting made the batch number look extra deep, but in my experience, the depth of the batch number isn't a reliable indicator of authenticity. ❌

Gemini then concludes:

> Counterfeit cosmetic products do not undergo standard safety or quality testing and may contain unknown or irritating ingredients. To ensure formula safety, authentic Rhode products should be purchased directly from the official brand website or authorized retailers.

Good advice!  I then gave Gemini my follow-up prompt, "Are there any other red flags you can find?"  Here are the responses:

> Several additional packaging, text, and manufacturing red flags are present across the box and tube:
> Redundant Product Description: The back of the box (Image A3) states, **"Apply this tinted lip tint daily..."**  Authentic Rhode packaging reads **"Apply this tinted lip treatment daily..."** Calling it a **"tinted lip tint"** is a clear text error.

This one is interesting.  Gemini is correct that **"tinted lip tint"** is an error; it seems to be picking up on the awkward repetition of "tint."  But Gemini's claim that "Authentic Rhode packaging reads **'Apply this tinted lip treatment daily'**" is incorrect, or at least out-of-date.  Current authentic packages read **"Apply this nourishing formula for a hint of tint and hydrated, pillowy-soft lips."**

I'll call this response a success, even though it got some of the details wrong.  ✅

> Italian Recycling Misspelling: Above the recycling icon on the box back (Image A3), the text reads **RACCOLTA PLASTIC**. The correct Italian term is **RACCOLTA PLASTICA** (missing the 'A' at the end).

Correct!  And I missed this one (my Italian is limited to common menu items).  Although I'll note that this phrase (correct or otherwise) doesn't appear at all on current authentic packages.   ✅

> Postal Code Letter/Number Swap: On the regulatory text on the back of the tube (Image A6), the Dublin postal code uses the capital letter **O** instead of the number **0** (**DO1 A2T5** instead of **D01 A2T5**).

Now Gemini is just showing off...  The AI is correct on all fronts:  Ireland uses seven-character postal codes (called [Eircodes](https://en.wikipedia.org/wiki/Postal_addresses_in_the_Republic_of_Ireland)); the first three characters are called the *routing key* and **D01** (dee-zero-one) is the valid routing key for the [Dublin 1 postal district](https://en.wikipedia.org/wiki/Dublin_1).  But the tube says **DO1** (dee-oh-one) and that's not a valid routing key.  Hats off to Gemini on this one; I don't have enough familiarity with postal codes to notice something like this.   ✅

> Box-Outline Debossing: Image A1 shows a stamped rectangular border outline debossed into the cardboard around the front text (rhode PEPTIDE LIP TINT...). Official Rhode unit cartons are smooth and do not have this outer mold line stamped around the front logos.

This is incorrect.  Current authentic boxes of Rhode Peptide Lip Tint *do* have an embossed border around the front text, in the shape of the outline of the tube.  ❌

> Volume Spacing Errors: On the front right side of the box (Image A1), the measurement text is crammed together as **10mL/0.3floze** without standard spaces separating the units or the **e** estimate symbol.

Also wrong.  The volume measurement text does look crammed together on Box 1, but it looks similarly crammed together on authentic boxes too.  ❌

> Shade Name Placement: On the tube (Image A6), the shade label ribbon is printed sideways directly against the crimped seam edge, which differs from standard factory placement.

I'm also calling this one wrong.  In my experience, the location of the shade name on photo A6 is indistinguishable from the location of the shade name on an authentic tube.  ❌

> These additional text errors, formatting bugs, and box mold defects further confirm this item is a counterfeit.








