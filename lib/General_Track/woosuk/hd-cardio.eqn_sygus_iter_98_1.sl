(set-logic BV)

(define-fun origCir ((n188 Bool) (n202 Bool) (n203 Bool) (n201 Bool) (n264 Bool)) Bool
    (and (not (xor (xor (and n203 n202) n201) n188)) n264))
(synth-fun skel ((n188 Bool) (n202 Bool) (n203 Bool) (n201 Bool) (n264 Bool)) Bool
    ((Start Bool) (depth3 Bool) (depth2 Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth3))
    (depth3 Bool ((and depth2 depth2) (or depth2 depth2) (xor depth3 depth3) (not depth3) depth2))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1 n202 n201))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0) n188 n203 n264))))

(declare-var n188 Bool)
(declare-var n202 Bool)
(declare-var n203 Bool)
(declare-var n201 Bool)
(declare-var n264 Bool)
(constraint (= (origCir n188 n202 n203 n201 n264) (skel n188 n202 n203 n201 n264)))

(check-synth)

