
(set-logic BV)


(define-fun origCir ( (LN87 Bool) (LN193 Bool)  )  Bool    
          (and  LN87 LN193 )
)


(synth-fun skel ( (LN87 Bool) (LN193 Bool)  )  Bool    
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
		                                  LN87
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
		                                  LN193
          )))
)


(declare-var LN87 Bool)
(declare-var LN193 Bool)

(constraint (= (origCir LN87 LN193 ) (skel LN87 LN193 )))


(check-synth)

