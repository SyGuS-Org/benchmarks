
(set-logic BV)


(define-fun origCir ( (LN84 Bool) (LN134 Bool) (k8 Bool)  )  Bool    
          (xor  LN134(and  LN84 k8 ) )
)


(synth-fun skel ( (LN84 Bool) (LN134 Bool) (k8 Bool)  )  Bool    
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
		                                  LN134
          ))
          (depth5 Bool (
		                                  (and depth6 depth6)
		                                  (not depth6)
		                                  (or depth6 depth6)
		                                  (xor depth6 depth6)
		                                  LN84
          ))
          (depth6 Bool (
		                                  k8
          )))
)


(declare-var LN84 Bool)
(declare-var LN134 Bool)
(declare-var k8 Bool)

(constraint (= (origCir LN84 LN134 k8 ) (skel LN84 LN134 k8 )))


(check-synth)

