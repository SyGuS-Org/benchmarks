(set-logic LIA)

(synth-inv inv-f ((i Int) (n Int) (a Int) (b Int)))

(define-fun pre-f ((i Int) (n Int) (a Int) (b Int)) Bool
    (and (= i 0) (and (= a 0) (and (= b 0) (>= n 0)))))
(define-fun trans-f ((i Int) (n Int) (a Int) (b Int) (i! Int) (n! Int) (a! Int) (b! Int)) Bool
    (or (and (< i n) (and (= i! (+ i 1)) (and (= a! (+ a 1)) (= b! (+ b 2))))) (or (and (< i n) (and (= i! (+ i 1)) (and (= a! (+ a 2)) (= b! (+ b 1))))) (and (>= i n) (and (= i! i) (and (= a! a) (= b! b)))))))
(define-fun post-f ((i Int) (n Int) (a Int) (b Int)) Bool
    (=> (not (< i n)) (= (+ a b) (+ (+ n n) n))))

(inv-constraint inv-f pre-f trans-f post-f)

(check-synth)

