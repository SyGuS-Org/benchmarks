(set-logic BV)

(define-fun origCir ((n23 Bool) (n30 Bool) (n26 Bool) (n52 Bool) (n47 Bool) (n22 Bool)) Bool
    (and (and (and n52 (not n47)) (not (and (and n30 n26) n23))) n22))
(synth-fun skel ((n23 Bool) (n30 Bool) (n26 Bool) (n52 Bool) (n47 Bool) (n22 Bool)) Bool
    ((Start Bool) (depth6 Bool) (depth5 Bool) (depth4 Bool) (depth3 Bool) (depth2 Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth6))
    (depth6 Bool ((and depth5 depth5) (or depth5 depth5) (xor depth6 depth6) (not depth6) depth5))
    (depth5 Bool ((and depth4 depth4) (or depth4 depth4) (xor depth5 depth5) (not depth5) depth4))
    (depth4 Bool ((and depth3 depth3) (or depth3 depth3) (xor depth4 depth4) (not depth4) depth3 n47))
    (depth3 Bool ((and depth2 depth2) (or depth2 depth2) (xor depth3 depth3) (not depth3) depth2 n30 n52))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1 n26 n22))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0 n23))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0)))))

(declare-var n23 Bool)
(declare-var n30 Bool)
(declare-var n26 Bool)
(declare-var n52 Bool)
(declare-var n47 Bool)
(declare-var n22 Bool)
(constraint (= (origCir n23 n30 n26 n52 n47 n22) (skel n23 n30 n26 n52 n47 n22)))

(check-synth)

