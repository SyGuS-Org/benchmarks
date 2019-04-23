
(set-logic BV)


(define-fun origCir ( (LN3 Bool) (k4 Bool) (LN7 Bool) (k1 Bool) (LN17 Bool) (LN20 Bool) (LN23 Bool)  )  Bool    
          (xor (xor (xor (xor (xor (xor  LN3 k4 ) LN7 ) k1 ) LN17 ) LN20 ) LN23 )
)


(synth-fun skel ( (LN3 Bool) (k4 Bool) (LN7 Bool) (k1 Bool) (LN17 Bool) (LN20 Bool) (LN23 Bool)  )  Bool    
          ((Start Bool (
		                                  (and depth1 depth1)
		                                  (not depth1)
		                                  (or depth1 depth1)
		                                  (xor depth1 depth1)
          ))
          (depth1 Bool (
		                                  (and depth2 depth2)
		                                  (not depth2)
		                                  (or depth2 depth2)
		                                  (xor depth2 depth2)
          ))
          (depth2 Bool (
		                                  (and depth3 depth3)
		                                  (not depth3)
		                                  (or depth3 depth3)
		                                  (xor depth3 depth3)
          ))
          (depth3 Bool (
		                                  (and depth4 depth4)
		                                  (not depth4)
		                                  (or depth4 depth4)
		                                  (xor depth4 depth4)
		                                  LN3
		                                  LN7
		                                  LN17
		                                  LN20
		                                  LN23
          ))
          (depth4 Bool (
		                                  k4
		                                  k1
          )))
)


(declare-var LN3 Bool)
(declare-var k4 Bool)
(declare-var LN7 Bool)
(declare-var k1 Bool)
(declare-var LN17 Bool)
(declare-var LN20 Bool)
(declare-var LN23 Bool)

(constraint (= (origCir LN3 k4 LN7 k1 LN17 LN20 LN23 ) (skel LN3 k4 LN7 k1 LN17 LN20 LN23 )))


(check-synth)

