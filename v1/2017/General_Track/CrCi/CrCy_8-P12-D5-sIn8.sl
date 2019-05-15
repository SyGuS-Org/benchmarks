
(set-logic BV)


(define-fun origCir ( (LN24 Bool) (k3 Bool) (LN236 Bool) (LN237 Bool)  )  Bool    
          (xor (xor (not (and  LN24 k3 ) ) LN237 ) LN236 )
)


(synth-fun skel ( (LN24 Bool) (k3 Bool) (LN236 Bool) (LN237 Bool)  )  Bool    
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
		                                  LN236
          ))
          (depth2 Bool (
		                                  (and depth3 depth3)
		                                  (not depth3)
		                                  (or depth3 depth3)
		                                  (xor depth3 depth3)
		                                  LN237
          ))
          (depth3 Bool (
		                                  (and depth4 depth4)
		                                  (not depth4)
		                                  (or depth4 depth4)
		                                  (xor depth4 depth4)
		                                  LN24
          ))
          (depth4 Bool (
		                                  k3
          )))
)


(declare-var LN24 Bool)
(declare-var k3 Bool)
(declare-var LN236 Bool)
(declare-var LN237 Bool)

(constraint (= (origCir LN24 k3 LN236 LN237 ) (skel LN24 k3 LN236 LN237 )))


(check-synth)

