(set-logic BV)

(define-fun origCir ((n71 Bool) (n84 Bool) (n77 Bool) (n240 Bool)) Bool
    (and (not (and (and n84 n77) n71)) n240))
(synth-fun skel ((n71 Bool) (n84 Bool) (n77 Bool) (n240 Bool)) Bool
    ((Start Bool) (depth4 Bool) (depth3 Bool) (depth2 Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth4))
    (depth4 Bool ((and depth3 depth3) (or depth3 depth3) (xor depth4 depth4) (not depth4) depth3))
    (depth3 Bool ((and depth2 depth2) (or depth2 depth2) (xor depth3 depth3) (not depth3) depth2))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1 n71 n84 n77 n240))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0)))))

(declare-var n71 Bool)
(declare-var n84 Bool)
(declare-var n77 Bool)
(declare-var n240 Bool)
(constraint (= (origCir n71 n84 n77 n240) (skel n71 n84 n77 n240)))

(check-synth)

