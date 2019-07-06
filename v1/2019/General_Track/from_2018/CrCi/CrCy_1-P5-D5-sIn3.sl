
(set-logic BV)


(define-fun origCir ( (LN10 Bool) (LN32 Bool) (LN41 Bool)  )  Bool    
          (xor (xor  LN32 LN41 ) LN10 )
)


(synth-fun skel ( (LN10 Bool) (LN32 Bool) (LN41 Bool)  )  Bool    
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
		                                  LN10
          ))
          (depth2 Bool (
		                                  (and depth3 depth3)
		                                  (not depth3)
		                                  (or depth3 depth3)
		                                  (xor depth3 depth3)
		                                  LN32
          ))
          (depth3 Bool (
		                                  (and depth4 depth4)
		                                  (not depth4)
		                                  (or depth4 depth4)
		                                  (xor depth4 depth4)
          ))
          (depth4 Bool (
		                                  LN41
          )))
)


(declare-var LN10 Bool)
(declare-var LN32 Bool)
(declare-var LN41 Bool)

(constraint (= (origCir LN10 LN32 LN41 ) (skel LN10 LN32 LN41 )))


(check-synth)

