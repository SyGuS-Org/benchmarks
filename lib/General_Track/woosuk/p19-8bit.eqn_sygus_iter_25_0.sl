(set-logic BV)

(define-fun origCir ((n26 Bool) (n35 Bool) (n46 Bool) (i7 Bool)) Bool
    (and (not (and n46 (and n35 n26))) i7))
(synth-fun skel ((n26 Bool) (n35 Bool) (n46 Bool) (i7 Bool)) Bool
    ((Start Bool) (depth3 Bool) (depth2 Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth3))
    (depth3 Bool ((and depth2 depth2) (or depth2 depth2) (xor depth3 depth3) (not depth3) depth2))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0 n26 n35 n46))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0) i7))))

(declare-var n26 Bool)
(declare-var n35 Bool)
(declare-var n46 Bool)
(declare-var i7 Bool)
(constraint (= (origCir n26 n35 n46 i7) (skel n26 n35 n46 i7)))

(check-synth)

