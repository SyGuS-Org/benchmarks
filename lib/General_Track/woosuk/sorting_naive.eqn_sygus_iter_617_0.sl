(set-logic BV)

(define-fun origCir ((n119 Bool) (n310 Bool) (n313 Bool) (n269 Bool) (n445 Bool) (i_12 Bool)) Bool
    (and (and (and n445 (xor (and n313 n269) (not (and n310 n119)))) (xor (and (not (xor (and n313 n269) (not (and n310 n119)))) (and n310 n119)) (not (and n310 n119)))) i_12))
(synth-fun skel ((n119 Bool) (n310 Bool) (n313 Bool) (n269 Bool) (n445 Bool) (i_12 Bool)) Bool
    ((Start Bool) (depth7 Bool) (depth6 Bool) (depth5 Bool) (depth4 Bool) (depth3 Bool) (depth2 Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth7))
    (depth7 Bool ((and depth6 depth6) (or depth6 depth6) (xor depth7 depth7) (not depth7) depth6))
    (depth6 Bool ((and depth5 depth5) (or depth5 depth5) (xor depth6 depth6) (not depth6) depth5))
    (depth5 Bool ((and depth4 depth4) (or depth4 depth4) (xor depth5 depth5) (not depth5) depth4))
    (depth4 Bool ((and depth3 depth3) (or depth3 depth3) (xor depth4 depth4) (not depth4) depth3 n119 n310 n313 n269 n445))
    (depth3 Bool ((and depth2 depth2) (or depth2 depth2) (xor depth3 depth3) (not depth3) depth2))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0) i_12))))

(declare-var n119 Bool)
(declare-var n310 Bool)
(declare-var n313 Bool)
(declare-var n269 Bool)
(declare-var n445 Bool)
(declare-var i_12 Bool)
(constraint (= (origCir n119 n310 n313 n269 n445 i_12) (skel n119 n310 n313 n269 n445 i_12)))

(check-synth)

