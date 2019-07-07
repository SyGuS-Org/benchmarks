(set-logic BV)

(define-fun origCir ((n333 Bool) (n346 Bool) (n150 Bool)) Bool
    (and (not (and n346 n333)) n150))
(synth-fun skel ((n333 Bool) (n346 Bool) (n150 Bool)) Bool
    ((Start Bool (depth4))
    (depth4 Bool ((and depth3 depth3) (or depth3 depth3) (xor depth4 depth4) (not depth4) depth3))
    (depth3 Bool ((and depth2 depth2) (or depth2 depth2) (xor depth3 depth3) (not depth3) depth2 n346))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0 n333))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0) n150))))

(declare-var n333 Bool)
(declare-var n346 Bool)
(declare-var n150 Bool)
(constraint (= (origCir n333 n346 n150) (skel n333 n346 n150)))

(check-synth)

