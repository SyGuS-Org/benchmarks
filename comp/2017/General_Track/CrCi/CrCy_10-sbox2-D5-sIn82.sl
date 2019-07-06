
(set-logic BV)


(define-fun origCir ( (LN218 Bool) (LN231 Bool) (LN240 Bool) (LN252 Bool) (LN325 Bool)  )  Bool    
          (xor (not (and  LN252(xor (xor  LN231 LN240 ) LN218 ) ) ) LN325 )
)


(synth-fun skel ( (LN218 Bool) (LN231 Bool) (LN240 Bool) (LN252 Bool) (LN325 Bool)  )  Bool    
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
		                                  LN325
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
		                                  LN240
		                                  LN252
          ))
          (depth4 Bool (
		                                  LN218
		                                  LN231
          )))
)


(declare-var LN218 Bool)
(declare-var LN231 Bool)
(declare-var LN240 Bool)
(declare-var LN252 Bool)
(declare-var LN325 Bool)

(constraint (= (origCir LN218 LN231 LN240 LN252 LN325 ) (skel LN218 LN231 LN240 LN252 LN325 )))


(check-synth)

