
(set-logic BV)


(define-fun origCir ( (LN3 Bool) (LN19 Bool) (LN20 Bool)  )  Bool    
          (xor  LN3(and  LN19 LN20 ) )
)


(synth-fun skel ( (LN3 Bool) (LN19 Bool) (LN20 Bool)  )  Bool    
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
		                                  LN3
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
		                                  LN19
          ))
          (depth4 Bool (
		                                  LN20
          )))
)


(declare-var LN3 Bool)
(declare-var LN19 Bool)
(declare-var LN20 Bool)

(constraint (= (origCir LN3 LN19 LN20 ) (skel LN3 LN19 LN20 )))


(check-synth)

