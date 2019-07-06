
(set-logic BV)


(define-fun origCir ( (LN68 Bool) (k4 Bool) (LN96 Bool)  )  Bool    
          (xor (not (not (and  LN68 k4 ) ) ) LN96 )
)


(synth-fun skel ( (LN68 Bool) (k4 Bool) (LN96 Bool)  )  Bool    
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
		                                  LN96
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
		                                  LN68
          ))
          (depth4 Bool (
		                                  k4
          )))
)


(declare-var LN68 Bool)
(declare-var k4 Bool)
(declare-var LN96 Bool)

(constraint (= (origCir LN68 k4 LN96 ) (skel LN68 k4 LN96 )))


(check-synth)

