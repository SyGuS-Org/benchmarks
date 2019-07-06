
(set-logic BV)


(define-fun origCir ( (LN84 Bool) (LN122 Bool) (k7 Bool) (LN131 Bool)  )  Bool    
          (xor (xor  LN122(and  LN84 k7 ) ) LN131 )
)


(synth-fun skel ( (LN84 Bool) (LN122 Bool) (k7 Bool) (LN131 Bool)  )  Bool    
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
          ))
          (depth4 Bool (
		                                  (and depth5 depth5)
		                                  (not depth5)
		                                  (or depth5 depth5)
		                                  (xor depth5 depth5)
		                                  LN122
          ))
          (depth5 Bool (
		                                  (and depth6 depth6)
		                                  (not depth6)
		                                  (or depth6 depth6)
		                                  (xor depth6 depth6)
		                                  LN84
		                                  LN131
          ))
          (depth6 Bool (
		                                  k7
          )))
)


(declare-var LN84 Bool)
(declare-var LN122 Bool)
(declare-var k7 Bool)
(declare-var LN131 Bool)

(constraint (= (origCir LN84 LN122 k7 LN131 ) (skel LN84 LN122 k7 LN131 )))


(check-synth)

