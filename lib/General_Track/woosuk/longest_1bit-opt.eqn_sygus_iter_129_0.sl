(set-logic BV)

(define-fun origCir ((n34 Bool) (n115 Bool) (n121 Bool) (n111 Bool) (i_3 Bool)) Bool
    (and (and n121 (not (and (not n115) n34))) (and (not n111) i_3)))
(synth-fun skel ((n34 Bool) (n115 Bool) (n121 Bool) (n111 Bool) (i_3 Bool)) Bool
    ((Start Bool) (depth4 Bool) (depth3 Bool) (depth2 Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth4))
    (depth4 Bool ((and depth3 depth3) (or depth3 depth3) (xor depth4 depth4) (not depth4) depth3))
    (depth3 Bool ((and depth2 depth2) (or depth2 depth2) (xor depth3 depth3) (not depth3) depth2))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1 n115 n111))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0 n121))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0) n34 i_3))))

(declare-var n34 Bool)
(declare-var n115 Bool)
(declare-var n121 Bool)
(declare-var n111 Bool)
(declare-var i_3 Bool)
(constraint (= (origCir n34 n115 n121 n111 i_3) (skel n34 n115 n121 n111 i_3)))

(check-synth)

