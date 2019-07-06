
(set-logic BV)


(define-fun origCir ( (LN8 Bool) (k4 Bool) (LN17 Bool) (LN252 Bool) (LN257 Bool)  )  Bool    
          (not (not (xor  LN257(xor (xor  LN17(and  LN8 k4 ) ) LN252 ) ) ) )
)


(synth-fun skel ( (LN8 Bool) (k4 Bool) (LN17 Bool) (LN252 Bool) (LN257 Bool)  )  Bool    
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
		                                  LN257
          ))
          (depth4 Bool (
		                                  (and depth5 depth5)
		                                  (not depth5)
		                                  (or depth5 depth5)
		                                  (xor depth5 depth5)
		                                  LN252
          ))
          (depth5 Bool (
		                                  (and depth6 depth6)
		                                  (not depth6)
		                                  (or depth6 depth6)
		                                  (xor depth6 depth6)
		                                  LN8
		                                  LN17
          ))
          (depth6 Bool (
		                                  k4
          )))
)


(declare-var LN8 Bool)
(declare-var k4 Bool)
(declare-var LN17 Bool)
(declare-var LN252 Bool)
(declare-var LN257 Bool)

(constraint (= (origCir LN8 k4 LN17 LN252 LN257 ) (skel LN8 k4 LN17 LN252 LN257 )))


(check-synth)

