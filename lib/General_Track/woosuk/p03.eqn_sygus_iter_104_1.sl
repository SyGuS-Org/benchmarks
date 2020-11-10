(set-logic BV)

(define-fun origCir ((n164 Bool) (n152 Bool) (n121 Bool) (n90 Bool)) Bool
    (and n164 (and n152 (and n121 n90))))
(synth-fun skel ((n164 Bool) (n152 Bool) (n121 Bool) (n90 Bool)) Bool
    ((Start Bool) (depth5 Bool) (depth4 Bool) (depth3 Bool) (depth2 Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth5))
    (depth5 Bool ((and depth4 depth4) (or depth4 depth4) (xor depth5 depth5) (not depth5) depth4))
    (depth4 Bool ((and depth3 depth3) (or depth3 depth3) (xor depth4 depth4) (not depth4) depth3))
    (depth3 Bool ((and depth2 depth2) (or depth2 depth2) (xor depth3 depth3) (not depth3) depth2 n164 n152 n121 n90))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0)))))

(declare-var n164 Bool)
(declare-var n152 Bool)
(declare-var n121 Bool)
(declare-var n90 Bool)
(constraint (= (origCir n164 n152 n121 n90) (skel n164 n152 n121 n90)))

(check-synth)

