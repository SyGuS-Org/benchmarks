(set-logic LIA)

(synth-inv inv-f ((a Int) (b Int) (res Int) (cnt Int)))

(define-fun pre-f ((a Int) (b Int) (res Int) (cnt Int)) Bool
    (and (<= a 1000000) (<= 0 b) (<= b 1000000) (= res a) (= cnt b)))
(define-fun trans-f ((a Int) (b Int) (res Int) (cnt Int) (a! Int) (b! Int) (res! Int) (cnt! Int)) Bool
    (and (> cnt 0) (= cnt! (- cnt 1)) (= res! (+ res 1)) (= a! a) (= b! b)))
(define-fun post-f ((a Int) (b Int) (res Int) (cnt Int)) Bool
    (or (> cnt 0) (= res (+ a b))))

(inv-constraint inv-f pre-f trans-f post-f)

(check-synth)

