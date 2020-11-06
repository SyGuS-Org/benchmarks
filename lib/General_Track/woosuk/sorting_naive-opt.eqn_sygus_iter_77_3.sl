(set-logic BV)

(define-fun origCir ((n143 Bool) (n167 Bool) (n312 Bool) (n288 Bool) (n368 Bool) (n344 Bool)) Bool
    (and (xor (and (xor (xor n312 n288) (xor n167 n143)) (xor n368 n344)) (and (xor n312 n288) (xor n167 n143))) (and (xor (xor n312 n288) (xor n167 n143)) (xor n368 n344))))
(synth-fun skel ((n143 Bool) (n167 Bool) (n312 Bool) (n288 Bool) (n368 Bool) (n344 Bool)) Bool
    ((Start Bool) (depth5 Bool) (depth4 Bool) (depth3 Bool) (depth2 Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth5))
    (depth5 Bool ((and depth4 depth4) (or depth4 depth4) (xor depth5 depth5) (not depth5) depth4))
    (depth4 Bool ((and depth3 depth3) (or depth3 depth3) (xor depth4 depth4) (not depth4) depth3 n167 n312 n368))
    (depth3 Bool ((and depth2 depth2) (or depth2 depth2) (xor depth3 depth3) (not depth3) depth2 n143 n288 n344))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0)))))

(declare-var n143 Bool)
(declare-var n167 Bool)
(declare-var n312 Bool)
(declare-var n288 Bool)
(declare-var n368 Bool)
(declare-var n344 Bool)
(constraint (= (origCir n143 n167 n312 n288 n368 n344) (skel n143 n167 n312 n288 n368 n344)))

(check-synth)

