(set-logic BV)

(define-fun origCir ((n308 Bool) (n357 Bool) (n309 Bool) (n272 Bool) (n218 Bool) (n252 Bool) (n215 Bool)) Bool
    (xor (xor (xor n357 n309) n308) (xor n272 (and (and n252 n218) n215))))
(synth-fun skel ((n308 Bool) (n357 Bool) (n309 Bool) (n272 Bool) (n218 Bool) (n252 Bool) (n215 Bool)) Bool
    ((Start Bool (depth6))
    (depth6 Bool ((and depth5 depth5) (or depth5 depth5) (xor depth6 depth6) (not depth6) depth5 n357))
    (depth5 Bool ((and depth4 depth4) (or depth4 depth4) (xor depth5 depth5) (not depth5) depth4 n272 n252))
    (depth4 Bool ((and depth3 depth3) (or depth3 depth3) (xor depth4 depth4) (not depth4) depth3 n215))
    (depth3 Bool ((and depth2 depth2) (or depth2 depth2) (xor depth3 depth3) (not depth3) depth2 n308))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1 n218))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0) n309))))

(declare-var n308 Bool)
(declare-var n357 Bool)
(declare-var n309 Bool)
(declare-var n272 Bool)
(declare-var n218 Bool)
(declare-var n252 Bool)
(declare-var n215 Bool)
(constraint (= (origCir n308 n357 n309 n272 n218 n252 n215) (skel n308 n357 n309 n272 n218 n252 n215)))

(check-synth)

