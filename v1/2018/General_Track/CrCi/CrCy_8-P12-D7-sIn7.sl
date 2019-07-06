
(set-logic BV)


(define-fun origCir ( (LN24 Bool) (k3 Bool) (LN255 Bool) (LN265 Bool)  )  Bool    
          (not (xor (not (xor (not (and  LN24 k3 ) ) LN255 ) ) LN265 ) )
)


(synth-fun skel ( (LN24 Bool) (k3 Bool) (LN255 Bool) (LN265 Bool)  )  Bool    
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
		                                  LN265
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
		                                  LN255
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
(declare-var LN255 Bool)
(declare-var LN265 Bool)

(constraint (= (origCir LN24 k3 LN255 LN265 ) (skel LN24 k3 LN255 LN265 )))


(check-synth)

