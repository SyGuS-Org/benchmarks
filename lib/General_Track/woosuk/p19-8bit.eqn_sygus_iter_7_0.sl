(set-logic BV)

(define-fun origCir ((n26 Bool) (n35 Bool) (n46 Bool) (i6 Bool)) Bool
    (and (not (and n46 (and n35 n26))) i6))
(synth-fun skel ((n26 Bool) (n35 Bool) (n46 Bool) (i6 Bool)) Bool
    ((Start Bool) (depth4 Bool) (depth3 Bool) (depth2 Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth4))
    (depth4 Bool ((and depth3 depth3) (or depth3 depth3) (xor depth4 depth4) (not depth4) depth3))
    (depth3 Bool ((and depth2 depth2) (or depth2 depth2) (xor depth3 depth3) (not depth3) depth2))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1 n35 n46))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0 n26))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0) i6))))

(declare-var n26 Bool)
(declare-var n35 Bool)
(declare-var n46 Bool)
(declare-var i6 Bool)
(constraint (= (origCir n26 n35 n46 i6) (skel n26 n35 n46 i6)))

(check-synth)

