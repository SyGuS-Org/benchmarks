(set-logic BV)

(define-fun origCir ((i42 Bool) (i10 Bool) (i9 Bool) (i41 Bool) (i40 Bool) (i8 Bool)) Bool
    (and (xor (xor i42 i10) (and i41 i9)) (and (xor i41 i9) (and i40 i8))))
(synth-fun skel ((i42 Bool) (i10 Bool) (i9 Bool) (i41 Bool) (i40 Bool) (i8 Bool)) Bool
    ((Start Bool) (depth2 Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth2))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0) i42 i10 i9 i41 i40 i8))))

(declare-var i42 Bool)
(declare-var i10 Bool)
(declare-var i9 Bool)
(declare-var i41 Bool)
(declare-var i40 Bool)
(declare-var i8 Bool)
(constraint (= (origCir i42 i10 i9 i41 i40 i8) (skel i42 i10 i9 i41 i40 i8)))

(check-synth)

