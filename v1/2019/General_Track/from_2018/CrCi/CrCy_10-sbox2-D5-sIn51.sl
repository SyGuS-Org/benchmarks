
(set-logic BV)


(define-fun origCir ( (LN31 Bool) (LN94 Bool)  )  Bool    
          (and  LN94 LN31 )
)


(synth-fun skel ( (LN31 Bool) (LN94 Bool)  )  Bool    
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
		                                  LN94
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
		                                  LN31
          )))
)


(declare-var LN31 Bool)
(declare-var LN94 Bool)

(constraint (= (origCir LN31 LN94 ) (skel LN31 LN94 )))


(check-synth)

