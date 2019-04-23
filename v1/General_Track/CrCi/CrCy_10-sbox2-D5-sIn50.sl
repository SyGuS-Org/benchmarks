
(set-logic BV)


(define-fun origCir ( (LN4 Bool) (LN91 Bool)  )  Bool    
          (and  LN91 LN4 )
)


(synth-fun skel ( (LN4 Bool) (LN91 Bool)  )  Bool    
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
		                                  LN91
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
		                                  LN4
          )))
)


(declare-var LN4 Bool)
(declare-var LN91 Bool)

(constraint (= (origCir LN4 LN91 ) (skel LN4 LN91 )))


(check-synth)

