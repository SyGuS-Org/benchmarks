(set-logic BV)

(define-fun origCir ((n35 Bool) (n26 Bool) (n46 Bool) (i6 Bool)) Bool
    (xor (and (and (and i6 n26) n46) n35) i6))
(synth-fun skel ((n35 Bool) (n26 Bool) (n46 Bool) (i6 Bool)) Bool
    ((Start Bool) (depth3 Bool) (depth2 Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth3))
    (depth3 Bool ((and depth2 depth2) (or depth2 depth2) (xor depth3 depth3) (not depth3) depth2))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0 n35 n26 n46))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0) i6))))

(declare-var n35 Bool)
(declare-var n26 Bool)
(declare-var n46 Bool)
(declare-var i6 Bool)
(constraint (= (origCir n35 n26 n46 i6) (skel n35 n26 n46 i6)))

(check-synth)

