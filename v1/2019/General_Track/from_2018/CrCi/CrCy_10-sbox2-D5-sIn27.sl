
(set-logic BV)


(define-fun origCir ( (LN10 Bool) (LN33 Bool) (LN49 Bool) (LN234 Bool)  )  Bool    
          (xor (xor (and  LN10 LN49 ) LN33 ) LN234 )
)


(synth-fun skel ( (LN10 Bool) (LN33 Bool) (LN49 Bool) (LN234 Bool)  )  Bool    
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
		                                  LN234
          ))
          (depth3 Bool (
		                                  (and depth4 depth4)
		                                  (not depth4)
		                                  (or depth4 depth4)
		                                  (xor depth4 depth4)
		                                  LN33
		                                  LN49
          ))
          (depth4 Bool (
		                                  LN10
          )))
)


(declare-var LN10 Bool)
(declare-var LN33 Bool)
(declare-var LN49 Bool)
(declare-var LN234 Bool)

(constraint (= (origCir LN10 LN33 LN49 LN234 ) (skel LN10 LN33 LN49 LN234 )))


(check-synth)

