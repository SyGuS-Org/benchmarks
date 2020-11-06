(set-logic BV)

(define-fun origCir ((n149 Bool) (n142 Bool) (n129 Bool) (n136 Bool) (n126 Bool)) Bool
    (and (not (and n149 (not (and (not (and n136 n129)) n126)))) (not (and n142 (and (not (and n136 n129)) n126)))))
(synth-fun skel ((n149 Bool) (n142 Bool) (n129 Bool) (n136 Bool) (n126 Bool)) Bool
    ((Start Bool) (depth8 Bool) (depth7 Bool) (depth6 Bool) (depth5 Bool) (depth4 Bool) (depth3 Bool) (depth2 Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth8))
    (depth8 Bool ((and depth7 depth7) (or depth7 depth7) (xor depth8 depth8) (not depth8) depth7))
    (depth7 Bool ((and depth6 depth6) (or depth6 depth6) (xor depth7 depth7) (not depth7) depth6))
    (depth6 Bool ((and depth5 depth5) (or depth5 depth5) (xor depth6 depth6) (not depth6) depth5))
    (depth5 Bool ((and depth4 depth4) (or depth4 depth4) (xor depth5 depth5) (not depth5) depth4 n136 n126))
    (depth4 Bool ((and depth3 depth3) (or depth3 depth3) (xor depth4 depth4) (not depth4) depth3 n142 n129))
    (depth3 Bool ((and depth2 depth2) (or depth2 depth2) (xor depth3 depth3) (not depth3) depth2 n149))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0)))))

(declare-var n149 Bool)
(declare-var n142 Bool)
(declare-var n129 Bool)
(declare-var n136 Bool)
(declare-var n126 Bool)
(constraint (= (origCir n149 n142 n129 n136 n126) (skel n149 n142 n129 n136 n126)))

(check-synth)

