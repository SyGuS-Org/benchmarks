(set-logic BV)

(define-fun origCir ((n203 Bool) (n166 Bool) (n171 Bool) (n158 Bool) (n150 Bool)) Bool
    (and (and n203 n150) (not (and (not (and n171 n166)) (not (and n158 n150))))))
(synth-fun skel ((n203 Bool) (n166 Bool) (n171 Bool) (n158 Bool) (n150 Bool)) Bool
    ((Start Bool) (depth10 Bool) (depth9 Bool) (depth8 Bool) (depth7 Bool) (depth6 Bool) (depth5 Bool) (depth4 Bool) (depth3 Bool) (depth2 Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth10))
    (depth10 Bool ((and depth9 depth9) (or depth9 depth9) (xor depth10 depth10) (not depth10) depth9))
    (depth9 Bool ((and depth8 depth8) (or depth8 depth8) (xor depth9 depth9) (not depth9) depth8))
    (depth8 Bool ((and depth7 depth7) (or depth7 depth7) (xor depth8 depth8) (not depth8) depth7 n203 n166 n150))
    (depth7 Bool ((and depth6 depth6) (or depth6 depth6) (xor depth7 depth7) (not depth7) depth6 n171 n158))
    (depth6 Bool ((and depth5 depth5) (or depth5 depth5) (xor depth6 depth6) (not depth6) depth5))
    (depth5 Bool ((and depth4 depth4) (or depth4 depth4) (xor depth5 depth5) (not depth5) depth4))
    (depth4 Bool ((and depth3 depth3) (or depth3 depth3) (xor depth4 depth4) (not depth4) depth3))
    (depth3 Bool ((and depth2 depth2) (or depth2 depth2) (xor depth3 depth3) (not depth3) depth2))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0)))))

(declare-var n203 Bool)
(declare-var n166 Bool)
(declare-var n171 Bool)
(declare-var n158 Bool)
(declare-var n150 Bool)
(constraint (= (origCir n203 n166 n171 n158 n150) (skel n203 n166 n171 n158 n150)))

(check-synth)

