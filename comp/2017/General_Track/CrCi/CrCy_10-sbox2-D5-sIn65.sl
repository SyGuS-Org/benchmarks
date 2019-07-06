
(set-logic BV)


(define-fun origCir ( (LN44 Bool) (LN88 Bool) (LN102 Bool)  )  Bool    
          (xor  LN102(and  LN88 LN44 ) )
)


(synth-fun skel ( (LN44 Bool) (LN88 Bool) (LN102 Bool)  )  Bool    
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
		                                  LN88
          ))
          (depth2 Bool (
		                                  (and depth3 depth3)
		                                  (not depth3)
		                                  (or depth3 depth3)
		                                  (xor depth3 depth3)
		                                  LN102
          ))
          (depth3 Bool (
		                                  (and depth4 depth4)
		                                  (not depth4)
		                                  (or depth4 depth4)
		                                  (xor depth4 depth4)
          ))
          (depth4 Bool (
		                                  LN44
          )))
)


(declare-var LN44 Bool)
(declare-var LN88 Bool)
(declare-var LN102 Bool)

(constraint (= (origCir LN44 LN88 LN102 ) (skel LN44 LN88 LN102 )))


(check-synth)

