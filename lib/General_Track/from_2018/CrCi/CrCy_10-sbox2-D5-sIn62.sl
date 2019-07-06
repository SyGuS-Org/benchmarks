
(set-logic BV)


(define-fun origCir ( (LN39 Bool) (LN89 Bool)  )  Bool    
          (and  LN89 LN39 )
)


(synth-fun skel ( (LN39 Bool) (LN89 Bool)  )  Bool    
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
		                                  LN89
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
		                                  LN39
          )))
)


(declare-var LN39 Bool)
(declare-var LN89 Bool)

(constraint (= (origCir LN39 LN89 ) (skel LN39 LN89 )))


(check-synth)

