
(set-logic BV)


(define-fun origCir ( (LN1 Bool) (LN33 Bool) (LN213 Bool) (LN221 Bool)  )  Bool    
          (xor  LN213(xor (not (and  LN1 LN33 ) ) LN221 ) )
)


(synth-fun skel ( (LN1 Bool) (LN33 Bool) (LN213 Bool) (LN221 Bool)  )  Bool    
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
		                                  LN213
          ))
          (depth2 Bool (
		                                  (and depth3 depth3)
		                                  (not depth3)
		                                  (or depth3 depth3)
		                                  (xor depth3 depth3)
		                                  LN221
          ))
          (depth3 Bool (
		                                  (and depth4 depth4)
		                                  (not depth4)
		                                  (or depth4 depth4)
		                                  (xor depth4 depth4)
		                                  LN33
          ))
          (depth4 Bool (
		                                  LN1
          )))
)


(declare-var LN1 Bool)
(declare-var LN33 Bool)
(declare-var LN213 Bool)
(declare-var LN221 Bool)

(constraint (= (origCir LN1 LN33 LN213 LN221 ) (skel LN1 LN33 LN213 LN221 )))


(check-synth)

