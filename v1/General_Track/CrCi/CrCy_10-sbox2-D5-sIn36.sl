
(set-logic BV)


(define-fun origCir ( (LN4 Bool) (LN44 Bool) (LN90 Bool)  )  Bool    
          (and  LN90(xor  LN4 LN44 ) )
)


(synth-fun skel ( (LN4 Bool) (LN44 Bool) (LN90 Bool)  )  Bool    
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
		                                  LN90
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
		                                  LN44
          ))
          (depth4 Bool (
		                                  LN4
          )))
)


(declare-var LN4 Bool)
(declare-var LN44 Bool)
(declare-var LN90 Bool)

(constraint (= (origCir LN4 LN44 LN90 ) (skel LN4 LN44 LN90 )))


(check-synth)

