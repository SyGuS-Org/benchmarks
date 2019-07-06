; From: https://github.com/sosy-lab/sv-benchmarks/blob/master/c/loop-lit/jm2006_true-unreach-call_true-termination.c

(set-logic LIA)

(synth-inv inv-f ((i Int) (j Int) (x Int) (y Int)))

(declare-primed-var i Int)
(declare-primed-var j Int)
(declare-primed-var x Int)
(declare-primed-var y Int)

(define-fun pre-f ((i Int) (j Int) (x Int) (y Int)) Bool
  (and (>= i 0) (>= j 0)
       (= x i) (= y j)))

(define-fun trans-f ((i Int) (j Int) (x Int) (y Int)
                     (i! Int) (j! Int) (x! Int) (y! Int)) Bool
  (and (not (= x 0))
       (= i! i) (= j! j)
       (= x! (- x 1))
       (= y! (- y 1))))

(define-fun post-f ((i Int) (j Int) (x Int) (y Int)) Bool
  (or (not (= x 0)) (=> (= i j) (= y 0))))

(inv-constraint inv-f pre-f trans-f post-f)

(check-synth)
