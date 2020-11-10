(set-logic BV)

(define-fun origCir ((n162 Bool) (n166 Bool) (n267 Bool) (n263 Bool) (n364 Bool) (n324 Bool)) Bool
    (and (and (xor n364 (not n324)) (xor (and (xor n267 n263) (xor n166 n162)) (not (and (not n364) (not n324))))) (xor (and (not (xor (and (xor n267 n263) (xor n166 n162)) (not (and (not n364) (not n324))))) (and (not n364) (not n324))) (not (and (not n364) (not n324))))))
(synth-fun skel ((n162 Bool) (n166 Bool) (n267 Bool) (n263 Bool) (n364 Bool) (n324 Bool)) Bool
    ((Start Bool) (depth6 Bool) (depth5 Bool) (depth4 Bool) (depth3 Bool) (depth2 Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth6))
    (depth6 Bool ((and depth5 depth5) (or depth5 depth5) (xor depth6 depth6) (not depth6) depth5))
    (depth5 Bool ((and depth4 depth4) (or depth4 depth4) (xor depth5 depth5) (not depth5) depth4))
    (depth4 Bool ((and depth3 depth3) (or depth3 depth3) (xor depth4 depth4) (not depth4) depth3 n162 n263 n364 n324))
    (depth3 Bool ((and depth2 depth2) (or depth2 depth2) (xor depth3 depth3) (not depth3) depth2 n166 n267))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0)))))

(declare-var n162 Bool)
(declare-var n166 Bool)
(declare-var n267 Bool)
(declare-var n263 Bool)
(declare-var n364 Bool)
(declare-var n324 Bool)
(constraint (= (origCir n162 n166 n267 n263 n364 n324) (skel n162 n166 n267 n263 n364 n324)))

(check-synth)

