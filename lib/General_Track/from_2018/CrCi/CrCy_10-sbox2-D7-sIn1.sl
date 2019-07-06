
(set-logic BV)


(define-fun origCir ( (LN17 Bool) (k7 Bool) (LN34 Bool) (LN40 Bool) (LN47 Bool) (LN56 Bool) (LN65 Bool) (LN75 Bool)  )  Bool    
          (xor (xor (xor (xor (and  LN40(xor (xor  k7 LN17 ) LN34 ) ) LN56 ) LN65 ) LN47 ) LN75 )
)


(synth-fun skel ( (LN17 Bool) (k7 Bool) (LN34 Bool) (LN40 Bool) (LN47 Bool) (LN56 Bool) (LN65 Bool) (LN75 Bool)  )  Bool    
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
		                                  LN75
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
		                                  LN47
		                                  LN65
          ))
          (depth4 Bool (
		                                  (and depth5 depth5)
		                                  (not depth5)
		                                  (or depth5 depth5)
		                                  (xor depth5 depth5)
		                                  LN34
		                                  LN40
		                                  LN56
          ))
          (depth5 Bool (
		                                  (and depth6 depth6)
		                                  (not depth6)
		                                  (or depth6 depth6)
		                                  (xor depth6 depth6)
		                                  LN17
          ))
          (depth6 Bool (
		                                  k7
          )))
)


(declare-var LN17 Bool)
(declare-var k7 Bool)
(declare-var LN34 Bool)
(declare-var LN40 Bool)
(declare-var LN47 Bool)
(declare-var LN56 Bool)
(declare-var LN65 Bool)
(declare-var LN75 Bool)

(constraint (= (origCir LN17 k7 LN34 LN40 LN47 LN56 LN65 LN75 ) (skel LN17 k7 LN34 LN40 LN47 LN56 LN65 LN75 )))


(check-synth)

