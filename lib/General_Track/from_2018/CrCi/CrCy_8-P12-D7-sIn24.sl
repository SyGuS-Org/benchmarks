
(set-logic BV)


(define-fun origCir ( (LN92 Bool) (LN99 Bool) (LN102 Bool)  )  Bool    
          (xor (xor  LN92 LN99 ) LN102 )
)


(synth-fun skel ( (LN92 Bool) (LN99 Bool) (LN102 Bool)  )  Bool    
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
		                                  LN92
          ))
          (depth6 Bool (
		                                  LN99
		                                  LN102
          )))
)


(declare-var LN92 Bool)
(declare-var LN99 Bool)
(declare-var LN102 Bool)

(constraint (= (origCir LN92 LN99 LN102 ) (skel LN92 LN99 LN102 )))


(check-synth)

