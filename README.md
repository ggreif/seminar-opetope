Short Intro to Opetopes
===============


Seminar 2013-11-19

My goals:
 1. form an intuition of opetopic sets
 2. sketch a calculus of (string) diagrams
 3. discuss missing the piece of cartesian closure
 4. potential applications to Ωmega 2.0


Origin
======

Mid 1990'es by Baez and Dolan (_metatree_, _opetope_), published as [arXiv:q-alg/9702014](http://arxiv.org/pdf/q-alg/9702014.pdf).

TQFTs [arXiv:q-alg/9503002](http://arxiv.org/pdf/q-alg/9503002.pdf)

Many People
===========

Various researchers/groups contributed since, and similar concepts go by a multitude of names

 - Multitopes – Hermida, Makkai
 - Opetopes – Eugenia Cheng (e.g. [arXiv:math/0304284](http://arxiv.org/pdf/math/0304284.pdf))
 - "positive-to-one computads" – Marek Zawadowski, [arXiv:0708.2658](http://arxiv.org/pdf/0708.2658.pdf)
 - Szawiel, Marek Zawadowski	[arXiv:1011.2374](http://arxiv.org/pdf/1011.2374.pdf)
 - Joachim Kock, et al. [arXiv:0706.1033](http://arxiv.org/pdf/0706.1033.pdf)

At IAS:

 - Krzysztof Kapulkin
 - Eric Finster

Higher-dimensional Trees
========================

Polynomial functors and monads (iterated construction)



Zooms and Complexes
===================

We define _zooms_ as  configurable 'tree transformers'.

Then we compose zooms to compexes, subject to boundary conditions.

Zoom definition
----------------

![A typical zoom](https://rawgithub.com/ggreif/seminar-opetope/master/zoom.svg)

Input data: finite rooted (planar) trees (the nth dimension)

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

![Labelled zoom](https://rawgithub.com/ggreif/seminar-opetope/master/labelled-zoom.svg)

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
of `Zoom`s [is possible](https://code.google.com/p/omega/source/browse/trunk/tests/Opetope.prg).


Category of Opetopes
====================

Similarly defined as the category of singular complexes ∆

Morphisms are face maps

Identity morphism

Pointers
---------

To _mark_ (e.g.) a dot in a tree we use trees that only have one unit branch

![A pointer](https://rawgithub.com/ggreif/seminar-opetope/master/pointer.svg)

Composition
------------

"pointer" tree to mark a unit branch

then graft

Substitution
-------------

Mark an n-ary node (or disk), swap it for an n-ary tree

![Substitute](https://rawgithub.com/ggreif/seminar-opetope/master/substitution.svg)

Analogous to monadic _bind_.

Geometric Realization
======================

As _pasting diagrams_.

![Pasting diagram](https://rawgithub.com/ggreif/seminar-opetope/master/pasting-diagram.svg)


[As _string diagrams_](http://www-bcf.usc.edu/~lauda/xy/stringtutorial) (dual to the above).

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

Paste rule
-----------

Composite rule
---------------

Universal cell introduction
----------------------------

Universal cell elimination
---------------------------

Similar to the [J-rule](http://homotopytypetheory.org/2011/04/10/just-kidding-understanding-identity-elimination-in-homotopy-type-theory/)

![The power of the universal cell](http://images.amazon.com/images/G/01/dvd/cinderella-pumpkin-large.jpg)

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

let's come up with another one! (…see also Zena Ariola…)

## (Binary) search tree

## Abstraction / Binders

deBruijn + extra sauce

## References: Identification, gluing

glueing an input on a (constructor) application --> pattern matching

## Internal Hom
`(→)` is binary type constructor
 - profunctor (contra-/covariant)
 - Klein bottle (orientation-reversing)


## test

<script type="text/javascript" src="http://www1.chapman.edu/~jipsen/mathml/ASCIIMathML.js"></script>

<img src="http://latex.codecogs.com/svg.latex?\frac{d}{dx}f(x)=\lim_{h \to 0}\frac{f(x+h)-f(x)}{h}" border="0"/>

<img src="http://latex.codecogs.com/svg.latex?\mathbf{Set}^\mathcal{O}\rightarrow\mathbf{Cat}^\mathcal{O}" border="0"/>

![MathML test](https://rawgithub.com/ggreif/seminar-opetope/master/mathml.svg)

Strata in Ωmega
===============

![Type strata](http://omega.googlecode.com/svn/wiki/Kind-hierarchy.svg)

Singleton Types in Haskell
---------------------------

Kind promotion

![Nat'](https://rawgithub.com/ggreif/seminar-opetope/master/haskell-nats.svg)

_Programming in the Sky_
-------------------------

Questions?
===========

Thanks for your attention!
