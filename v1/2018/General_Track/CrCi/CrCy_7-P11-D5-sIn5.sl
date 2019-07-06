
(set-logic BV)


(define-fun origCir ( (LN4 Bool) (k8 Bool) (LN83 Bool) (LN86 Bool)  )  Bool    
          (xor  LN86(xor (not (and  LN4 k8 ) ) LN83 ) )
)


(synth-fun skel ( (LN4 Bool) (k8 Bool) (LN83 Bool) (LN86 Bool)  )  Bool    
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
		                                  LN86
          ))
          (depth2 Bool (
		                                  (and depth3 depth3)
		                                  (not depth3)
		                                  (or depth3 depth3)
		                                  (xor depth3 depth3)
		                                  LN83
          ))
          (depth3 Bool (
		                                  (and depth4 depth4)
		                                  (not depth4)
		                                  (or depth4 depth4)
		                                  (xor depth4 depth4)
		                                  LN4
          ))
          (depth4 Bool (
		                                  k8
          )))
)


(declare-var LN4 Bool)
(declare-var k8 Bool)
(declare-var LN83 Bool)
(declare-var LN86 Bool)

(constraint (= (origCir LN4 k8 LN83 LN86 ) (skel LN4 k8 LN83 LN86 )))


(check-synth)

