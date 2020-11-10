(set-logic BV)

(define-fun origCir ((n107 Bool) (n69 Bool) (n76 Bool) (n63 Bool)) Bool
    (and n107 (not (and (not (and n76 n69)) n63))))
(synth-fun skel ((n107 Bool) (n69 Bool) (n76 Bool) (n63 Bool)) Bool
    ((Start Bool) (depth4 Bool) (depth3 Bool) (depth2 Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth4))
    (depth4 Bool ((and depth3 depth3) (or depth3 depth3) (xor depth4 depth4) (not depth4) depth3))
    (depth3 Bool ((and depth2 depth2) (or depth2 depth2) (xor depth3 depth3) (not depth3) depth2))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1 n107 n69 n76 n63))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0)))))

(declare-var n107 Bool)
(declare-var n69 Bool)
(declare-var n76 Bool)
(declare-var n63 Bool)
(constraint (= (origCir n107 n69 n76 n63) (skel n107 n69 n76 n63)))

(check-synth)

