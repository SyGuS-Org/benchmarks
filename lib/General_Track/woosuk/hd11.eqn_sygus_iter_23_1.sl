(set-logic BV)

(define-fun origCir ((n719 Bool) (n721 Bool) (n727 Bool) (n715 Bool) (n708 Bool)) Bool
    (and (and (not (and n727 (and (not n715) (not n708)))) (not (and (not n721) n719))) (not n708)))
(synth-fun skel ((n719 Bool) (n721 Bool) (n727 Bool) (n715 Bool) (n708 Bool)) Bool
    ((Start Bool) (depth15 Bool) (depth14 Bool) (depth13 Bool) (depth12 Bool) (depth11 Bool) (depth10 Bool) (depth9 Bool) (depth8 Bool) (depth7 Bool) (depth6 Bool) (depth5 Bool) (depth4 Bool) (depth3 Bool) (depth2 Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth15))
    (depth15 Bool ((and depth14 depth14) (or depth14 depth14) (xor depth15 depth15) (not depth15) depth14))
    (depth14 Bool ((and depth13 depth13) (or depth13 depth13) (xor depth14 depth14) (not depth14) depth13))
    (depth13 Bool ((and depth12 depth12) (or depth12 depth12) (xor depth13 depth13) (not depth13) depth12))
    (depth12 Bool ((and depth11 depth11) (or depth11 depth11) (xor depth12 depth12) (not depth12) depth11 n721 n715 n708))
    (depth11 Bool ((and depth10 depth10) (or depth10 depth10) (xor depth11 depth11) (not depth11) depth10 n727))
    (depth10 Bool ((and depth9 depth9) (or depth9 depth9) (xor depth10 depth10) (not depth10) depth9))
    (depth9 Bool ((and depth8 depth8) (or depth8 depth8) (xor depth9 depth9) (not depth9) depth8 n719))
    (depth8 Bool ((and depth7 depth7) (or depth7 depth7) (xor depth8 depth8) (not depth8) depth7))
    (depth7 Bool ((and depth6 depth6) (or depth6 depth6) (xor depth7 depth7) (not depth7) depth6))
    (depth6 Bool ((and depth5 depth5) (or depth5 depth5) (xor depth6 depth6) (not depth6) depth5))
    (depth5 Bool ((and depth4 depth4) (or depth4 depth4) (xor depth5 depth5) (not depth5) depth4))
    (depth4 Bool ((and depth3 depth3) (or depth3 depth3) (xor depth4 depth4) (not depth4) depth3))
    (depth3 Bool ((and depth2 depth2) (or depth2 depth2) (xor depth3 depth3) (not depth3) depth2))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0)))))

(declare-var n719 Bool)
(declare-var n721 Bool)
(declare-var n727 Bool)
(declare-var n715 Bool)
(declare-var n708 Bool)
(constraint (= (origCir n719 n721 n727 n715 n708) (skel n719 n721 n727 n715 n708)))

(check-synth)

