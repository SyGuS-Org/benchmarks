; Adapted from ex20 from NECLA Static Analysis Benchmarks

(set-logic LIA)

(synth-inv inv-f ((x Int) (y Int) (i Int) (j Int)))

(declare-primed-var x Int)
(declare-primed-var y Int)
(declare-primed-var i Int)
(declare-primed-var j Int)

(define-fun pre-f ((x Int) (y Int) (i Int) (j Int)) Bool
  (and (= j 0) (and (= i 0) (or (= y 1) (= y 2)))))

(define-fun trans-f ((x Int) (y Int) (i Int) (j Int)
                     (x! Int) (y! Int) (i! Int) (j! Int)) Bool
  (and (<= i x) (and (= x! x) (and (= y! y)
                (and (= i! (+ i 1)) (= j! (+ j y)))))))

(define-fun post-f ((x Int) (y Int) (i Int) (j Int)) Bool
  (or (<= i x) (or (not (= y 1)) (= i j))))

(inv-constraint inv-f pre-f trans-f post-f)

(check-synth)