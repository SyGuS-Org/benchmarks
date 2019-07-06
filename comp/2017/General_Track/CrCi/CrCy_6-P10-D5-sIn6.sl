
(set-logic BV)


(define-fun origCir ( (LN8 Bool) (k4 Bool) (LN17 Bool) (LN100 Bool)  )  Bool    
          (xor (xor  LN17(and  LN8 k4 ) ) LN100 )
)


(synth-fun skel ( (LN8 Bool) (k4 Bool) (LN17 Bool) (LN100 Bool)  )  Bool    
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
		                                  LN100
          ))
          (depth3 Bool (
		                                  (and depth4 depth4)
		                                  (not depth4)
		                                  (or depth4 depth4)
		                                  (xor depth4 depth4)
		                                  LN8
		                                  LN17
          ))
          (depth4 Bool (
		                                  k4
          )))
)


(declare-var LN8 Bool)
(declare-var k4 Bool)
(declare-var LN17 Bool)
(declare-var LN100 Bool)

(constraint (= (origCir LN8 k4 LN17 LN100 ) (skel LN8 k4 LN17 LN100 )))


(check-synth)

