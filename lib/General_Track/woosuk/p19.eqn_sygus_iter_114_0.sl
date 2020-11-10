(set-logic BV)

(define-fun origCir ((i0 Bool) (i2 Bool) (i1 Bool)) Bool
    (and (not (and (not i1) (not i0))) (not (and i2 i1))))
(synth-fun skel ((i0 Bool) (i2 Bool) (i1 Bool)) Bool
    ((Start Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth1))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0) i0 i2 i1))))

(declare-var i0 Bool)
(declare-var i2 Bool)
(declare-var i1 Bool)
(constraint (= (origCir i0 i2 i1) (skel i0 i2 i1)))

(check-synth)

