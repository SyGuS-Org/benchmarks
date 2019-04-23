
(set-logic BV)


(define-fun origCir ( (LN38 Bool) (LN44 Bool) (LN45 Bool) (r4 Bool)  )  Bool    
          (xor (xor (xor  LN38 LN45 ) LN44 ) r4 )
)


(synth-fun skel ( (LN38 Bool) (LN44 Bool) (LN45 Bool) (r4 Bool)  )  Bool    
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
		                                  LN45
          ))
          (depth3 Bool (
		                                  (and depth4 depth4)
		                                  (not depth4)
		                                  (or depth4 depth4)
		                                  (xor depth4 depth4)
		                                  LN44
          ))
          (depth4 Bool (
		                                  LN38
          )))
)


(declare-var LN38 Bool)
(declare-var LN44 Bool)
(declare-var LN45 Bool)
(declare-var r4 Bool)

(constraint (= (origCir LN38 LN44 LN45 r4 ) (skel LN38 LN44 LN45 r4 )))


(check-synth)

