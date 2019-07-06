
(set-logic BV)


(define-fun origCir ( (LN52 Bool) (LN59 Bool) (LN104 Bool)  )  Bool    
          (not (not (xor (not (xor  LN52 LN59 ) ) LN104 ) ) )
)


(synth-fun skel ( (LN52 Bool) (LN59 Bool) (LN104 Bool)  )  Bool    
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
		                                  LN104
          ))
          (depth5 Bool (
		                                  (and depth6 depth6)
		                                  (not depth6)
		                                  (or depth6 depth6)
		                                  (xor depth6 depth6)
		                                  LN52
          ))
          (depth6 Bool (
		                                  LN59
          )))
)


(declare-var LN52 Bool)
(declare-var LN59 Bool)
(declare-var LN104 Bool)

(constraint (= (origCir LN52 LN59 LN104 ) (skel LN52 LN59 LN104 )))


(check-synth)

