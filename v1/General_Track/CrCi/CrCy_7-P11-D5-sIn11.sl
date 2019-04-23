
(set-logic BV)


(define-fun origCir ( (LN70 Bool) (LN81 Bool)  )  Bool    
          (xor  LN70 LN81 )
)


(synth-fun skel ( (LN70 Bool) (LN81 Bool)  )  Bool    
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
		                                  LN70
          ))
          (depth4 Bool (
		                                  LN81
          )))
)


(declare-var LN70 Bool)
(declare-var LN81 Bool)

(constraint (= (origCir LN70 LN81 ) (skel LN70 LN81 )))


(check-synth)

