; From "Path Invariants" PLDI 07 by Beyer et al.

(set-logic LIA)

(synth-inv inv-f ((x Int) (y Int) (i Int) (n Int)))

(declare-primed-var x Int)
(declare-primed-var y Int)
(declare-primed-var i Int)
(declare-primed-var n Int)

(define-fun pre-f ((x Int) (y Int) (i Int) (n Int)) Bool
  (and (>= n 0) (and (= i 0) (and (= x 0) (= y 0)))))

(define-fun trans-f ((x Int) (y Int) (i Int) (n Int)
                     (x! Int) (y! Int) (i! Int) (n! Int)) Bool
  (and (= n! n) (and (< i n)
                     (and (= i! (+ i 1))
                          (or (and (= x! (+ x 1)) (= y! (+ y 2)))
                              (and (= x! (+ x 2)) (= y! (+ y 1))))))))

(define-fun post-f ((x Int) (y Int) (i Int) (n Int)) Bool
  (or (< i n) (= (* 3 n) (+ x y))))

(inv-constraint inv-f pre-f trans-f post-f)

(check-synth)