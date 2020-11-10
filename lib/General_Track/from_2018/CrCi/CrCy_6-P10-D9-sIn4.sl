(set-logic BV)

(define-fun origCir ((LN68 Bool) (k4 Bool) (LN110 Bool)) Bool
    (not (not (not (not (xor (not (not (and LN68 k4))) LN110))))))
(synth-fun skel ((LN68 Bool) (k4 Bool) (LN110 Bool)) Bool
    ((Start Bool) (depth1 Bool) (depth2 Bool) (depth3 Bool) (depth4 Bool) (depth5 Bool) (depth6 Bool) (depth7 Bool) (depth8 Bool))
    ((Start Bool ((and depth1 depth1) (not depth1) (or depth1 depth1) (xor depth1 depth1)))
    (depth1 Bool ((and depth2 depth2) (not depth2) (or depth2 depth2) (xor depth2 depth2)))
    (depth2 Bool ((and depth3 depth3) (not depth3) (or depth3 depth3) (xor depth3 depth3)))
    (depth3 Bool ((and depth4 depth4) (not depth4) (or depth4 depth4) (xor depth4 depth4)))
    (depth4 Bool ((and depth5 depth5) (not depth5) (or depth5 depth5) (xor depth5 depth5)))
    (depth5 Bool ((and depth6 depth6) (not depth6) (or depth6 depth6) (xor depth6 depth6) LN110))
    (depth6 Bool ((and depth7 depth7) (not depth7) (or depth7 depth7) (xor depth7 depth7)))
    (depth7 Bool ((and depth8 depth8) (not depth8) (or depth8 depth8) (xor depth8 depth8) LN68))
    (depth8 Bool (k4))))

(declare-var LN68 Bool)
(declare-var k4 Bool)
(declare-var LN110 Bool)
(constraint (= (origCir LN68 k4 LN110) (skel LN68 k4 LN110)))

(check-synth)

