(set-logic BV)

(define-fun origCir ((n187 Bool) (n142 Bool) (n173 Bool) (n114 Bool) (n86 Bool) (n74 Bool)) Bool
    (and n187 (and (and n173 n142) (and n114 (and n86 n74)))))
(synth-fun skel ((n187 Bool) (n142 Bool) (n173 Bool) (n114 Bool) (n86 Bool) (n74 Bool)) Bool
    ((Start Bool) (depth5 Bool) (depth4 Bool) (depth3 Bool) (depth2 Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth5))
    (depth5 Bool ((and depth4 depth4) (or depth4 depth4) (xor depth5 depth5) (not depth5) depth4))
    (depth4 Bool ((and depth3 depth3) (or depth3 depth3) (xor depth4 depth4) (not depth4) depth3))
    (depth3 Bool ((and depth2 depth2) (or depth2 depth2) (xor depth3 depth3) (not depth3) depth2))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1 n142 n173 n114 n74))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0 n187 n86))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0)))))

(declare-var n187 Bool)
(declare-var n142 Bool)
(declare-var n173 Bool)
(declare-var n114 Bool)
(declare-var n86 Bool)
(declare-var n74 Bool)
(constraint (= (origCir n187 n142 n173 n114 n86 n74) (skel n187 n142 n173 n114 n86 n74)))

(check-synth)

