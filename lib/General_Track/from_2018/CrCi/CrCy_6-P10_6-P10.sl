(set-logic LIA)

(define-fun Spec ((k1 Bool) (k2 Bool) (k3 Bool) (k4 Bool)) Int
    (+ (ite (xor (xor k2 (xor k3 (xor k4 (and k2 (and k3 k4))))) (xor k1 (xor (and k1 k3) (xor (and k2 k3) (and k1 (and k2 k3)))))) 1 0) (+ (ite (xor (and k2 k1) (xor (and k3 k1) (xor (and k3 k2) (xor k4 (xor (and k1 (and k2 k4)) (and k2 k4)))))) 2 0) (+ (ite (xor (and k1 k2) (xor k3 (xor (and k1 k3) (xor k4 (xor (and k1 k4) (and k1 (and k3 k4))))))) 4 0) (ite (xor (xor k2 (xor k3 (xor k4 (and k2 (and k3 k4))))) (xor (and k1 k4) (xor (and k2 k4) (and k3 k4)))) 8 0)))))
(synth-fun Imp ((k1 Bool) (k2 Bool) (k3 Bool) (k4 Bool)) Int
    ((Start Int) (d0 Bool) (d1 Bool) (d2 Bool) (d3 Bool) (d4 Bool) (d5 Bool) (d6 Bool))
    ((Start Int ((+ (ite d0 1 0) (+ (ite d0 2 0) (+ (ite d0 4 0) (ite d0 8 0))))))
    (d0 Bool ((and d1 d1) (or d1 d1) (xor d1 d1) (not d1)))
    (d1 Bool ((and d2 d2) (or d2 d2) (xor d2 d2) (not d2)))
    (d2 Bool ((and d3 d3) (or d3 d3) (xor d3 d3) (not d3)))
    (d3 Bool ((and d4 d4) (or d4 d4) (xor d4 d4) (not d4)))
    (d4 Bool ((and d5 d5) (or d5 d5) (xor d5 d5) (not d5)))
    (d5 Bool ((and d6 d6) (or d6 d6) (xor d6 d6) (not d6)))
    (d6 Bool (k1 k2 k3 k4))))

(declare-var k1 Bool)
(declare-var k2 Bool)
(declare-var k3 Bool)
(declare-var k4 Bool)
(constraint (= (Spec k1 k2 k3 k4) (Imp k1 k2 k3 k4)))

(check-synth)

