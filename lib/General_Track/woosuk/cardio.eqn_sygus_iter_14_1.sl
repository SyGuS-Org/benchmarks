(set-logic BV)

(define-fun origCir ((n267 Bool) (n270 Bool) (n275 Bool) (n250 Bool)) Bool
    (xor (xor (and n275 (xor (and n270 n267) n267)) (xor (and n270 n267) n267)) n250))
(synth-fun skel ((n267 Bool) (n270 Bool) (n275 Bool) (n250 Bool)) Bool
    ((Start Bool) (depth3 Bool) (depth2 Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth3))
    (depth3 Bool ((and depth2 depth2) (or depth2 depth2) (xor depth3 depth3) (not depth3) depth2))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1 n267))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0) n270 n275 n250))))

(declare-var n267 Bool)
(declare-var n270 Bool)
(declare-var n275 Bool)
(declare-var n250 Bool)
(constraint (= (origCir n267 n270 n275 n250) (skel n267 n270 n275 n250)))

(check-synth)

