
(set-logic BV)


(define-fun origCir ( (LN4 Bool) (LN25 Bool) (k7 Bool) (LN68 Bool)  )  Bool    
          (xor (xor (and  LN4 k7 ) LN25 ) LN68 )
)


(synth-fun skel ( (LN4 Bool) (LN25 Bool) (k7 Bool) (LN68 Bool)  )  Bool    
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
		                                  LN68
          ))
          (depth3 Bool (
		                                  (and depth4 depth4)
		                                  (not depth4)
		                                  (or depth4 depth4)
		                                  (xor depth4 depth4)
		                                  LN4
		                                  LN25
          ))
          (depth4 Bool (
		                                  k7
          )))
)


(declare-var LN4 Bool)
(declare-var LN25 Bool)
(declare-var k7 Bool)
(declare-var LN68 Bool)

(constraint (= (origCir LN4 LN25 k7 LN68 ) (skel LN4 LN25 k7 LN68 )))


(check-synth)

