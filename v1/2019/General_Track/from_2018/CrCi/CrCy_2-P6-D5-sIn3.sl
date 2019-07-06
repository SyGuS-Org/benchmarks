
(set-logic BV)


(define-fun origCir ( (LN10 Bool) (LN30 Bool) (LN32 Bool) (LN42 Bool)  )  Bool    
          (xor (xor (xor  LN30 LN32 ) LN42 ) LN10 )
)


(synth-fun skel ( (LN10 Bool) (LN30 Bool) (LN32 Bool) (LN42 Bool)  )  Bool    
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
          ))
          (depth3 Bool (
		                                  (and depth4 depth4)
		                                  (not depth4)
		                                  (or depth4 depth4)
		                                  (xor depth4 depth4)
		                                  LN32
          ))
          (depth4 Bool (
		                                  LN30
		                                  LN42
          )))
)


(declare-var LN10 Bool)
(declare-var LN30 Bool)
(declare-var LN32 Bool)
(declare-var LN42 Bool)

(constraint (= (origCir LN10 LN30 LN32 LN42 ) (skel LN10 LN30 LN32 LN42 )))


(check-synth)

