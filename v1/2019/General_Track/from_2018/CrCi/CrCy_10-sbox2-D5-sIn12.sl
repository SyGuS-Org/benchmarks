
(set-logic BV)


(define-fun origCir ( (LN1 Bool) (LN39 Bool) (LN56 Bool) (LN65 Bool) (LN166 Bool)  )  Bool    
          (xor (xor (and (and (xor  LN1 LN39 )(xor  LN1 LN39 ) ) LN166 ) LN56 ) LN65 )
)


(synth-fun skel ( (LN1 Bool) (LN39 Bool) (LN56 Bool) (LN65 Bool) (LN166 Bool)  )  Bool    
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
		                                  LN65
		                                  LN166
          ))
          (depth3 Bool (
		                                  (and depth4 depth4)
		                                  (not depth4)
		                                  (or depth4 depth4)
		                                  (xor depth4 depth4)
		                                  LN39
		                                  LN56
          ))
          (depth4 Bool (
		                                  LN1
          )))
)


(declare-var LN1 Bool)
(declare-var LN39 Bool)
(declare-var LN56 Bool)
(declare-var LN65 Bool)
(declare-var LN166 Bool)

(constraint (= (origCir LN1 LN39 LN56 LN65 LN166 ) (skel LN1 LN39 LN56 LN65 LN166 )))


(check-synth)

