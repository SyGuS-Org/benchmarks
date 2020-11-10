(set-logic BV)

(define-fun origCir ((i2 Bool) (i4 Bool) (i3 Bool)) Bool
    (and (not (and (not i3) (not i2))) (not (and i4 i3))))
(synth-fun skel ((i2 Bool) (i4 Bool) (i3 Bool)) Bool
    ((Start Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth1))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0) i2 i4 i3))))

(declare-var i2 Bool)
(declare-var i4 Bool)
(declare-var i3 Bool)
(constraint (= (origCir i2 i4 i3) (skel i2 i4 i3)))

(check-synth)

