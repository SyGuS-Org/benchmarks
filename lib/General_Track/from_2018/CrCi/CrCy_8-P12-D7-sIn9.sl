(set-logic BV)

(define-fun origCir ((LN43 Bool) (LN47 Bool) (k4 Bool) (LN275 Bool) (LN278 Bool)) Bool
    (not (not (xor LN278 (xor (xor (and LN47 k4) LN43) LN275)))))
(synth-fun skel ((LN43 Bool) (LN47 Bool) (k4 Bool) (LN275 Bool) (LN278 Bool)) Bool
    ((Start Bool) (depth1 Bool) (depth2 Bool) (depth3 Bool) (depth4 Bool) (depth5 Bool) (depth6 Bool))
    ((Start Bool ((and depth1 depth1) (not depth1) (or depth1 depth1) (xor depth1 depth1)))
    (depth1 Bool ((and depth2 depth2) (not depth2) (or depth2 depth2) (xor depth2 depth2)))
    (depth2 Bool ((and depth3 depth3) (not depth3) (or depth3 depth3) (xor depth3 depth3)))
    (depth3 Bool ((and depth4 depth4) (not depth4) (or depth4 depth4) (xor depth4 depth4) LN278))
    (depth4 Bool ((and depth5 depth5) (not depth5) (or depth5 depth5) (xor depth5 depth5) LN275))
    (depth5 Bool ((and depth6 depth6) (not depth6) (or depth6 depth6) (xor depth6 depth6) LN43 LN47))
    (depth6 Bool (k4))))

(declare-var LN43 Bool)
(declare-var LN47 Bool)
(declare-var k4 Bool)
(declare-var LN275 Bool)
(declare-var LN278 Bool)
(constraint (= (origCir LN43 LN47 k4 LN275 LN278) (skel LN43 LN47 k4 LN275 LN278)))

(check-synth)

