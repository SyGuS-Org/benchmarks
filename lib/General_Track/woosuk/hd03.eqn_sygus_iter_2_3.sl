(set-logic BV)

(define-fun origCir ((i34 Bool) (i2 Bool) (i1 Bool) (i33 Bool) (i32 Bool) (i0 Bool)) Bool
    (and (not (xor (xor i34 i2) (not (and i33 i1)))) (and (not (xor i33 (not i1))) (and i32 i0))))
(synth-fun skel ((i34 Bool) (i2 Bool) (i1 Bool) (i33 Bool) (i32 Bool) (i0 Bool)) Bool
    ((Start Bool) (depth2 Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth2))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0) i34 i2 i1 i33 i32 i0))))

(declare-var i34 Bool)
(declare-var i2 Bool)
(declare-var i1 Bool)
(declare-var i33 Bool)
(declare-var i32 Bool)
(declare-var i0 Bool)
(constraint (= (origCir i34 i2 i1 i33 i32 i0) (skel i34 i2 i1 i33 i32 i0)))

(check-synth)

