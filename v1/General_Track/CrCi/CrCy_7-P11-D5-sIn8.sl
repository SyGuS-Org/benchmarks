
(set-logic BV)


(define-fun origCir ( (LN52 Bool) (LN59 Bool) (LN92 Bool)  )  Bool    
          (xor (not (xor  LN52 LN59 ) ) LN92 )
)


(synth-fun skel ( (LN52 Bool) (LN59 Bool) (LN92 Bool)  )  Bool    
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
		                                  LN92
          ))
          (depth3 Bool (
		                                  (and depth4 depth4)
		                                  (not depth4)
		                                  (or depth4 depth4)
		                                  (xor depth4 depth4)
		                                  LN52
          ))
          (depth4 Bool (
		                                  LN59
          )))
)


(declare-var LN52 Bool)
(declare-var LN59 Bool)
(declare-var LN92 Bool)

(constraint (= (origCir LN52 LN59 LN92 ) (skel LN52 LN59 LN92 )))


(check-synth)

