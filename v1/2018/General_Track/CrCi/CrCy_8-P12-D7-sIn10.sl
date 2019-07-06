
(set-logic BV)


(define-fun origCir ( (LN84 Bool) (LN108 Bool) (k6 Bool) (LN113 Bool) (LN115 Bool)  )  Bool    
          (xor (xor (xor  LN108(and  LN84 k6 ) ) LN113 ) LN115 )
)


(synth-fun skel ( (LN84 Bool) (LN108 Bool) (k6 Bool) (LN113 Bool) (LN115 Bool)  )  Bool    
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
          ))
          (depth5 Bool (
		                                  (and depth6 depth6)
		                                  (not depth6)
		                                  (or depth6 depth6)
		                                  (xor depth6 depth6)
		                                  LN84
		                                  LN108
		                                  LN113
		                                  LN115
          ))
          (depth6 Bool (
		                                  k6
          )))
)


(declare-var LN84 Bool)
(declare-var LN108 Bool)
(declare-var k6 Bool)
(declare-var LN113 Bool)
(declare-var LN115 Bool)

(constraint (= (origCir LN84 LN108 k6 LN113 LN115 ) (skel LN84 LN108 k6 LN113 LN115 )))


(check-synth)

