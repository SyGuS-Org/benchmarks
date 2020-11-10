(set-logic BV)

(define-fun origCir ((LN1 Bool) (LN39 Bool) (k7 Bool) (LN48 Bool)) Bool
    (xor (xor LN39 (and LN1 k7)) LN48))
(synth-fun skel ((LN1 Bool) (LN39 Bool) (k7 Bool) (LN48 Bool)) Bool
    ((Start Bool) (depth1 Bool) (depth2 Bool) (depth3 Bool) (depth4 Bool))
    ((Start Bool ((and depth1 depth1) (not depth1) (or depth1 depth1) (xor depth1 depth1)))
    (depth1 Bool ((and depth2 depth2) (not depth2) (or depth2 depth2) (xor depth2 depth2)))
    (depth2 Bool ((and depth3 depth3) (not depth3) (or depth3 depth3) (xor depth3 depth3) LN39))
    (depth3 Bool ((and depth4 depth4) (not depth4) (or depth4 depth4) (xor depth4 depth4) LN1 LN48))
    (depth4 Bool (k7))))

(declare-var LN1 Bool)
(declare-var LN39 Bool)
(declare-var k7 Bool)
(declare-var LN48 Bool)
(constraint (= (origCir LN1 LN39 k7 LN48) (skel LN1 LN39 k7 LN48)))

(check-synth)

