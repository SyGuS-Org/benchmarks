(set-logic BV)

(define-fun origCir ((n211 Bool) (n196 Bool) (n204 Bool) (n199 Bool) (n187 Bool)) Bool
    (and n211 (not (and (not (and (and n204 n199) (not n196))) (not n187)))))
(synth-fun skel ((n211 Bool) (n196 Bool) (n204 Bool) (n199 Bool) (n187 Bool)) Bool
    ((Start Bool) (depth6 Bool) (depth5 Bool) (depth4 Bool) (depth3 Bool) (depth2 Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth6))
    (depth6 Bool ((and depth5 depth5) (or depth5 depth5) (xor depth6 depth6) (not depth6) depth5))
    (depth5 Bool ((and depth4 depth4) (or depth4 depth4) (xor depth5 depth5) (not depth5) depth4))
    (depth4 Bool ((and depth3 depth3) (or depth3 depth3) (xor depth4 depth4) (not depth4) depth3 n196 n187))
    (depth3 Bool ((and depth2 depth2) (or depth2 depth2) (xor depth3 depth3) (not depth3) depth2 n204))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0 n211 n199))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0)))))

(declare-var n211 Bool)
(declare-var n196 Bool)
(declare-var n204 Bool)
(declare-var n199 Bool)
(declare-var n187 Bool)
(constraint (= (origCir n211 n196 n204 n199 n187) (skel n211 n196 n204 n199 n187)))

(check-synth)

