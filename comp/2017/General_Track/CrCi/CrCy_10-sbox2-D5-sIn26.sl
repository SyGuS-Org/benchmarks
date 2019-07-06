
(set-logic BV)


(define-fun origCir ( (LN1 Bool) (LN33 Bool) (LN62 Bool) (LN231 Bool)  )  Bool    
          (xor (not (xor  LN62(and  LN1 LN33 ) ) ) LN231 )
)


(synth-fun skel ( (LN1 Bool) (LN33 Bool) (LN62 Bool) (LN231 Bool)  )  Bool    
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
		                                  LN231
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
		                                  LN33
		                                  LN62
          ))
          (depth4 Bool (
		                                  LN1
          )))
)


(declare-var LN1 Bool)
(declare-var LN33 Bool)
(declare-var LN62 Bool)
(declare-var LN231 Bool)

(constraint (= (origCir LN1 LN33 LN62 LN231 ) (skel LN1 LN33 LN62 LN231 )))


(check-synth)

