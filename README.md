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

Mid-1990'es by Baez and Dolan (_metatree_, _opetope_), published as [arXiv:q-alg/9702014](http://arxiv.org/pdf/q-alg/9702014.pdf).

TQFTs [arXiv:q-alg/9503002](http://arxiv.org/pdf/q-alg/9503002.pdf)

Many People
===========

Various researchers/groups contributed since, and similar concepts go by a multitude of names

 - Multitopes – Hermida, Makkai
 - Opetopes – Eugenia Cheng (e.g. [arXiv:math/0304284](http://arxiv.org/pdf/math/0304284.pdf))
 - "positive-to-one computads" – Marek Zawadowski, [arXiv:0708.2658](http://arxiv.org/pdf/0708.2658.pdf)
 - Szawiel, Marek Zawadowski	[arXiv:1011.2374](http://arxiv.org/pdf/1011.2374.pdf)
 - Joachim Kock, _et al_. [arXiv:0706.1033](http://arxiv.org/pdf/0706.1033.pdf)

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

_Note:_ These complexes form a [semicategory](http://ncatlab.org/nlab/show/semicategory),
as there are input trees not admitting an identity zoom (e.g. unit tree, most corollas).


Opetope
--------

A zoom complex with dimensions

| -2 | -1  | … | _n+1_ |
|---:|:---:|---|:--|
| O  | (.) |   | . |

and a _corolla_ appearing in the last dimension
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

 - Morphisms are face maps (corresponding to each 'round-ish thing')

 - Identity morphism (the top cell)

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

Let's have a _formal language_ whose 'terms' are pasting diagrams.

We (say) start out with a set of basic opetopes (_axioms_).

What are the _deduction rules_ to create new ones?

<img src="http://latex.codecogs.com/svg.latex?\mathbf{Set}^\mathcal{O}\rightarrow\mathbf{Cat}^\mathcal{O}" border="0"/>

Empty rule
-----------

From any opetope one can derive an empty pasting diagram one dimension up.

[See the corolla zoom](#special-case-corolla). It only shows the highest-dimensional
zoom, but that is ok as nothing below changes.

Paste rule
-----------

Given _n_ pasting diagrams and a cell (corolla) with _n_ branches

 - such that the target cells of the pasting diagrams match the (input) branches
 - then a bigger pasting diagram can be created

[See pointer guided composition](#composition), which is the atomic operation underlying this rule.

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

![Lambda Graph](https://omega.googlecode.com/svn/wiki/LambdaGraph.svg)

## (Binary) search tree

We start with a lambda term
<img src="http://latex.codecogs.com/svg.latex?(\lambda x.xx)(\lambda x.xx)" border="0"/>

Respecting scope we build a search tree and retrofit it with references

![Y combinator](https://rawgithub.com/ggreif/seminar-opetope/master/y-comb.svg)

Kind for shapes
``` haskell
kind Sh = Ap Sh Sh | Lm Sh | Rf Ref
kind Ref = Up Ref | Stop | Left Ref | Right Ref | Down Ref
```

Abstraction / Binders
======================

Key insight: Trees admit naturals

![Glue input](https://rawgithub.com/ggreif/seminar-opetope/master/glue-downstream.svg)

But we need _deBruijn_ + _extra sauce_

![Docking stations](https://rawgithub.com/ggreif/seminar-opetope/master/docking-stations.svg)


References: Identification, gluing
===================================

![References](https://rawgithub.com/ggreif/seminar-opetope/master/references.svg)

 - gluing an input on a (constructor) application ⟶ pattern matching
 - … means: "application dot" here
 - gluing inputs _vanish_ from application dot
 - n-ary application possible? semantics?

Beta-reduction
===============

When a selected external branch is _saturated_ by application,
it completely dissolves, and the addressed binding station
gets glued to the argument.

Depending on the intended reduction strategy the _use_ references
may be expanded (_unsharing_).

Internal Hom
=============

`(→)` is binary type constructor
 - profunctor (contra-/covariant)
 - Klein bottle (orientation-reversing)


Strata in Ωmega
================

![Type strata](http://omega.googlecode.com/svn/wiki/Kind-hierarchy.svg)

Singleton Types in Haskell
---------------------------

Kind promotion

![Nat'](https://rawgithub.com/ggreif/seminar-opetope/master/haskell-nats.svg)

``` haskell
data {- kind -} Nat = Z | S Nat

data Nat' :: Nat -> * where
  Z' :: Nat' Z
  S' :: Nat' n -> Nat' (S n)
```

Singleton Types in Ωmega
---------------------------

Kind definitions possible (at any level)

![Ωmega's Nat'](https://rawgithub.com/ggreif/seminar-opetope/master/omega-nats.svg)

``` haskell
kind Nat = Z | S Nat

data Nat' :: Nat ~> * where
  Z' :: Nat' Z
  S' :: Nat' n -> Nat' (S n)
```

Level Polymorphism
-------------------

``` haskell
data Nat :: level k . *k where
  Z :: Nat
  S :: Nat ~> Nat
```

![Ωmega's level polymorphism](https://rawgithub.com/ggreif/seminar-opetope/master/omega-levels.svg)

Can we please have Curry-Howard back?
--------------------------------------

C-H lost as level-polymorphic type `Nat` above has no type parameter/index!

Idea: parametrize with the same thing, but from one level up...

Unfortunately this is not working out :-(

I tried:

![A failure](https://rawgithub.com/ggreif/seminar-opetope/master/singleton-levels.svg)

For a few levels (each differently named) [it can be made](https://code.google.com/p/omega/wiki/AutoLevelled#%CE%A9mega_example_for_%E2%80%B9%E2%80%B9Pat%E2%80%BA%E2%80%BA).

Next idea
----------

parametrize on the **left**. Make access to parameter _optional_.

these all mean the same thing:
``` haskell
S Z :: Nat
S Z :: S Z ° Nat
S Z :: (S Z :: Nat) ° Nat
S Z :: (S Z :: S Z ° Nat) ° Nat
```

Ad infinitum, coinductively.

_Programming in the Sky_
-------------------------

Program in the (co)limit. Write a very simple `data` definition

``` haskell
data Nat = Z | S Nat
```

… but have the refinement structure available when wanting to
state type-level propositions.

Conclusion
===========

 1. Opetopic calculus is rich and very interesting
 2. It appears to be a solid basis for stratified type systems
 3. Cartesian closure not completely understood yet

Questions?
===========

Thanks for your attention!

Btw. I am looking for collaborators
 1. to make these ideas precise
 2. kick-start an initial implementation.
