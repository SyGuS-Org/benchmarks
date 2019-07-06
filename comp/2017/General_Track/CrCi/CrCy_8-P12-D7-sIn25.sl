
(set-logic BV)


(define-fun origCir ( (LN155 Bool) (LN162 Bool) (LN165 Bool)  )  Bool    
          (xor (xor  LN155 LN162 ) LN165 )
)


(synth-fun skel ( (LN155 Bool) (LN162 Bool) (LN165 Bool)  )  Bool    
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
		                                  LN155
          ))
          (depth6 Bool (
		                                  LN162
		                                  LN165
          )))
)


(declare-var LN155 Bool)
(declare-var LN162 Bool)
(declare-var LN165 Bool)

(constraint (= (origCir LN155 LN162 LN165 ) (skel LN155 LN162 LN165 )))


(check-synth)

