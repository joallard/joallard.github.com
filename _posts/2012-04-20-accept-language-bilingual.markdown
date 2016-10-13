---
layout: post
title: "Accept-language: Bilingual"
date: "2012-04-20 17:56"
comments: true
categories: http language i18n
published: true
---

I am fluent in two languages: being a Québecois, my mother tongue, 
French, and the language the internet had me learn, English. However, 
websites are served to me as if I wasn't.

I have indicated that to my browser, Firefox. French first, English 
second. Which in turn it indicates to all web servers when I request their
content.

The classic case: I visit a website in native English, that has been 
translated into French. The translation is adequate, but I prefer
the original version, as often translations aren't perfect. As I've 
encountered many sites of this breed, I switched my locale to English first, French
second, to be able to view English websites un-translated. So far so good.

The caveat: translations are rarely pefect. On the reverse, when I visit a 
website originally in French, that happens to have a translation
in English, I don't want the translation. I'm thinking of the [Government of Québec][gouv], for
instance. I always get the English page, even though it's a little ridiculous
for a francophone to get the Gov. of Québec's pages in English.

The thing about translation is that it's just that: translation. Most
resources are crafted in a certain language first, and then, translated, 
which will be adequate, sure, but often isn't exactly faithful
to the original version. In that sense, there is some 
*content degradation*.

How do I get rid of translations? How do I get the best content possible I can understand?

<!-- more -->

I hate translations. Okay, I don't hate translations, but I dislike 
them when they are presented to me instead of a language I am fluent in.

The lack of translations in The Sims, when I was younger, prompted me
to adapt and *learn English*. In the early 2000s, websites were mainly
English, and you had no choice but to learn it if you wanted to have
access to most material. Besides, the larger the (language) community 
is, the more extensive and more up-to-date the information will be,  
right? That's why I still use English to research knowledge even today.

But, as a site's userbase for foreign languages grows, it makes more sense to include
translations for its interface and content. What pretty much everyone started doing. 
But how does that translation reflect the original content?

What I want is pretty simple: I want the best content that I can understand.
I don't have an absolute priority for languages. The one I want not only
depends on the language I prefer, but also on the quality of the 
resource in that language, what we seem to be missing.

Browsers allow me to pick my languages. Not assign
quality values to them, like the HTTP spec would like us to do, but
merely rank them.

  1. English/Canada [en-ca]
  2. English/United States [en-us]
  3. English [en]
  4. French/Canada [fr-ca]

The resulting request locale:

    en-ca,en-us;q=0.8,en;q=0.5,fr-ca;q=0.3


[RFC 2616], the (beloved) specification for HTTP/1.1, defines how 
browser preferences (request headers) can ask for content in a language clients can understand.

In HTTP terms, that would mean "send me `en-ca` if you have it, then `en-us`" and so on.
However, to take back that government example, sending me `en-ca` doesn't really make
sense if the site was first and foremost in `fr-ca`, and then translated into English,
to which there might be some material or sections missing.

How should we deal with the problem?

### Content negotiation
A good beginning is how HTTP deals with content formats (eg. mp3 vs. wav). 
File formats are analogous to languages. They are representations of the same 
content, which can vary in quality rating.

The **`Accept`** header is used for content-negotiation,
to determine in what format (media type, language, ...) the user wants
their resource. Content negotiation is meant to determine which format the 
client would accept at what quality.

> Each media-range MAY be followed by one or more accept-params, 
> beginning with the `q` parameter for indicating a relative quality 
> factor. The first `q` parameter (if any) separates the media-range 
> parameter(s) from the accept-params. Quality factors allow the user 
> or user agent to indicate the relative degree of preference for that
> media-range, using the qvalue scale from 0 to 1 (section 3.9). The 
> default value is `q=1`.
> 
> [...] The example
>
>       Accept: audio/* ; q=0.2, audio/basic
>
> SHOULD be interpreted as "I prefer audio/basic, but send me any audio 
> type if it is the best available after an 80% mark-down in quality."

It is asking clients to identify which contents are *acceptable* after a 
mark-down in quality. In other terms, it is asking clients to identify in a 
binary fashion, is such a format at such a quantity is acceptable.

There is no optimization suggested, only a binary test of if the content is acceptable. Which is a limited tool. 

But further, in practice, content negotiation, 
in today's web applications, often 
only happens in a shortcut way where the only 
thing taken into account is the ranking of languages. The app algorithm just goes on to serve the first language it has available in the client ranking, and then, if no suitable language is found, just gives the default.

Or, from another
perspective, all language contents have the same quality. If you do make
this assumption, negotiation becomes trivial.

## Content appreciation
I suggest a new metric: content appreciation.

I can understand French perfectly, English almost so, and some amount of
Spanish.

    Accept-language: fr; q=1, en; q=0.95, es; q=0.4

Here is this website, that was originally designed in English, but also
offers French and Spanish translations, among others.

    Content: en; q=1, fr; q=0.7, es; q=0.7

Right now, a server would say: "They prefer French first. I have French.
They'll have that."

And yes, the content would be *acceptable*. But would I appreciate it 
the most? No. 

Our objective should be to give the client, not the one acceptable, but
the format they will appreciate the most.

    content appreciation = format comprehension * format quality
    
    Content-appreciation: en: 0.95, fr: 0.7, es: 0.28
    
Hence, the server should serve me English.

Taking back our Government of Québec example,

    Content: fr; q=1, en; q=0.7
    
    Content-appreciation: fr: 1, en: 0.66
    
Which I'd receive in the original français.

Now, the only thing remaining is to implement that into every web server.

*Revision 2 · October 2016*

[gouv]: http://www.gouv.qc.ca/
[RFC 2616]: http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.4
