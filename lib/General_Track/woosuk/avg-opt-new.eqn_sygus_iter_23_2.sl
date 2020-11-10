(set-logic BV)

(define-fun origCir ((n77 Bool) (i_10 Bool) (n45 Bool) (n48 Bool) (i_2 Bool) (n53 Bool)) Bool
    (and n77 (and (not (xor (xor (xor n48 n45) i_2) i_10)) n53)))
(synth-fun skel ((n77 Bool) (i_10 Bool) (n45 Bool) (n48 Bool) (i_2 Bool) (n53 Bool)) Bool
    ((Start Bool) (depth8 Bool) (depth7 Bool) (depth6 Bool) (depth5 Bool) (depth4 Bool) (depth3 Bool) (depth2 Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth8))
    (depth8 Bool ((and depth7 depth7) (or depth7 depth7) (xor depth8 depth8) (not depth8) depth7))
    (depth7 Bool ((and depth6 depth6) (or depth6 depth6) (xor depth7 depth7) (not depth7) depth6 n48))
    (depth6 Bool ((and depth5 depth5) (or depth5 depth5) (xor depth6 depth6) (not depth6) depth5 n77 n45 n53))
    (depth5 Bool ((and depth4 depth4) (or depth4 depth4) (xor depth5 depth5) (not depth5) depth4))
    (depth4 Bool ((and depth3 depth3) (or depth3 depth3) (xor depth4 depth4) (not depth4) depth3))
    (depth3 Bool ((and depth2 depth2) (or depth2 depth2) (xor depth3 depth3) (not depth3) depth2))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0) i_10 i_2))))

(declare-var n77 Bool)
(declare-var i_10 Bool)
(declare-var n45 Bool)
(declare-var n48 Bool)
(declare-var i_2 Bool)
(declare-var n53 Bool)
(constraint (= (origCir n77 i_10 n45 n48 i_2 n53) (skel n77 i_10 n45 n48 i_2 n53)))

(check-synth)

