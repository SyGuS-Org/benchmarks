; From: http://www.cmi.ac.in/~madhukar/fmcad15/benchmarks/dagger/bk-nat.c

(set-logic LIA)

(synth-inv inv-f ((invalid Int) (unowned Int) (nonexclusive Int) (exclusive Int) (RETURN Int)))

(declare-primed-var invalid Int)
(declare-primed-var unowned Int)
(declare-primed-var nonexclusive Int)
(declare-primed-var exclusive Int)
(declare-primed-var RETURN Int)

(define-fun pre-f ((invalid Int) (unowned Int) (nonexclusive Int) (exclusive Int) (RETURN Int)) Bool
  (and (ite (>= invalid 1) (= RETURN 0) (= RETURN 1))
       (ite (= unowned 0) (= RETURN 0) (= RETURN 1))
       (ite (= nonexclusive 0) (= RETURN 0) (= RETURN 1))
       (ite (= exclusive 0) (= RETURN 0) (= RETURN 1))))

(define-fun trans-f ((invalid Int) (unowned Int) (nonexclusive Int) (exclusive Int) (RETURN Int)
                     (invalid! Int) (unowned! Int) (nonexclusive! Int) (exclusive! Int) (RETURN! Int)) Bool
  (or (and (ite (not (>= invalid 1)) (= RETURN! 1) (= RETURN! RETURN))
           (= nonexclusive! (+ nonexclusive exclusive))
           (= exclusive! 0)
           (= invalid! (- invalid 1))
           (= unowned! (+ unowned 1)))
      (and (ite (not (>= (+ nonexclusive unowned) 1)) (= RETURN! 1) (= RETURN! RETURN))
           (= nonexclusive! 0)
           (= exclusive! (+ exclusive 1))
           (= invalid! (- (+ invalid unowned nonexclusive) 1))
           (= unowned! 0))
      (and (ite (not (>= invalid 1)) (= RETURN! 1)  (= RETURN! RETURN))
           (= nonexclusive! 0)
           (= exclusive! 1)
           (= invalid! (- (+ invalid unowned! exclusive! nonexclusive!) 1))
           (= unowned! 0))))

(define-fun post-f ((invalid Int) (unowned Int) (nonexclusive Int) (exclusive Int) (RETURN Int)) Bool
  (=> (= RETURN 0)
      (and (>= exclusive 0)
           (>= nonexclusive 0)
           (>= unowned 0)
           (>= invalid 0 )
           (>= (+ invalid unowned exclusive) 1))))

(inv-constraint inv-f pre-f trans-f post-f)

(check-synth)
