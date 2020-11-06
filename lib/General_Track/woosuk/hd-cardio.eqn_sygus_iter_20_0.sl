(set-logic BV)

(define-fun origCir ((n263 Bool) (n271 Bool) (n218 Bool) (n251 Bool) (n248 Bool) (n215 Bool)) Bool
    (xor (xor n271 n263) (and (and (and n251 n248) n218) n215)))
(synth-fun skel ((n263 Bool) (n271 Bool) (n218 Bool) (n251 Bool) (n248 Bool) (n215 Bool)) Bool
    ((Start Bool) (depth6 Bool) (depth5 Bool) (depth4 Bool) (depth3 Bool) (depth2 Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth6))
    (depth6 Bool ((and depth5 depth5) (or depth5 depth5) (xor depth6 depth6) (not depth6) depth5))
    (depth5 Bool ((and depth4 depth4) (or depth4 depth4) (xor depth5 depth5) (not depth5) depth4 n263 n271))
    (depth4 Bool ((and depth3 depth3) (or depth3 depth3) (xor depth4 depth4) (not depth4) depth3 n248 n215))
    (depth3 Bool ((and depth2 depth2) (or depth2 depth2) (xor depth3 depth3) (not depth3) depth2))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1 n218 n251))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0)))))

(declare-var n263 Bool)
(declare-var n271 Bool)
(declare-var n218 Bool)
(declare-var n251 Bool)
(declare-var n248 Bool)
(declare-var n215 Bool)
(constraint (= (origCir n263 n271 n218 n251 n248 n215) (skel n263 n271 n218 n251 n248 n215)))

(check-synth)

