; From: https://github.com/sosy-lab/sv-benchmarks/blob/master/c/loops/terminator_03_true-unreach-call_true-termination.c

(set-logic LIA)

(synth-inv inv-f ((x Int) (y Int)))

(declare-primed-var x Int)
(declare-primed-var y Int)

(define-fun pre-f ((x Int) (y Int)) Bool
  (<= y 1000000))

(define-fun trans-f ((x Int) (y Int) (x! Int) (y! Int)) Bool
  (and (< x 100) (> y 0)
       (= x! (+ x y))
       (= y! y)))

(define-fun post-f ((x Int) (y Int)) Bool
  (=> (or (<= y 0) (and (> y 0) (>= x 100)))
      (or (<= y 0) (and (> y 0) (>= x 100)))))

(inv-constraint inv-f pre-f trans-f post-f)

(check-synth)
