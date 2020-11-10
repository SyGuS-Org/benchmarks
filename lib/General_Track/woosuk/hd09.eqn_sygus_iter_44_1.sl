(set-logic BV)

(define-fun origCir ((n96 Bool) (n104 Bool) (n115 Bool) (n106 Bool) (n131 Bool)) Bool
    (and (and (and n115 n106) (and n104 n96)) n131))
(synth-fun skel ((n96 Bool) (n104 Bool) (n115 Bool) (n106 Bool) (n131 Bool)) Bool
    ((Start Bool) (depth6 Bool) (depth5 Bool) (depth4 Bool) (depth3 Bool) (depth2 Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth6))
    (depth6 Bool ((and depth5 depth5) (or depth5 depth5) (xor depth6 depth6) (not depth6) depth5))
    (depth5 Bool ((and depth4 depth4) (or depth4 depth4) (xor depth5 depth5) (not depth5) depth4))
    (depth4 Bool ((and depth3 depth3) (or depth3 depth3) (xor depth4 depth4) (not depth4) depth3 n96 n104 n115))
    (depth3 Bool ((and depth2 depth2) (or depth2 depth2) (xor depth3 depth3) (not depth3) depth2))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0) n106 n131))))

(declare-var n96 Bool)
(declare-var n104 Bool)
(declare-var n115 Bool)
(declare-var n106 Bool)
(declare-var n131 Bool)
(constraint (= (origCir n96 n104 n115 n106 n131) (skel n96 n104 n115 n106 n131)))

(check-synth)

