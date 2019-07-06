
(set-logic BV)


(define-fun origCir ( (LN13 Bool) (LN32 Bool)  )  Bool    
          (xor  LN32 LN13 )
)


(synth-fun skel ( (LN13 Bool) (LN32 Bool)  )  Bool    
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
		                                  LN32
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
          ))
          (depth4 Bool (
		                                  LN13
          )))
)


(declare-var LN13 Bool)
(declare-var LN32 Bool)

(constraint (= (origCir LN13 LN32 ) (skel LN13 LN32 )))


(check-synth)

