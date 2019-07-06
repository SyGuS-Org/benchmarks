
(set-logic BV)


(define-fun origCir ( (LN33 Bool) (k8 Bool) (LN80 Bool)  )  Bool    
          (not (xor (not (not (not (and  LN33 k8 ) ) ) ) LN80 ) )
)


(synth-fun skel ( (LN33 Bool) (k8 Bool) (LN80 Bool)  )  Bool    
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
		                                  LN80
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
          ))
          (depth5 Bool (
		                                  (and depth6 depth6)
		                                  (not depth6)
		                                  (or depth6 depth6)
		                                  (xor depth6 depth6)
		                                  LN33
          ))
          (depth6 Bool (
		                                  k8
          )))
)


(declare-var LN33 Bool)
(declare-var k8 Bool)
(declare-var LN80 Bool)

(constraint (= (origCir LN33 k8 LN80 ) (skel LN33 k8 LN80 )))


(check-synth)

