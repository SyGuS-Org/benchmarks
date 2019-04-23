
(set-logic BV)


(define-fun origCir ( (LN87 Bool) (LN108 Bool) (k7 Bool) (LN290 Bool) (LN294 Bool)  )  Bool    
          (not (not (xor  LN294(xor (xor (and  LN87 k7 ) LN108 ) LN290 ) ) ) )
)


(synth-fun skel ( (LN87 Bool) (LN108 Bool) (k7 Bool) (LN290 Bool) (LN294 Bool)  )  Bool    
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
		                                  LN294
          ))
          (depth4 Bool (
		                                  (and depth5 depth5)
		                                  (not depth5)
		                                  (or depth5 depth5)
		                                  (xor depth5 depth5)
		                                  LN290
          ))
          (depth5 Bool (
		                                  (and depth6 depth6)
		                                  (not depth6)
		                                  (or depth6 depth6)
		                                  (xor depth6 depth6)
		                                  LN87
		                                  LN108
          ))
          (depth6 Bool (
		                                  k7
          )))
)


(declare-var LN87 Bool)
(declare-var LN108 Bool)
(declare-var k7 Bool)
(declare-var LN290 Bool)
(declare-var LN294 Bool)

(constraint (= (origCir LN87 LN108 k7 LN290 LN294 ) (skel LN87 LN108 k7 LN290 LN294 )))


(check-synth)

