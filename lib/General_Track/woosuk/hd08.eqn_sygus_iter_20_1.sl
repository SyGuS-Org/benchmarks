(set-logic BV)

(define-fun origCir ((n218 Bool) (n212 Bool) (n213 Bool) (n177 Bool) (n85 Bool)) Bool
    (and n218 (not (and (and n213 n212) (and n177 n85)))))
(synth-fun skel ((n218 Bool) (n212 Bool) (n213 Bool) (n177 Bool) (n85 Bool)) Bool
    ((Start Bool) (depth5 Bool) (depth4 Bool) (depth3 Bool) (depth2 Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth5))
    (depth5 Bool ((and depth4 depth4) (or depth4 depth4) (xor depth5 depth5) (not depth5) depth4))
    (depth4 Bool ((and depth3 depth3) (or depth3 depth3) (xor depth4 depth4) (not depth4) depth3))
    (depth3 Bool ((and depth2 depth2) (or depth2 depth2) (xor depth3 depth3) (not depth3) depth2 n213 n177 n85))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1 n218 n212))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0)))))

(declare-var n218 Bool)
(declare-var n212 Bool)
(declare-var n213 Bool)
(declare-var n177 Bool)
(declare-var n85 Bool)
(constraint (= (origCir n218 n212 n213 n177 n85) (skel n218 n212 n213 n177 n85)))

(check-synth)

