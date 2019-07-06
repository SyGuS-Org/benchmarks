
(set-logic BV)


(define-fun origCir ( (LN43 Bool) (LN47 Bool) (k4 Bool) (LN155 Bool) (LN158 Bool)  )  Bool    
          (not (not (not (not (xor  LN158(xor (xor (and  LN47 k4 ) LN43 ) LN155 ) ) ) ) ) )
)


(synth-fun skel ( (LN43 Bool) (LN47 Bool) (k4 Bool) (LN155 Bool) (LN158 Bool)  )  Bool    
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
		                                  LN158
          ))
          (depth6 Bool (
		                                  (and depth7 depth7)
		                                  (not depth7)
		                                  (or depth7 depth7)
		                                  (xor depth7 depth7)
		                                  LN155
          ))
          (depth7 Bool (
		                                  (and depth8 depth8)
		                                  (not depth8)
		                                  (or depth8 depth8)
		                                  (xor depth8 depth8)
		                                  LN43
		                                  LN47
          ))
          (depth8 Bool (
		                                  k4
          )))
)


(declare-var LN43 Bool)
(declare-var LN47 Bool)
(declare-var k4 Bool)
(declare-var LN155 Bool)
(declare-var LN158 Bool)

(constraint (= (origCir LN43 LN47 k4 LN155 LN158 ) (skel LN43 LN47 k4 LN155 LN158 )))


(check-synth)

