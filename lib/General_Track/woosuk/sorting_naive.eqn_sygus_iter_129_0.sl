(set-logic BV)

(define-fun origCir ((n309 Bool) (n308 Bool) (n268 Bool) (n113 Bool) (n118 Bool) (i_17 Bool)) Bool
    (and (and (xor (xor n118 n113) n309) (xor (or n308 n268) n309)) i_17))
(synth-fun skel ((n309 Bool) (n308 Bool) (n268 Bool) (n113 Bool) (n118 Bool) (i_17 Bool)) Bool
    ((Start Bool) (depth6 Bool) (depth5 Bool) (depth4 Bool) (depth3 Bool) (depth2 Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth6))
    (depth6 Bool ((and depth5 depth5) (or depth5 depth5) (xor depth6 depth6) (not depth6) depth5))
    (depth5 Bool ((and depth4 depth4) (or depth4 depth4) (xor depth5 depth5) (not depth5) depth4))
    (depth4 Bool ((and depth3 depth3) (or depth3 depth3) (xor depth4 depth4) (not depth4) depth3 n309 n308 n268 n113))
    (depth3 Bool ((and depth2 depth2) (or depth2 depth2) (xor depth3 depth3) (not depth3) depth2 n118))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0) i_17))))

(declare-var n309 Bool)
(declare-var n308 Bool)
(declare-var n268 Bool)
(declare-var n113 Bool)
(declare-var n118 Bool)
(declare-var i_17 Bool)
(constraint (= (origCir n309 n308 n268 n113 n118 i_17) (skel n309 n308 n268 n113 n118 i_17)))

(check-synth)

