
(set-logic BV)


(define-fun origCir ( (LN17 Bool) (k7 Bool) (LN88 Bool)  )  Bool    
          (and  LN88(xor  k7 LN17 ) )
)


(synth-fun skel ( (LN17 Bool) (k7 Bool) (LN88 Bool)  )  Bool    
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
          ))
          (depth3 Bool (
		                                  (and depth4 depth4)
		                                  (not depth4)
		                                  (or depth4 depth4)
		                                  (xor depth4 depth4)
		                                  LN17
          ))
          (depth4 Bool (
		                                  k7
          )))
)


(declare-var LN17 Bool)
(declare-var k7 Bool)
(declare-var LN88 Bool)

(constraint (= (origCir LN17 k7 LN88 ) (skel LN17 k7 LN88 )))


(check-synth)

