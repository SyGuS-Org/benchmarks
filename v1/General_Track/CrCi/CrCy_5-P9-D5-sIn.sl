
(set-logic BV)


(define-fun origCir ( (k1 Bool) (LN4 Bool) (k3 Bool)  )  Bool    
          (xor  k1(and  LN4 k3 ) )
)


(synth-fun skel ( (k1 Bool) (LN4 Bool) (k3 Bool)  )  Bool    
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
		                                  LN4
          ))
          (depth4 Bool (
		                                  k1
		                                  k3
          )))
)


(declare-var k1 Bool)
(declare-var LN4 Bool)
(declare-var k3 Bool)

(constraint (= (origCir k1 LN4 k3 ) (skel k1 LN4 k3 )))


(check-synth)

