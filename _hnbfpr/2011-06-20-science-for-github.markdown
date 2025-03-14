---
layout: post
title:  "Science for GitHub"
date:   2011-06-20 12:48:52 -0800
---

My friend and former labmate [Marcio von Muhlen](http://marciovm.com/) recently wrote a thought-provoking piece on [why we need a Github of science](http://marciovm.com/i-want-a-github-of-science). My take on his central argument: our centuries-old system of for-profit academic journals and peer review could be vastly improved if it included aspects of modern Open Source software publishing tools like Github. For example, instead of relying on the opinion of two or three anonymous (and possibly unqualified) referees to determine whether my research belongs in a high-impact journal, I could post my paper on the "Github of science" and the entire community of my peers could weigh in on its strengths and weaknesses. Like quality hits in a Google search, well-regarded research rises to the top and is rewarded by additional visibility, and weaker research sinks to the bottom. Marcio's piece was the subject of an [enthusiastic discussion on Hacker News](https://news.ycombinator.com/item?id=2425823).

I've been thinking about a backwards approach to Marcio's argument: instead of adding aspects of Github to science publishing, what would happen if we added aspects of the current science publishing system to Github? How horribly broken would Github become if we recast it in the image of Reed-Elsevier, Springer, John Wiley and Sons, and the rest of the for-profit scientific publishing companies?

<!--more-->

First, we would need to put some locks on the doors. Access to our new Github is only available to subscribers, and it isn't cheap. If your school or employer doesn't pay for access, you're probably out of luck. If you're an unemployed coder using Github to learn a trendy new programming language, or a hobbyist coder interested in contributing to a project on Github, you're not welcome anymore.

Actually, it's a little more complicated than that. There's one subscription for Github Ruby, another subscription for Github Python, another subscription for Github Java, and so on. If you have a Github C subscription but you'd like to browse Github C++, get your credit card out.

There's another complication: each Github subject actually has two tiers, the Best tier and the Everything Else tier. For example, the Best Python tier is assumed to have the highest-quality Python code, and access to this tier is priced accordingly. In contrast, the Everything Else Python tier is cheaper, but its code suffers from the stigma that it isn't good enough for the Best tier.

One last complication: the lower tier, Everything Else, is actually fractured into hundreds of special-interest subdivisions. So if you're looking for Python code, it might be in the Python Code for Making Sense of Time Zones Github subdivision, or the Python Quines in Limerick Format subdivision, or the Python Programs for Drawing Trippy Fractals subdivision, or many others. Each special-interest subdivision is, of course, a separate subscription to pay for.

In reality, code of all levels of quality is scattered across both tiers of Github. There are incredibly useful Ruby gems buried in obscure subdivisions of the Everything Else tier, and C code that won't even compile featured prominently in the Best tier. But it's nearly impossible to find the good code in the hundreds of subdivisions of the Everything Else tier, so most folks don't even try. Instead they just subscribe to the Best tier and assume that it contains the best code for their particular language.

That's all you need to know to subscribe to our new Github. If you want to contribute code to Github, you'll need to know a little more.

I'm sure you'll want your code to appear in the Best tier of your relevant language, not the Everything Else tier. But since Github can't just put everything into the Best tier, they use the following process to determine which tier your project belongs in:

First, the management of the Best tier decides whether your code is even worth sending out for review. Since the management of the Best tier receives hundreds of submissions every month but accepts only a few, they can afford to be choosy about what they accept. If the management deems your code unsuitable for any reason -- maybe your chosen programming language is passé, or you defined a named function when you could have used a nice anonymous one -- then sorry, better luck next time.

If your code is lucky enough to clear this first hurdle, the management sends it out to two or three other coders for review. The coders receive only the code you're submitting, and no other information about code you reference in your code, or other code you've written in the past, or similar code that others may have written. If they want that background information, they'll have to get it themselves -- hopefully they have the right Github subscriptions!

You won't know which two or three developers are reviewing your work. Your killer Python code may be reviewed by someone who's proficient in Python, or you might get a wizened old COBOL master, or a Haskell zealot, or a Ruby evangelist. Even though the internet is littered with flamewars between coders who each passionately believe that their favorite language is the best, we somehow believe that these same coders will assess your project fairly.

After waiting about a month (you’ve got a day job, right?), you'll receive a report on your code from the two or three developers. They may accept your code into the Best tier, or they may give you a list of things to fix with your code before it can be accepted, or (most likely) they may just say no thanks. In that case, you can try for the Everything Else tier.

When you submit your Python code to the Everything Else Python tier of Github, the above process repeats itself, with an important difference: you'll have to decide which one of the hundreds of different special-interest Python subdivisions to send your code to. Choose carefully -- each subdivision you try for will take about a month to get back to you, and submitting to two or more subdivisions at the same time is strictly forbidden.

If your code is accepted to your chosen subdivision of the Everything Else Python tier of Github, congratulations! Your code will be read by the small community of Python coders who share your specific interests and have purchased the relevant subscription, and no one else.

If the Everything else tier says no, then regardless of how good or original or useful or valuable your code may or may not be, Github will have nothing to do with it. You can either put your code on your website and hope that Google finds it, or retire your code to the obscurity of your hard drive.

Finally, what if you want to contribute to code already on Github? On our new Github that's virtually impossible. You can't fork someone else's code because Github owns the copyright on it -- the author had to give their copyright rights to Github before their code was accepted. You can’t even edit your own code after it's accepted, although if you find a bug in your accepted code, you can submit a bug report that'll appear alongside your (uncorrected) code on Github.

Anyone interested in submitting their code to this bizarro-world version of Github? I really doubt it. Coders have rightly grown accustomed to the efficient collaboration, distributed code reviewing, centralized record of a coder’s accomplishments, and other features that tools like Github provide. But the bizarro-world Github I described is the real world in which biologists, chemists, and other scientists share their research and build their reputations.

Peer review is undeniably important, and our reverence for it is a big reason why we are still using a centuries-old paradigm for publishing our research. But Github processes vastly more content than conventional journals do, without editors or conventional peer review, and yet the best code (and the best coders) still manage to receive the exposure they deserve on Github. Fellow scientists, could we do the same?
