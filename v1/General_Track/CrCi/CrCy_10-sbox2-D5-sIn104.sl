
(set-logic BV)


(define-fun origCir ( (LN70 Bool) (LN77 Bool) (LN196 Bool) (LN213 Bool) (LN222 Bool) (LN259 Bool)  )  Bool    
          (and  LN77(and  LN70(xor (xor (xor  LN213 LN222 ) LN196 ) LN259 ) ) )
)


(synth-fun skel ( (LN70 Bool) (LN77 Bool) (LN196 Bool) (LN213 Bool) (LN222 Bool) (LN259 Bool)  )  Bool    
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
		                                  LN77
          ))
          (depth3 Bool (
		                                  (and depth4 depth4)
		                                  (not depth4)
		                                  (or depth4 depth4)
		                                  (xor depth4 depth4)
		                                  LN70
		                                  LN222
          ))
          (depth4 Bool (
		                                  LN196
		                                  LN213
		                                  LN259
          )))
)


(declare-var LN70 Bool)
(declare-var LN77 Bool)
(declare-var LN196 Bool)
(declare-var LN213 Bool)
(declare-var LN222 Bool)
(declare-var LN259 Bool)

(constraint (= (origCir LN70 LN77 LN196 LN213 LN222 LN259 ) (skel LN70 LN77 LN196 LN213 LN222 LN259 )))


(check-synth)

