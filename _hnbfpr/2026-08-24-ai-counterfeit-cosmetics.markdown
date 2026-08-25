---
layout: post
title:  'Identifying fake cosmetics using artificial intelligence'
date:   2026-08-25 01:00:00 -0800
---

![](/assets/freezer1.jpg) 

My lab develops [low-cost and easy-to-use tools for identifying fake medicines](/fakes), but we're always on the lookout for other types of fakes that we can go after.  For example, the cosmetics industry has a massive problem with counterfeit products.  Studies estimate that two-thirds of branded makeup and skincare products on sites like eBay, TikTok Shop, and Vinted are fake.  Counterfeit cosmetics don't just waste consumers' money; they also may expose wearers to harmful contaminants like heavy metals and bacteria.

As part of an ongoing study, I've been purchasing both authentic and counterfeit versions of various cosmetics.  I'm always struck by how much work goes into making the fakes look authentic.  At a glance, the counterfeit versions of a product are virtually indistinguishable from the genuine ones.  However, with a little research and a close inspection, you can start to find little inconsistencies that give away the fakes.  But not everyone has the time or expertise to research a particular product before they buy it.  That got me wondering: **could artificial intelligence identify a counterfeit product?**  If so, then consumers could snap some photos and use ChatGPT or Gemini or Claude to verify an item before they purchase it.

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

✅ This is correct!  It looks like someone scanned or photographed the actual ingredient list and then used optical character recognition (OCR) to convert it to text, but the OCR thought that a lower-case L was an exclamation mark.  I also noticed this error.  

> "On the back of the tube, the regulatory text misspells **SOLUTIONS** as **PWC SOLOTIONS LIMITED** and omits a space in **LIMITED,STANLAW**.

❌ The first part of this response is incorrect, and looking at the photo, we can see why:

Gemini mistook lighting glare for a printing typo.  A human wouldn't make this mistake.  

✅ The second part of Gemini's response, the missing space in **LIMITED,STANLAW**, is valid.  A reputable product shouldn't have typos like that.  

> Mismatched Distributor Information: The outer box lists **BIORIUS (Belgium and UK)** as the Responsible Person (RP), whereas the tube itself lists **PWC Services (Ireland and UK)**. Authentic products maintain identical regulatory contact details on both the outer packaging and the inner container.

✅ This response impressed me.  Gemini's not just looking for inconsistencies within photos; it's also looking for inconsistencies *across* photos.  I'll admit that I missed this one.  By the way, the current authentic tubes of the product I've obtained mention only BIORIUS (on both the tube and the box) and not PWC, so it would appear that if you find a box or tube that mentions PWC, it's likely counterfeit. 

> Batch Code Stamp: The deeply stamped batch number (112505) on the tube's crimp is a known marking frequently seen on counterfeit Rhode lip products circulating from unauthorized sellers.

❌ I'm going to call this incorrect.  Maybe the lighting made the batch number look extra deep, but in my experience, the depth of the batch number isn't a reliable indicator of authenticity. 

Gemini then concludes:

> Counterfeit cosmetic products do not undergo standard safety or quality testing and may contain unknown or irritating ingredients. To ensure formula safety, authentic Rhode products should be purchased directly from the official brand website or authorized retailers.

Good advice!  I then gave Gemini my follow-up prompt, "Are there any other red flags you can find?"  Here are the responses:

> Several additional packaging, text, and manufacturing red flags are present across the box and tube:
> Redundant Product Description: The back of the box (Image A3) states, **"Apply this tinted lip tint daily..."**  Authentic Rhode packaging reads **"Apply this tinted lip treatment daily..."** Calling it a **"tinted lip tint"** is a clear text error.

This one is interesting.  Gemini is correct that **"tinted lip tint"** is an error; it seems to be picking up on the awkward repetition of "tint."  But Gemini's claim that "Authentic Rhode packaging reads **'Apply this tinted lip treatment daily'**" is incorrect, or at least out-of-date.  Current authentic packages read **"Apply this nourishing formula for a hint of tint and hydrated, pillowy-soft lips."**

✅ I'll call this response a success, even though it got some of the details wrong.  

