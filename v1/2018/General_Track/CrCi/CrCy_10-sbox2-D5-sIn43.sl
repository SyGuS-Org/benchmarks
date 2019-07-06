
(set-logic BV)


(define-fun origCir ( (LN1 Bool) (LN92 Bool) (LN100 Bool) (LN113 Bool)  )  Bool    
          (xor  LN113(xor  LN100(and  LN92 LN1 ) ) )
)


(synth-fun skel ( (LN1 Bool) (LN92 Bool) (LN100 Bool) (LN113 Bool)  )  Bool    
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
		                                  LN92
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
		                                  LN113
          ))
          (depth4 Bool (
		                                  LN1
          )))
)


(declare-var LN1 Bool)
(declare-var LN92 Bool)
(declare-var LN100 Bool)
(declare-var LN113 Bool)

(constraint (= (origCir LN1 LN92 LN100 LN113 ) (skel LN1 LN92 LN100 LN113 )))


(check-synth)

