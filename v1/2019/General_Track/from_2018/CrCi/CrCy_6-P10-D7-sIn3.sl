
(set-logic BV)


(define-fun origCir ( (LN56 Bool) (k3 Bool) (LN60 Bool) (k4 Bool) (LN64 Bool) (LN67 Bool)  )  Bool    
          (xor (xor (xor (xor (xor  LN56 k3 ) LN60 ) k4 ) LN64 ) LN67 )
)


(synth-fun skel ( (LN56 Bool) (k3 Bool) (LN60 Bool) (k4 Bool) (LN64 Bool) (LN67 Bool)  )  Bool    
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
          ))
          (depth5 Bool (
		                                  (and depth6 depth6)
		                                  (not depth6)
		                                  (or depth6 depth6)
		                                  (xor depth6 depth6)
		                                  LN56
		                                  LN60
		                                  LN64
		                                  LN67
          ))
          (depth6 Bool (
		                                  k3
		                                  k4
          )))
)


(declare-var LN56 Bool)
(declare-var k3 Bool)
(declare-var LN60 Bool)
(declare-var k4 Bool)
(declare-var LN64 Bool)
(declare-var LN67 Bool)

(constraint (= (origCir LN56 k3 LN60 k4 LN64 LN67 ) (skel LN56 k3 LN60 k4 LN64 LN67 )))


(check-synth)

