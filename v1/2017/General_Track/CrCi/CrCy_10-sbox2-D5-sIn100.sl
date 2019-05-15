
(set-logic BV)


(define-fun origCir ( (LN218 Bool) (LN231 Bool) (LN240 Bool) (LN336 Bool)  )  Bool    
          (or (not (xor (xor  LN231 LN240 ) LN218 ) ) LN336 )
)


(synth-fun skel ( (LN218 Bool) (LN231 Bool) (LN240 Bool) (LN336 Bool)  )  Bool    
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
		                                  LN336
          ))
          (depth3 Bool (
		                                  (and depth4 depth4)
		                                  (not depth4)
		                                  (or depth4 depth4)
		                                  (xor depth4 depth4)
		                                  LN240
          ))
          (depth4 Bool (
		                                  LN218
		                                  LN231
          )))
)


(declare-var LN218 Bool)
(declare-var LN231 Bool)
(declare-var LN240 Bool)
(declare-var LN336 Bool)

(constraint (= (origCir LN218 LN231 LN240 LN336 ) (skel LN218 LN231 LN240 LN336 )))


(check-synth)

