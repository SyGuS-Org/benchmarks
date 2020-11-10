(set-logic BV)

(define-fun origCir ((n204 Bool) (n191 Bool) (n177 Bool) (n171 Bool)) Bool
    (and n204 (and n191 (and n177 n171))))
(synth-fun skel ((n204 Bool) (n191 Bool) (n177 Bool) (n171 Bool)) Bool
    ((Start Bool) (depth3 Bool) (depth2 Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth3))
    (depth3 Bool ((and depth2 depth2) (or depth2 depth2) (xor depth3 depth3) (not depth3) depth2))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0 n204 n191 n177 n171))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0)))))

(declare-var n204 Bool)
(declare-var n191 Bool)
(declare-var n177 Bool)
(declare-var n171 Bool)
(constraint (= (origCir n204 n191 n177 n171) (skel n204 n191 n177 n171)))

(check-synth)

