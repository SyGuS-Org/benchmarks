
(set-logic BV)


(define-fun origCir ( (LN135 Bool) (LN142 Bool) (LN326 Bool)  )  Bool    
          (not (not (xor (not (xor  LN135 LN142 ) ) LN326 ) ) )
)


(synth-fun skel ( (LN135 Bool) (LN142 Bool) (LN326 Bool)  )  Bool    
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
		                                  LN326
          ))
          (depth5 Bool (
		                                  (and depth6 depth6)
		                                  (not depth6)
		                                  (or depth6 depth6)
		                                  (xor depth6 depth6)
		                                  LN135
          ))
          (depth6 Bool (
		                                  LN142
          )))
)


(declare-var LN135 Bool)
(declare-var LN142 Bool)
(declare-var LN326 Bool)

(constraint (= (origCir LN135 LN142 LN326 ) (skel LN135 LN142 LN326 )))


(check-synth)

