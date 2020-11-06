(set-logic BV)

(define-fun origCir ((LN3 Bool) (k4 Bool) (LN7 Bool) (k1 Bool) (LN17 Bool) (LN20 Bool) (LN23 Bool)) Bool
    (xor (xor (xor (xor (xor (xor LN3 k4) LN7) k1) LN17) LN20) LN23))
(synth-fun skel ((LN3 Bool) (k4 Bool) (LN7 Bool) (k1 Bool) (LN17 Bool) (LN20 Bool) (LN23 Bool)) Bool
    ((Start Bool) (depth1 Bool) (depth2 Bool) (depth3 Bool) (depth4 Bool) (depth5 Bool) (depth6 Bool) (depth7 Bool) (depth8 Bool))
    ((Start Bool ((and depth1 depth1) (not depth1) (or depth1 depth1) (xor depth1 depth1)))
    (depth1 Bool ((and depth2 depth2) (not depth2) (or depth2 depth2) (xor depth2 depth2)))
    (depth2 Bool ((and depth3 depth3) (not depth3) (or depth3 depth3) (xor depth3 depth3)))
    (depth3 Bool ((and depth4 depth4) (not depth4) (or depth4 depth4) (xor depth4 depth4)))
    (depth4 Bool ((and depth5 depth5) (not depth5) (or depth5 depth5) (xor depth5 depth5)))
    (depth5 Bool ((and depth6 depth6) (not depth6) (or depth6 depth6) (xor depth6 depth6)))
    (depth6 Bool ((and depth7 depth7) (not depth7) (or depth7 depth7) (xor depth7 depth7)))
    (depth7 Bool ((and depth8 depth8) (not depth8) (or depth8 depth8) (xor depth8 depth8) LN3 LN7 LN17 LN20 LN23))
    (depth8 Bool (k4 k1))))

(declare-var LN3 Bool)
(declare-var k4 Bool)
(declare-var LN7 Bool)
(declare-var k1 Bool)
(declare-var LN17 Bool)
(declare-var LN20 Bool)
(declare-var LN23 Bool)
(constraint (= (origCir LN3 k4 LN7 k1 LN17 LN20 LN23) (skel LN3 k4 LN7 k1 LN17 LN20 LN23)))

(check-synth)

