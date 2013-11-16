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

We define _zooms_ as  configurable 'tree transformers'.

Then we compose zooms to compexes, subject to boundary conditions.

Zoom definition
----------------

![A typical zoom](https://rawgithub.com/ggreif/seminar-opetope/master/zoom.svg)

Input data: rooted (planar) trees (the nth dimension)

Freely decorate with disks, adhering to rules:

 - disk must cut branch(es), but nothing else
 - every disk must capture a subtree

Input-to-output translation
----------------------------

[Just change the perspective!](https://github.com/ggreif/seminar-opetope/blob/master/opetope2.stl)

Translate to tree in the (n+1)th dimension

| Input  |   | Output  |
| -----: |:-:| :------ |
| branch | ⊣ |         |
| dot    | ⇒ | (unit) branch |
| disk   | ⇒ |  dot    |

Special case: _corolla_
------------------------

A _corolla_ is a special zoom with just one dot in the left tree and no disks.

![A corolla](https://rawgithub.com/ggreif/seminar-opetope/master/corolla.svg)

The output tree is thus a _unit branch_:

![Corolla in zoom view](https://rawgithub.com/ggreif/seminar-opetope/master/corolla-zoom.svg)


Assembling the complex
-----------------------

The trees have labelled branches and dots (without repetition)

Zooms can be joined when the trees match, forming a _zoom complex_.

![Formed complex](https://rawgithub.com/ggreif/seminar-opetope/master/zoom-complex.svg)


Opetope
--------

A zoom complex with dimensions

| -2 | -1  | … | _n+1_ |
|---:|:---:|---|:--|
| O  | (.) |   | . |

and a _corolla_ in the last dimension
is called an _opetope_.

Opetopes are normally drawn starting with dimension 0.

 * a 0-dimensional opetope is (isomorphic to) a natural number
 * the zoom in dimension 1 has a planar tree input

[You can construct opetopes interactively.](http://sma.epfl.ch/~finster/opetope/opetope.html)

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


Deductions (following Finster)
===============================

Let's have a  _formal language_ whose 'terms' are pasting diagrams.

We (say) start out with a set of basic opetopes (_axioms_).

What are the _deduction rules_ to create new ones?

Empty rule
-----------

Composite rule
---------------

Universal cell introduction
----------------------------

Universal cell elimination
---------------------------

Similar to the [J-rule](http://homotopytypetheory.org/2011/04/10/just-kidding-understanding-identity-elimination-in-homotopy-type-theory/)


Can we Obtain Cartesian Closure?
=================================

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
