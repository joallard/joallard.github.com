---
layout: post
title: "The Magic Numbered Boards"
date: 2012-09-24 16:28
comments: true
categories: education units-of-information math binary
---

My second grade teacher had a magic trick. She had a series of 
boards with some numbers written on it, usually from 1 to 40 or so.

The kids had to choose a number while the teacher wasn't looking 
(out in the hallway). She would then come back and ask the class if 
their number was on each board. After she went through all the 
boards, she would tell us the number. Magic!

For the second grader that I was, it was pretty impressive. After 
five boards or so, she knew. She must have had a damn good memory!

I suspected something was off. There had to be a trick. Of course, the
whole group though she must have been reading the erasures of the
black board we were writing the number on, or looking through the 
door window.  And they made damn sure she didn't. But this wasn't it.

Time after time, I observed and observed. And figured it out. When I 
asked to try at her place, I managed the same feat. The class was 
stunned.

The Experiment
--------------
Not counting computer science and math majors, can a 
college-educated adult, with or without a science background, crack 
the puzzle?

I've fashioned the following "boards" on scraps of paper:

    +-------------------+ +-------------------+ +-------------------+
    | Board  2          | | Board  1          | | Board  8          |
    +-------------------+ +-------------------+ +-------------------+
    |  2 14 15 11 18 19 | |  1  3 11 13 19 27 | |  8 10 12 14 15 26 |
    |  3  6  7 10 22 23 | | 15  5  9 21 33 29 | |  9 11 13 24 28 25 |
    | 26 27 30 31 34 35 | | 17  7 25 23 31 35 | | 30 31 40 41 27 29 |
    | 38 39 42 43 46 47 | |    47 39 53 45 37 | | 44 45 43 42 47 46 |
    | 50 51 54 55 58 59 | |       41 43 49 51 | |       56 57 59 63 |
    | 62 63             | |    63 55 61 57 59 | |       58 60 61 62 |
    +-------------------+ +-------------------+ +-------------------+

    +-------------------+ +-------------------+ +-------------------+
    | Board 32          | | Board  4          | | Board 16          |
    +-------------------+ +-------------------+ +-------------------+
    | 32 33 39 40 47 46 | |  4  5 12 13 20 21 | | 16 17 20 21 24 25 |
    | 37 34 38 41 48 45 | |  6  7 14 15 22 23 | | 18 19 22 23 26 27 |
    | 36 35 49 42 43 44 | | 28 29 36 37 44 45 | | 28 29 48 49 52 53 |
    | 52 51 50 56 57 58 | | 30 31 38 39 46 47 | | 30 31 50 51 54 55 |
    | 53 54 55 61 60 59 | | 52 53 60 61       | | 56 57 60 61       |
    |          62 63    | | 54 55 62 63       | | 58 59 62 63       |
    +-------------------+ +-------------------+ +-------------------+


I've had my housemates choose a number between 1 and 60. Then show
them each card successively and ask them if their number was there.
Half a second after we were done through the six cards, I would
tell them their number.

I made a point of hiding the cards before and after the trick, while
we were discussing, and to distract them a bit with some talking at
some points.

We discussed the trick afterwards, and in between runs.

Some of their observations:

### Test Subjects A and B: Mathieu and Gabrielle ###
Mathieu and Gabrielle are studying psychology at Université de Montréal.
They studied social science in Cegep.

* Does this have something to do with the thing you do with your hand?
  (I count to 31 on my hand, sometimes)
* 63 appears on all of the cards

### Test Subject C: Iké ###
Iké is studying environment at McGill University. He studied Pure 
Science in Cegep.

* To each card I say yes or no, so it's kind of like a 1 or 0 on each
  card. It's kind of a binary thing.


The Explanation
---------------
Strange thing: the boards aren't numbered sequentially. They were 
numbered 1, 2, 4, 8, 16, 32. What a strange sequence for numbering 
boards. Something was up.

There was still a mystery to me: how did she make those boards? 
Because they were clearly handmade.

What if somehow, those numbered meant something? What if they...
added up to the magical number? Exact.

My teacher was using the same logic as the one behind the binary
numeral system. Either the number is one a board, or it is not. With
each successive board, we go bit by bit. Each board represents a binary
digit (bit!) in the number. Over six boards, we could
select one number out of 64 (or 2^6 ).

In second grade, it was magic. Well, math-magic. It wasn't until I 
was much (much!) older, that I uncovered the link with 
combinatorics and binary, and thus solved the mystery. I interested 
myself to binary in a research project of our choice in secondary 
One (age 13), where I became acquainted with it for the first time. 
Had it not been for that, the educational system would have teached 
me those in [Cegep][CEGEP] (age 18), as part of my post-secondary 
Pure Science program.

But it shows how much of a fascinating world of numbers we just don't
teach to kids, however simple or natural it is.


[CEGEP]: http://en.wikipedia.org/wiki/CEGEP
