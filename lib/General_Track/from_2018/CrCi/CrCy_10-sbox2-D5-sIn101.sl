
(set-logic BV)


(define-fun origCir ( (LN80 Bool) (LN196 Bool) (LN213 Bool) (LN222 Bool) (LN259 Bool)  )  Bool    
          (xor (xor (xor (xor  LN213 LN222 ) LN196 ) LN259 ) LN80 )
)


(synth-fun skel ( (LN80 Bool) (LN196 Bool) (LN213 Bool) (LN222 Bool) (LN259 Bool)  )  Bool    
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
		                                  LN80
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
		                                  LN222
          ))
          (depth4 Bool (
		                                  LN196
		                                  LN213
		                                  LN259
          )))
)


(declare-var LN80 Bool)
(declare-var LN196 Bool)
(declare-var LN213 Bool)
(declare-var LN222 Bool)
(declare-var LN259 Bool)

(constraint (= (origCir LN80 LN196 LN213 LN222 LN259 ) (skel LN80 LN196 LN213 LN222 LN259 )))


(check-synth)

