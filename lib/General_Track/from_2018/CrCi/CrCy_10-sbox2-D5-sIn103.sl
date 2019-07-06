
(set-logic BV)


(define-fun origCir ( (LN236 Bool) (LN252 Bool) (LN253 Bool) (LN375 Bool)  )  Bool    
          (xor (not (xor (xor  LN253 LN252 ) LN236 ) ) LN375 )
)


(synth-fun skel ( (LN236 Bool) (LN252 Bool) (LN253 Bool) (LN375 Bool)  )  Bool    
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
		                                  LN375
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
		                                  LN236
		                                  LN252
          ))
          (depth4 Bool (
		                                  LN253
          )))
)


(declare-var LN236 Bool)
(declare-var LN252 Bool)
(declare-var LN253 Bool)
(declare-var LN375 Bool)

(constraint (= (origCir LN236 LN252 LN253 LN375 ) (skel LN236 LN252 LN253 LN375 )))


(check-synth)

