
(set-logic BV)


(define-fun origCir ( (LN3 Bool) (k4 Bool) (LN7 Bool) (LN75 Bool) (LN78 Bool) (LN81 Bool)  )  Bool    
          (xor (xor (xor (xor (xor  LN3 k4 ) LN7 ) LN75 ) LN78 ) LN81 )
)


(synth-fun skel ( (LN3 Bool) (k4 Bool) (LN7 Bool) (LN75 Bool) (LN78 Bool) (LN81 Bool)  )  Bool    
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
		                                  LN3
		                                  LN7
		                                  LN75
		                                  LN78
		                                  LN81
          ))
          (depth6 Bool (
		                                  k4
          )))
)


(declare-var LN3 Bool)
(declare-var k4 Bool)
(declare-var LN7 Bool)
(declare-var LN75 Bool)
(declare-var LN78 Bool)
(declare-var LN81 Bool)

(constraint (= (origCir LN3 k4 LN7 LN75 LN78 LN81 ) (skel LN3 k4 LN7 LN75 LN78 LN81 )))


(check-synth)

