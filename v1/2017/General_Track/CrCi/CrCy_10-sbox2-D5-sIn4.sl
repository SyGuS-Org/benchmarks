
(set-logic BV)


(define-fun origCir ( (LN16 Bool) (k7 Bool) (LN45 Bool)  )  Bool    
          (and  LN45(xor  k7 LN16 ) )
)


(synth-fun skel ( (LN16 Bool) (k7 Bool) (LN45 Bool)  )  Bool    
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
		                                  LN16
		                                  LN45
          ))
          (depth3 Bool (
		                                  (and depth4 depth4)
		                                  (not depth4)
		                                  (or depth4 depth4)
		                                  (xor depth4 depth4)
          ))
          (depth4 Bool (
		                                  k7
          )))
)


(declare-var LN16 Bool)
(declare-var k7 Bool)
(declare-var LN45 Bool)

(constraint (= (origCir LN16 k7 LN45 ) (skel LN16 k7 LN45 )))


(check-synth)

