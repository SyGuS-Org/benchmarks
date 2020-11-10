(set-logic BV)

(define-fun origCir ((i_5 Bool) (n105 Bool) (n119 Bool) (n117 Bool)) Bool
    (and (xor n119 (and n105 i_5)) n117))
(synth-fun skel ((i_5 Bool) (n105 Bool) (n119 Bool) (n117 Bool)) Bool
    ((Start Bool) (depth5 Bool) (depth4 Bool) (depth3 Bool) (depth2 Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth5))
    (depth5 Bool ((and depth4 depth4) (or depth4 depth4) (xor depth5 depth5) (not depth5) depth4))
    (depth4 Bool ((and depth3 depth3) (or depth3 depth3) (xor depth4 depth4) (not depth4) depth3 n105 n119))
    (depth3 Bool ((and depth2 depth2) (or depth2 depth2) (xor depth3 depth3) (not depth3) depth2))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0) i_5 n117))))

(declare-var i_5 Bool)
(declare-var n105 Bool)
(declare-var n119 Bool)
(declare-var n117 Bool)
(constraint (= (origCir i_5 n105 n119 n117) (skel i_5 n105 n119 n117)))

(check-synth)

