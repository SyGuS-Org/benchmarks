
(set-logic BV)


(define-fun origCir ( (LN55 Bool) (LN206 Bool) (LN208 Bool) (LN339 Bool)  )  Bool    
          (xor (not (xor  LN55(xor  LN208 LN206 ) ) ) LN339 )
)


(synth-fun skel ( (LN55 Bool) (LN206 Bool) (LN208 Bool) (LN339 Bool)  )  Bool    
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
		                                  LN339
          ))
          (depth3 Bool (
		                                  (and depth4 depth4)
		                                  (not depth4)
		                                  (or depth4 depth4)
		                                  (xor depth4 depth4)
		                                  LN208
          ))
          (depth4 Bool (
		                                  LN55
		                                  LN206
          )))
)


(declare-var LN55 Bool)
(declare-var LN206 Bool)
(declare-var LN208 Bool)
(declare-var LN339 Bool)

(constraint (= (origCir LN55 LN206 LN208 LN339 ) (skel LN55 LN206 LN208 LN339 )))


(check-synth)

