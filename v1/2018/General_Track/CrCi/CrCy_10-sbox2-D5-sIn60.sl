
(set-logic BV)


(define-fun origCir ( (LN49 Bool) (LN95 Bool)  )  Bool    
          (and  LN95 LN49 )
)


(synth-fun skel ( (LN49 Bool) (LN95 Bool)  )  Bool    
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
		                                  LN95
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
		                                  LN49
          )))
)


(declare-var LN49 Bool)
(declare-var LN95 Bool)

(constraint (= (origCir LN49 LN95 ) (skel LN49 LN95 )))


(check-synth)

