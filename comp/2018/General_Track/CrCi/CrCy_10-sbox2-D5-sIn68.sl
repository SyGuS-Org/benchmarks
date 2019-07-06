
(set-logic BV)


(define-fun origCir ( (LN90 Bool) (LN184 Bool)  )  Bool    
          (and  LN90 LN184 )
)


(synth-fun skel ( (LN90 Bool) (LN184 Bool)  )  Bool    
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
		                                  LN90
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
		                                  LN184
          )))
)


(declare-var LN90 Bool)
(declare-var LN184 Bool)

(constraint (= (origCir LN90 LN184 ) (skel LN90 LN184 )))


(check-synth)

