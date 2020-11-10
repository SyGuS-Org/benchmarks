(set-logic BV)

(define-fun origCir ((n150 Bool) (n333 Bool) (n326 Bool) (n345 Bool) (n336 Bool)) Bool
    (and (and (not (and (and n345 n326) n333)) n150) (not (and (not (and n345 n326)) n336))))
(synth-fun skel ((n150 Bool) (n333 Bool) (n326 Bool) (n345 Bool) (n336 Bool)) Bool
    ((Start Bool) (depth5 Bool) (depth4 Bool) (depth3 Bool) (depth2 Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth5))
    (depth5 Bool ((and depth4 depth4) (or depth4 depth4) (xor depth5 depth5) (not depth5) depth4))
    (depth4 Bool ((and depth3 depth3) (or depth3 depth3) (xor depth4 depth4) (not depth4) depth3))
    (depth3 Bool ((and depth2 depth2) (or depth2 depth2) (xor depth3 depth3) (not depth3) depth2))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1 n326 n345))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0 n333 n336))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0) n150))))

(declare-var n150 Bool)
(declare-var n333 Bool)
(declare-var n326 Bool)
(declare-var n345 Bool)
(declare-var n336 Bool)
(constraint (= (origCir n150 n333 n326 n345 n336) (skel n150 n333 n326 n345 n336)))

(check-synth)

