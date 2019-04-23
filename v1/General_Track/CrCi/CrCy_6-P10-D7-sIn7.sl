
(set-logic BV)


(define-fun origCir ( (LN24 Bool) (k3 Bool) (LN121 Bool) (LN131 Bool)  )  Bool    
          (not (xor (not (xor (not (and  LN24 k3 ) ) LN121 ) ) LN131 ) )
)


(synth-fun skel ( (LN24 Bool) (k3 Bool) (LN121 Bool) (LN131 Bool)  )  Bool    
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
		                                  LN131
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
		                                  LN121
          ))
          (depth5 Bool (
		                                  (and depth6 depth6)
		                                  (not depth6)
		                                  (or depth6 depth6)
		                                  (xor depth6 depth6)
		                                  LN24
          ))
          (depth6 Bool (
		                                  k3
          )))
)


(declare-var LN24 Bool)
(declare-var k3 Bool)
(declare-var LN121 Bool)
(declare-var LN131 Bool)

(constraint (= (origCir LN24 k3 LN121 LN131 ) (skel LN24 k3 LN121 LN131 )))


(check-synth)

