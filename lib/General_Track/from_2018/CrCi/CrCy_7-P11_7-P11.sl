(set-logic LIA)

(define-fun Spec ((k1 Bool) (k2 Bool) (k3 Bool) (k4 Bool) (k5 Bool) (k6 Bool) (k7 Bool) (k8 Bool)) Int
    (+ (ite (xor (and k1 k5) (xor (and k4 k6) (xor (and k3 k7) (and k2 k8)))) 1 0) (+ (ite (xor (and k2 k5) (xor (and (xor k1 k4) k6) (xor (and (xor k3 k4) k7) (and (xor k2 k3) k8)))) 2 0) (+ (ite (xor (and k3 k5) (xor (and k2 k6) (xor (and (xor k3 k4) k7) (and (xor k3 k4) k8)))) 4 0) (ite (xor (and k4 k5) (xor (and k3 k6) (xor (and k2 k7) (and (xor k1 k4) k8)))) 8 0)))))
(synth-fun Imp ((k1 Bool) (k2 Bool) (k3 Bool) (k4 Bool) (k5 Bool) (k6 Bool) (k7 Bool) (k8 Bool)) Int
    ((Start Int) (d0 Bool) (d1 Bool) (d2 Bool) (d3 Bool) (d4 Bool) (d5 Bool) (d6 Bool))
    ((Start Int ((+ (ite d0 1 0) (+ (ite d0 2 0) (+ (ite d0 4 0) (ite d0 8 0))))))
    (d0 Bool ((and d1 d1) (or d1 d1) (xor d1 d1) (not d1)))
    (d1 Bool ((and d2 d2) (or d2 d2) (xor d2 d2) (not d2)))
    (d2 Bool ((and d3 d3) (or d3 d3) (xor d3 d3) (not d3)))
    (d3 Bool ((and d4 d4) (or d4 d4) (xor d4 d4) (not d4)))
    (d4 Bool ((and d5 d5) (or d5 d5) (xor d5 d5) (not d5)))
    (d5 Bool ((and d6 d6) (or d6 d6) (xor d6 d6) (not d6)))
    (d6 Bool (k1 k2 k3 k4 k5 k6 k7 k8))))

(declare-var k1 Bool)
(declare-var k2 Bool)
(declare-var k3 Bool)
(declare-var k4 Bool)
(declare-var k5 Bool)
(declare-var k6 Bool)
(declare-var k7 Bool)
(declare-var k8 Bool)
(constraint (= (Spec k1 k2 k3 k4 k5 k6 k7 k8) (Imp k1 k2 k3 k4 k5 k6 k7 k8)))

(check-synth)

