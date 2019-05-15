
(set-logic BV)


(define-fun origCir ( (LN44 Bool) (LN45 Bool) (LN46 Bool) (r4 Bool)  )  Bool    
          (xor (xor (xor  LN45 LN46 ) r4 ) LN44 )
)


(synth-fun skel ( (LN44 Bool) (LN45 Bool) (LN46 Bool) (r4 Bool)  )  Bool    
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
		                                  r4
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
		                                  LN46
          ))
          (depth4 Bool (
		                                  LN44
		                                  LN45
          )))
)


(declare-var LN44 Bool)
(declare-var LN45 Bool)
(declare-var LN46 Bool)
(declare-var r4 Bool)

(constraint (= (origCir LN44 LN45 LN46 r4 ) (skel LN44 LN45 LN46 r4 )))


(check-synth)

