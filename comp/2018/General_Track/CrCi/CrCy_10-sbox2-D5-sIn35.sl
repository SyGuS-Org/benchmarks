
(set-logic BV)


(define-fun origCir ( (LN1 Bool) (LN39 Bool) (LN69 Bool) (LN174 Bool)  )  Bool    
          (xor  LN69(xor (not (xor  LN1 LN39 ) ) LN174 ) )
)


(synth-fun skel ( (LN1 Bool) (LN39 Bool) (LN69 Bool) (LN174 Bool)  )  Bool    
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
		                                  LN69
          ))
          (depth2 Bool (
		                                  (and depth3 depth3)
		                                  (not depth3)
		                                  (or depth3 depth3)
		                                  (xor depth3 depth3)
		                                  LN174
          ))
          (depth3 Bool (
		                                  (and depth4 depth4)
		                                  (not depth4)
		                                  (or depth4 depth4)
		                                  (xor depth4 depth4)
		                                  LN39
          ))
          (depth4 Bool (
		                                  LN1
          )))
)


(declare-var LN1 Bool)
(declare-var LN39 Bool)
(declare-var LN69 Bool)
(declare-var LN174 Bool)

(constraint (= (origCir LN1 LN39 LN69 LN174 ) (skel LN1 LN39 LN69 LN174 )))


(check-synth)

