
(set-logic BV)


(define-fun origCir ( (LN68 Bool) (k4 Bool) (LN106 Bool)  )  Bool    
          (not (not (xor (not (not (and  LN68 k4 ) ) ) LN106 ) ) )
)


(synth-fun skel ( (LN68 Bool) (k4 Bool) (LN106 Bool)  )  Bool    
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
		                                  LN106
          ))
          (depth4 Bool (
		                                  (and depth5 depth5)
		                                  (not depth5)
		                                  (or depth5 depth5)
		                                  (xor depth5 depth5)
          ))
          (depth5 Bool (
		                                  (and depth6 depth6)
		                                  (not depth6)
		                                  (or depth6 depth6)
		                                  (xor depth6 depth6)
		                                  LN68
          ))
          (depth6 Bool (
		                                  k4
          )))
)


(declare-var LN68 Bool)
(declare-var k4 Bool)
(declare-var LN106 Bool)

(constraint (= (origCir LN68 k4 LN106 ) (skel LN68 k4 LN106 )))


(check-synth)

