
(set-logic BV)


(define-fun origCir ( (LN4 Bool) (k8 Bool) (LN90 Bool) (LN93 Bool)  )  Bool    
          (not (not (xor  LN93(xor (not (and  LN4 k8 ) ) LN90 ) ) ) )
)


(synth-fun skel ( (LN4 Bool) (k8 Bool) (LN90 Bool) (LN93 Bool)  )  Bool    
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
		                                  LN93
          ))
          (depth4 Bool (
		                                  (and depth5 depth5)
		                                  (not depth5)
		                                  (or depth5 depth5)
		                                  (xor depth5 depth5)
		                                  LN90
          ))
          (depth5 Bool (
		                                  (and depth6 depth6)
		                                  (not depth6)
		                                  (or depth6 depth6)
		                                  (xor depth6 depth6)
		                                  LN4
          ))
          (depth6 Bool (
		                                  k8
          )))
)


(declare-var LN4 Bool)
(declare-var k8 Bool)
(declare-var LN90 Bool)
(declare-var LN93 Bool)

(constraint (= (origCir LN4 k8 LN90 LN93 ) (skel LN4 k8 LN90 LN93 )))


(check-synth)

