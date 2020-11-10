(set-logic BV)

(define-fun origCir ((i4 Bool) (i7 Bool) (i6 Bool) (i5 Bool)) Bool
    (and (and (not (and (not i7) i6)) (not (and (not i5) i4))) (not (and (not i6) i5))))
(synth-fun skel ((i4 Bool) (i7 Bool) (i6 Bool) (i5 Bool)) Bool
    ((Start Bool) (depth2 Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth2))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0) i4 i7 i6 i5))))

(declare-var i4 Bool)
(declare-var i7 Bool)
(declare-var i6 Bool)
(declare-var i5 Bool)
(constraint (= (origCir i4 i7 i6 i5) (skel i4 i7 i6 i5)))

(check-synth)

