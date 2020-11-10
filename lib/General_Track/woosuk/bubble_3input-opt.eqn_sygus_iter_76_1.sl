(set-logic BV)

(define-fun origCir ((n72 Bool) (n103 Bool) (n88 Bool) (n60 Bool) (i_13 Bool)) Bool
    (and (not (xor (xor n103 (and n88 n60)) n72)) i_13))
(synth-fun skel ((n72 Bool) (n103 Bool) (n88 Bool) (n60 Bool) (i_13 Bool)) Bool
    ((Start Bool) (depth4 Bool) (depth3 Bool) (depth2 Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth4))
    (depth4 Bool ((and depth3 depth3) (or depth3 depth3) (xor depth4 depth4) (not depth4) depth3))
    (depth3 Bool ((and depth2 depth2) (or depth2 depth2) (xor depth3 depth3) (not depth3) depth2 n72 n103 n88))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1 n60))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0) i_13))))

(declare-var n72 Bool)
(declare-var n103 Bool)
(declare-var n88 Bool)
(declare-var n60 Bool)
(declare-var i_13 Bool)
(constraint (= (origCir n72 n103 n88 n60 i_13) (skel n72 n103 n88 n60 i_13)))

(check-synth)

