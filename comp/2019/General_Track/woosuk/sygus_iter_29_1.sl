(set-logic BV)

(define-fun origCir ((n149 Bool) (n137 Bool) (n126 Bool)) Bool
    (not (and n149 (not (and (not n137) n126)))))
(synth-fun skel ((n149 Bool) (n137 Bool) (n126 Bool)) Bool
    ((Start Bool (depth7))
    (depth7 Bool ((and depth6 depth6) (or depth6 depth6) (xor depth7 depth7) (not depth7) depth6))
    (depth6 Bool ((and depth5 depth5) (or depth5 depth5) (xor depth6 depth6) (not depth6) depth5 n137))
    (depth5 Bool ((and depth4 depth4) (or depth4 depth4) (xor depth5 depth5) (not depth5) depth4 n126))
    (depth4 Bool ((and depth3 depth3) (or depth3 depth3) (xor depth4 depth4) (not depth4) depth3))
    (depth3 Bool ((and depth2 depth2) (or depth2 depth2) (xor depth3 depth3) (not depth3) depth2 n149))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0)))))

(declare-var n149 Bool)
(declare-var n137 Bool)
(declare-var n126 Bool)
(constraint (= (origCir n149 n137 n126) (skel n149 n137 n126)))

(check-synth)

