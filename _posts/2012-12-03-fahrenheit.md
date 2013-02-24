---
layout: post
title: "Mentally Converting Fahrenheit to Celsius (better)"
date: 2012-12-03 10:48
comments: true
categories: 
---

Many people know the trick to convert from F to C mentally:

    (F-32) ÷ 2
    
However, the accurate formula being multiplying by 5/9 instead of 1/2
(or 5/10), 

    (F-32) × 5/9

we introduce a relative error of 10% (we arrive at 10% below
our real figure).

To compensate, we could multiply by 10/9 (1.111...), but dividing by 
9 isn't so convenient. We can however appoximate this to 11/10 
(which is 1.1, vs. 1.1111...). 

So really all you have to do, is after your division by 2, add 10% 
of the result to itself. We then end up at 99% of our real figure, 
undershooting by 1% only. Nice improvement over our 10%-error 
estimation.

    (F-32) ÷ 2 * (1 + 1/10)
    
So if we have 72°F:

    72 - 32         = 40
    40 ÷ 2          = 20
    10% × 20        = 2
    20 + (10% × 20) = 22


About 22°C, the real figure being 22.2°C (much better than our initial
20°C estimation!)
