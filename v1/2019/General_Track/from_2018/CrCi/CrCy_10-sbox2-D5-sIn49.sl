
(set-logic BV)


(define-fun origCir ( (LN7 Bool) (LN93 Bool)  )  Bool    
          (and  LN93 LN7 )
)


(synth-fun skel ( (LN7 Bool) (LN93 Bool)  )  Bool    
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
		                                  LN93
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
		                                  LN7
          )))
)


(declare-var LN7 Bool)
(declare-var LN93 Bool)

(constraint (= (origCir LN7 LN93 ) (skel LN7 LN93 )))


(check-synth)

