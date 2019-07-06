
(set-logic BV)


(define-fun origCir ( (LN70 Bool) (LN71 Bool) (LN73 Bool) (LN74 Bool) (LN236 Bool) (LN252 Bool) (LN253 Bool)  )  Bool    
          (xor  LN73(and (xor  LN71(and (xor (xor  LN253 LN252 ) LN236 ) LN70 ) ) LN74 ) )
)


(synth-fun skel ( (LN70 Bool) (LN71 Bool) (LN73 Bool) (LN74 Bool) (LN236 Bool) (LN252 Bool) (LN253 Bool)  )  Bool    
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
		                                  LN74
          ))
          (depth3 Bool (
		                                  (and depth4 depth4)
		                                  (not depth4)
		                                  (or depth4 depth4)
		                                  (xor depth4 depth4)
		                                  LN70
		                                  LN71
		                                  LN73
		                                  LN236
		                                  LN252
          ))
          (depth4 Bool (
		                                  LN253
          )))
)


(declare-var LN70 Bool)
(declare-var LN71 Bool)
(declare-var LN73 Bool)
(declare-var LN74 Bool)
(declare-var LN236 Bool)
(declare-var LN252 Bool)
(declare-var LN253 Bool)

(constraint (= (origCir LN70 LN71 LN73 LN74 LN236 LN252 LN253 ) (skel LN70 LN71 LN73 LN74 LN236 LN252 LN253 )))


(check-synth)

