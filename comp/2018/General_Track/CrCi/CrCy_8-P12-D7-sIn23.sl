
(set-logic BV)


(define-fun origCir ( (LN198 Bool) (LN205 Bool) (LN367 Bool)  )  Bool    
          (not (not (xor (not (xor  LN198 LN205 ) ) LN367 ) ) )
)


(synth-fun skel ( (LN198 Bool) (LN205 Bool) (LN367 Bool)  )  Bool    
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
		                                  LN367
          ))
          (depth5 Bool (
		                                  (and depth6 depth6)
		                                  (not depth6)
		                                  (or depth6 depth6)
		                                  (xor depth6 depth6)
		                                  LN198
          ))
          (depth6 Bool (
		                                  LN205
          )))
)


(declare-var LN198 Bool)
(declare-var LN205 Bool)
(declare-var LN367 Bool)

(constraint (= (origCir LN198 LN205 LN367 ) (skel LN198 LN205 LN367 )))


(check-synth)

