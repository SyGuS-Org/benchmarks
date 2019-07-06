
(set-logic BV)


(define-fun origCir ( (LN33 Bool) (LN92 Bool) (LN104 Bool)  )  Bool    
          (xor (and  LN92 LN33 ) LN104 )
)


(synth-fun skel ( (LN33 Bool) (LN92 Bool) (LN104 Bool)  )  Bool    
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
		                                  LN92
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
		                                  LN104
          ))
          (depth4 Bool (
		                                  LN33
          )))
)


(declare-var LN33 Bool)
(declare-var LN92 Bool)
(declare-var LN104 Bool)

(constraint (= (origCir LN33 LN92 LN104 ) (skel LN33 LN92 LN104 )))


(check-synth)

