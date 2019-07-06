
(set-logic BV)


(define-fun origCir ( (LN150 Bool) (LN171 Bool) (k7 Bool) (LN331 Bool) (LN335 Bool)  )  Bool    
          (not (not (xor  LN335(xor (xor (and  LN150 k7 ) LN171 ) LN331 ) ) ) )
)


(synth-fun skel ( (LN150 Bool) (LN171 Bool) (k7 Bool) (LN331 Bool) (LN335 Bool)  )  Bool    
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
		                                  LN335
          ))
          (depth4 Bool (
		                                  (and depth5 depth5)
		                                  (not depth5)
		                                  (or depth5 depth5)
		                                  (xor depth5 depth5)
		                                  LN331
          ))
          (depth5 Bool (
		                                  (and depth6 depth6)
		                                  (not depth6)
		                                  (or depth6 depth6)
		                                  (xor depth6 depth6)
		                                  LN150
		                                  LN171
          ))
          (depth6 Bool (
		                                  k7
          )))
)


(declare-var LN150 Bool)
(declare-var LN171 Bool)
(declare-var k7 Bool)
(declare-var LN331 Bool)
(declare-var LN335 Bool)

(constraint (= (origCir LN150 LN171 k7 LN331 LN335 ) (skel LN150 LN171 k7 LN331 LN335 )))


(check-synth)

