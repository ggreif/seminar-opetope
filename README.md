Short Intro to Opetopes
===============


Seminar 2013-11-19


Origin
======

Baez and Dolan (_metatree_, _opetope_)

TQFTs

Many People
===========



Multitopes – Makkai

"positive-to-one computads" – Marek Zawadowski, arXiv http://arxiv.org/pdf/0708.2658.pdf
http://arxiv.org/pdf/1011.2374.pdf

Joachim Kock, et al. arXiv http://arxiv.org/pdf/0706.1033.pdf


Krzysztof Kapulkin

Eric Finster

Higher-dimensional Trees
========================

Polynomial functors (iterated construction)



Zooms and Complexes
===================

![A typical zoom](https://rawgithub.com/ggreif/seminar-opetope/master/zoom.svg)

Input data: rooted (planar) trees (the nth dimension)

Freely decorate with disks, adhering to rules:

 - disk must cut branch(es), but nothing else
 - every disk must capture a subtree

Translate to tree in the (n+1)th dimension

| Input  |   | Output  |
| -----: |:-:| :------ |
| branch | ⊣ |         |
| dot    | ⇒ | (unit) branch |
| disk   | ⇒ |  dot    |

Assembling the Complex
-----------------------

The trees have labelled branches and dots (without repetition)

Zooms can be joined when the trees match, forming a _zoom complex_.

Opetope
--------

A zoom complex with dimensions

| -1 | -2  | ... | _n_ |
| -: | :-: | --- | :-- |
| O  | (.) |     | . |

and a _corolla_ in the last dimension
is called an _opetope_.

Inductive Datatypes
===================

Finster gives [data type](http://sma.epfl.ch/~finster/opetope/types-and-opetopes.pdf#page=26) + *typechecker*

But [intrinsic definition](http://en.wikipedia.org/wiki/Simply_typed_lambda_calculus#Intrinsic_vs._extrinsic_interpretations)
of `Zoom`s is possible


Category of Opetopes
====================

Similarly defined as the category of singular complexes ∆

Morphisms are face maps

Identity morphism

Composition
===========

"pointer" tree to mark a unit branch

then graft

Substitution
============

mark an n-ary node, swap it for an n-ary tree

Coherence conditions
====================

Automatically "type-checked"


Can we Obtain Cartesian Closure?
=================

Tensor product on operads http://arxiv.org/pdf/math/0701293.pdf

Boardman-Vogt tensoring: http://arxiv.org/pdf/1302.3711.pdf

Operator categories: http://arxiv.org/pdf/1302.5756.pdf

Symmetric monoidal closed, yes, but cartesian?

 - Gambino and Joyal: http://www1.maths.leeds.ac.uk/~pmtng/Research/Lectures/gambino-bmc.pdf

Excursion: Lambda Calculus
==========================

Several notations, e.g. λ (with μ), [item notation (Kamareddine, Nederpelt)](http://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.15.6554)

let's come up with another one!

## (binary) search tree

## Abstraction / Binders

deBruijn + extra sauce

## References: Identification, glueing

glueing an input on a (constructor) application --> pattern matching

## Internal Hom
`(→)` is binary type constructor
 - profunctor (contra-/covariant)
 - Klein bottle (orientation-reversing)


## test

<script type="text/javascript" src="http://www1.chapman.edu/~jipsen/mathml/ASCIIMathML.js"></script>

x^2+y_1+z_12^34
$\frac{d}{dx}f(x)=\lim_{h\to 0}\frac{f(x+h)-f(x)}{h}$

Strata in Ωmega
===============

![Type strata](http://omega.googlecode.com/svn/wiki/Kind-hierarchy.svg)
