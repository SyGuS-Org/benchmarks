
(set-logic BV)


(define-fun origCir ( (LN88 Bool) (LN107 Bool) (LN187 Bool)  )  Bool    
          (xor (and  LN88 LN187 ) LN107 )
)


(synth-fun skel ( (LN88 Bool) (LN107 Bool) (LN187 Bool)  )  Bool    
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
		                                  LN88
          ))
          (depth2 Bool (
		                                  (and depth3 depth3)
		                                  (not depth3)
		                                  (or depth3 depth3)
		                                  (xor depth3 depth3)
		                                  LN107
          ))
          (depth3 Bool (
		                                  (and depth4 depth4)
		                                  (not depth4)
		                                  (or depth4 depth4)
		                                  (xor depth4 depth4)
          ))
          (depth4 Bool (
		                                  LN187
          )))
)


(declare-var LN88 Bool)
(declare-var LN107 Bool)
(declare-var LN187 Bool)

(constraint (= (origCir LN88 LN107 LN187 ) (skel LN88 LN107 LN187 )))


(check-synth)

