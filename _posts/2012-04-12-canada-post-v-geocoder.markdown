---
layout: post
title: "Canada Post v. Geocoder.ca"
date: 2012-04-12 00:01
comments: true
categories: canada-post postal-codes copyright freedom-of-information canada

---

It appears Canada Post [is suing][1] Geocoder.ca because it 
freely [disseminates][2] postal codes it has amassed on its own. 

No, amazingly, postal codes are not public domain in Canada. They 
appear to bear some sort of copyright held by Canada Post. If you want,
for example, to make a nice API so a website user, for example, has
only to type his postal code to have his adress almost all filled in, 
and in bonus the data being awesomely more consistent and error-free.

To do that, you either have to purchase the DB from Canada Post at an
awesome price of $5000, or have to figure out a solution on your own.
I learned today Geocoder.ca provides that kind of API.

<!-- more -->
I spent many hours trying to find a way to get to Canada Post's own API
(over its horrible Java site), or find my way screen-scraping them from
their odd webpage (horrible Java, bis).

Turns out, CPC (Canada Post, not another CPC that we know of) doesn't seem 
to like competition, so they sue Geocoder.ca in federal court for that.
The Canadian Internet Policy and Public Interest Clinic ([CIPPIC][4]), 
has apparently taken upon itself to represent Geocoder.ca before the
Federal court. Thanks to them.

If everyone --- stores, mail, apps, hell, even UPS --- uses postal 
codes, then why the hell is this still copyrighted and kept locked up
by Canada Post?

I have written a little something to my beloved public servants (and 
home-translated too, yay for canadian bilingualism!). Feel free to use
my words to describe your sentiments in a similar way.

(For more discussion, see the [comments][3] on Hacker News.)

> L'honorable Denis Lebel, ministre responsable de la Société canadienne
> des postes,
> 
> The honourable Steven John Fletcher, Minister of State (Transport), as
> assistant to M. Lebel on CPC matters,
> 
> The honourable James Moore, Minister of Heritage and Official Languages,
> 
> Charlie Angus, Official Opposition critic in the matters of Ethics,
> Access to Information, Privacy & Copyright and Digital Issues,
> 
> Pierre Dionne Labelle, porte-parole adjoint de l'opposition officielle,
> en matière du CRTC, de droits d'auteur, et de questions numériques,
> 
> (Version française plus bas)
> 
> Sirs,
> 
> It is with deep anger that I have learned today that the Canada Post
> Corporation was suing Geocoder.ca for providing postal codes freely on
> their website. Not only should never the CPC blackmail organizations for
> providing public interest information, but postal codes should be
> outright diffused as public domain. Postal codes are not the property of
> CPC, they are property of the taxpayers and citizens who have paid taxes
> for CPC to organize Canada into regions and so that system can be used
> by consumers, and corporations, big and small. Keeping postal codes
> locked up prevents efficient systems being put in place, prevent
> economies of scale, prevents competition, and prevents innovation.
> Postal codes have plenty of usages in our daily lives in Canada, often
> quick ways to summarize an address, such as finding a nearby branch of a
> local store, or even for a constituent to find their riding and MP. CPC
> suing Geocoder.ca and keeping that information private, and letting it
> be sold is a slap in the face to Canadians. I ask from you that you
> intervene to stop this litigation immediately, and free postal codes to
> Canadians without delay.
> 
> * * *
> 
> Messieurs,
> 
> C'est avec une colère profonde que j'ai appris aujourd'hui que la
> Société canadienne des postes poursuivait en justice Geocoder.ca pour
> avoir fournir des codes postaux librement sur leur site. Non seulement
> la SPC ne devrait jamais faire du chantage à des organisations pour
> avoir fourni de telles informations d'intérêt public, mais les codes
> postaux devraient carrément être diffusés dans le domaine public. Les
> codes postaux ne sont pas la propriété de la SPC, ils appartiennent aux
> contribuables et citoyens qui ont payé des impôts à la SPC pour
> organiser le Canada en différentes régions, et pour que ce système
> puisse servir aux consommateurs et compagnies, grandes et petites. De
> garder les codes postaux enfermés empêche des systèmes efficaces d'être
> mis en place, empêche les économies d'échelle, empêche la compétition,
> empêche l'innovation. Les codes postaux ont une foule d'usages dans nos
> vies quotidiennes au Canada, souvent des manières rapides d'indiquer une
> adresse, comme par exemple en trouvant une succursale d'une chaîne
> nationale, ou même pour un citoyen de trouver leur circonscription et
> député. La SPC poursuivant Geocoder.ca et gardant ces informations
> privées, et les laisser être vendues, sont une claque à la face des
> canadiens. Je vous demande d'intervenir pour cesser ce litige
> immédiatement, et pour libérer les codes postaux aux canadiens sans
> délai.
> 
> 
> Jonathan Allard  
> Montréal QC

[1]: http://geocoder.ca/?sued=1
[2]: http://geocoder.ca/?freedata=1
[3]: http://news.ycombinator.com/item?id=3830211
[4]: http://www.cippic.ca/en
