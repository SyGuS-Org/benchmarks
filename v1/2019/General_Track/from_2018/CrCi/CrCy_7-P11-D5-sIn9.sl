
(set-logic BV)


(define-fun origCir ( (LN9 Bool) (LN16 Bool) (LN19 Bool)  )  Bool    
          (xor (xor  LN9 LN16 ) LN19 )
)


(synth-fun skel ( (LN9 Bool) (LN16 Bool) (LN19 Bool)  )  Bool    
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
		                                  LN9
          ))
          (depth4 Bool (
		                                  LN16
		                                  LN19
          )))
)


(declare-var LN9 Bool)
(declare-var LN16 Bool)
(declare-var LN19 Bool)

(constraint (= (origCir LN9 LN16 LN19 ) (skel LN9 LN16 LN19 )))


(check-synth)

