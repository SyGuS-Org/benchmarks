# SyGuS Benchmarks

This repository contains all the public benchmarks for the [SyGuS](http://sygus.org/) competition.

**NOTE**: There may be errors and/or duplicates among the benchmarks!
We are working on automating the checking and deduplication of our benchmarks.
However, as of now, this process is largely manual.
We would love it if you could file a [bug report](https://github.com/SyGuS-Org/benchmarks/issues)
whenever you discover something like this.

The benchmarks in `lib` use SyGuS-IF 2 syntax over SMT-LIB 2.7.
They are checked with `cvc5 --parse-only --strict-parsing`; see
"Known deviations" below for the remaining exceptions.

## Directory Structure

```
.
|--comp                     < the "official" SyGuS-Comp benchmarks
|   |-- 2017
:   :
|   `-- 20XX
|
`-- lib                     < latest snapshot of all benchmarks
    |-- X_Track             < benchmarks within the restrictions of track X
    :
    |-- Y_Track
    |
    |-- agent_problems      < families that do not belong to any competition track
    `-- arrays_and_quantifiers
```

Not every benchmark under a `X_Track` directory conforms to that track's own
restrictions; some subdirectories were merged in from the former
`lib-nonconforming` tree. In particular:

* `Inv_Track/andrew_lustre` contains `LIRA` and `UF` benchmarks, and
  `Inv_Track/cegist-cav18` contains `BV` benchmarks, whereas the invariant
  track itself is restricted to `LIA`.
* `General_Track/uclid5` and `arrays_and_quantifiers` use arrays and
  quantifiers, which no track admits.

## Notes on the 2.7 conversion

SyGuS-IF 2 grammar terms are `(Constant Sort)`, `(Variable Sort)` and plain
applications, so the `let` terms that older grammars used were eliminated by
substituting each bound variable with the term it was bound to. This is exact
wherever a bound variable occurred at most once. In the six
`General_Track/from_2018/logcount*.sl` sketches a variable occurred twice, so
the let was expressing sharing that a context-free grammar cannot express;
inlining there yields a strictly larger grammar that still contains every term
the original could produce.

## Known deviations

* `General_Track/uclid5/dining-philosophers-no-deadlock-system-{assign,if}-{1,2}.ucl.sl`
  use `(as const (Array ...))` for constant arrays. This is a widely
  implemented extension rather than standard SMT-LIB, and there is no
  term-level replacement for it.
* 20 invariant benchmarks are unsatisfiable because their precondition does
  not imply their postcondition, so no invariant can exist regardless of the
  grammar: 9 in `Inv_Track/xujie_code2inv`, 6 in `Inv_Track/cegist-cav18` and
  5 in `Inv_Track/from_2018`. `agent_problems/taxi/taxi_{dropoff,pickup}1.sy`
  are likewise reported infeasible by cvc5.