> Italian Recycling Misspelling: Above the recycling icon on the box back (Image A3), the text reads **RACCOLTA PLASTIC**. The correct Italian term is **RACCOLTA PLASTICA** (missing the **'A'** at the end).

✅ Correct!  And I missed this one (my Italian is limited to menu items).   I'll also note that this phrase (correct or otherwise) doesn't appear at all on current authentic packages.  

> Postal Code Letter/Number Swap: On the regulatory text on the back of the tube (Image A6), the Dublin postal code uses the capital letter **O** instead of the number **0** (**DO1 A2T5** instead of **D01 A2T5**).

✅ Now Gemini is just showing off...  The AI is correct on all fronts:  Ireland uses seven-character postal codes (called [Eircodes](https://en.wikipedia.org/wiki/Postal_addresses_in_the_Republic_of_Ireland)); the first three characters are called the *routing key* and **D01** (dee-zero-one) is the valid routing key for the [Dublin 1 postal district](https://en.wikipedia.org/wiki/Dublin_1).  But the tube says **DO1** (dee-oh-one) and that's not a valid routing key.  Hats off to Gemini on this one; I don't have enough familiarity with postal codes to notice something like this.   

> Box-Outline Debossing: Image A1 shows a stamped rectangular border outline debossed into the cardboard around the front text (rhode PEPTIDE LIP TINT...). Official Rhode unit cartons are smooth and do not have this outer mold line stamped around the front logos.

❌ This is incorrect.  Current authentic boxes of Rhode Peptide Lip Tint *do* have an embossed border around the front text, in the shape of the outline of the tube.  

> Volume Spacing Errors: On the front right side of the box (Image A1), the measurement text is crammed together as **10mL/0.3floze** without standard spaces separating the units or the **e** estimate symbol.

❌ Also wrong.  The volume measurement text does look crammed together on Box 1, but it looks similarly crammed together on authentic boxes too. 

> Shade Name Placement: On the tube (Image A6), the shade label ribbon is printed sideways directly against the crimped seam edge, which differs from standard factory placement.

❌ I'm also calling this one wrong.  In my judgement, the location of the shade name on photo A6 is indistinguishable from the location of the shade name on an authentic tube.  

> These additional text errors, formatting bugs, and box mold defects further confirm this item is a counterfeit.




# Tube B

> Based on multiple spelling errors, spacing glitches, and formatting issues across the packaging and tube, this item appears to be counterfeit. Authentic products from established cosmetics brands go through strict quality checks, whereas fakes frequently contain text errors.
>Key Red Flags on Packaging & Tube

> Spelling Error in Usage Instructions (Image B3): The top line of the usage text reads "Appli tinted lip treatment daily..." instead of "Apply".

❌ This is another case of Gemini mistaking light glare for a typo.

> Misspelled Ingredients (Image B2): The ingredients list contains chemical spelling errors, including "Octyidodecanol" (instead of Octyldodecanol) and "Fliuorphlogopite" (instead of Fluorphlogopite).

> Lowercase Country Name (Image B3): The origin line reads "Made in italy" using a lowercase "i" instead of capitalized "Italy".

> Spacing Glitches (Images B3 & B6): The box includes an errant space in "SERVIC ES LIMITED", while the back of the tube omits the space in "LIMITED,STANLAW".



> Missing Accents (Image B3): The French translation ends with "colorees" instead of the proper accented "colorées".

✅

> Further Verification Steps

Gemini's next two responses aren't specific to the photos; rather they're general advice on additional steps an individual might take to determine the authenticity of their product.

> Applicator Orientation: On genuine Rhode tubes, when looking at the front logo, the slanted tip of the applicator should face away from you.

This is true of authentic tubes, but it's also true of every fake tube I've collected, so this is clearly not a reliable rule-of-thumb

> Texture & Fragrance: Authentic Rhode Peptide Lip Tints have a smooth, non-sticky balmy texture and a mild scent, whereas counterfeits often smell strongly of chemicals or feel overly sticky or grainy.

This seems like good advice, particularly regarding smell: some of my fake tubes have a sickly sweet smell.  The authentic product is virtually odorless to my nose.

> Beyond the initial typos, several additional formatting errors, font irregularities, and manufacturing defects further confirm this is counterfeit.
> Invalid Postal Code (Images B3 & B6): The Dublin address lists the Eircode as DO1 A2T5 using the capital letter "O" instead of the numeric zero (D01).

> Ingredient Spelling Error (Image B2): The compound **Phytosteryl/Isostearyl** is misspelled as **Phytosteryl/Isosteararyl** with an extra "ar".

❌ 

> Uneven Text Spacing (Image B4): The key ingredients list on the box side contains wide, irregular spacing gaps between **BABASSU** and **CUPUAÇU**.

✅

> Distorted Logos (Image B6): The Leaping Bunny cruelty-free symbol printed on the back of the tube next to the 12M icon is stretched and warped.

❌ 

> Faded Tube Printing (Image B5): The French description and volume details (10 mL / 0.3 fl oz e) on the front of the tube are printed in a low-contrast, barely legible grey font rather than crisp white.

❌ 

> Messy Crimp Stamping (Image B6): The stamped batch code on the tube crimp overlaps the printed white vertical stripe unevenly.

❌ 

> Excessive Shrink Wrap (Images B1 & B3): The outer box is encased in thick, heavily wrinkled plastic shrink wrap with warped seams, which differs from authentic retail box packaging.

❌ 





# Tube C

> Based on the details visible in your images, this tube and box of Rhode Peptide Lip Tint (in the shade Ribbon) show definitive signs of being a counterfeit product.
> Specific Red Flags Found in Your Photos
> Spelling Typos in the Ingredients (Image C2): The ingredient list contains obvious spelling errors that would not pass authentic quality control. It lists "Svnthetic Fluorphlogopite" (using a 'v' instead of a 'y') and "Ethylhexvl Palmitate"(using a 'v' instead of a 'y').



> Grammar/Accent Errors (Image C2): The Italian translation line at the top prints "TINTA LABBRÂ" with an incorrect circumflex accent over the final 'A'.

I think it's a Ã

> Barcode Printing (Image C3): The font weight and numeric alignment on the barcode sticker differ from standard factory unit packaging.

❌ 

> Additional Physical Checks for the Tube

> Applicator Orientation: On an authentic Rhode tube, when you hold the slanted tip against your lips while looking in a mirror, the printed rhode logo on the front faces outward toward the mirror. Counterfeits frequently have the slanted applicator attached backward or off-center.

> Scent & Formula: Genuine Rhode lip tints have a smooth, cushiony, non-sticky texture. Counterfeit formulas often feel gritty, watery, or overly sticky and frequently carry a heavy plastic or chemical odor.


> Because counterfeit cosmetics are unregulated and can cause allergic reactions or skin irritation, it is safest to avoid using this product.

> Debossed Box Border (Image C1): The front of the carton features a raised, rectangular inset frame stamped around the text. Genuine Rhode boxes have a completely smooth, flat front panel with clean text printing rather than an embossed outline.

❌ 

> Distorted Cruelty-Free Icon (Image C3): The bunny icon next to the 12M PAO symbol on the back of the box is a generic, warped silhouette instead of Rhode's official Leaping Bunny logo.

❌ 

> Text Ghosting on Tube (Image C5): The French translation line (**"BAUME À LÈVRES TEINTÉ AUX PEPTIDES"**) on the front of the plastic tube shows distinct shadow ghosting beneath the white letters, caused by misaligned double-printing.

❌ 

> Overly Bold Crimp Batch Stamp (Image C6): The batch code (116099) pressed into the end seal of the tube is exceptionally deep, thick, and large. Authentic Rhode tubes use a much finer, subtle font for batch stamp indents.

❌ 

> Misaligned Shade Label (Image C6): The shade name "ribbon" is printed off-center directly against the crimped edge, causing the text to fade out along the border.

❌ 

> Coarse Crimp Texture (Images C5 & C6): The vertical seal ridges on the flat end of the tube are rough and unevenly pressed, whereas authentic packaging features a smooth, uniform crimp.

❌ 



