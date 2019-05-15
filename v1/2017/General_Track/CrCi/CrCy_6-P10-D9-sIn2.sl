
(set-logic BV)


(define-fun origCir ( (LN8 Bool) (k4 Bool) (LN75 Bool) (LN88 Bool) (LN92 Bool)  )  Bool    
          (not (not (not (not (xor  LN92(xor (xor  LN75(and  LN8 k4 ) ) LN88 ) ) ) ) ) )
)


(synth-fun skel ( (LN8 Bool) (k4 Bool) (LN75 Bool) (LN88 Bool) (LN92 Bool)  )  Bool    
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
		                                  LN92
          ))
          (depth6 Bool (
		                                  (and depth7 depth7)
		                                  (not depth7)
		                                  (or depth7 depth7)
		                                  (xor depth7 depth7)
		                                  LN88
          ))
          (depth7 Bool (
		                                  (and depth8 depth8)
		                                  (not depth8)
		                                  (or depth8 depth8)
		                                  (xor depth8 depth8)
		                                  LN8
		                                  LN75
          ))
          (depth8 Bool (
		                                  k4
          )))
)


(declare-var LN8 Bool)
(declare-var k4 Bool)
(declare-var LN75 Bool)
(declare-var LN88 Bool)
(declare-var LN92 Bool)

(constraint (= (origCir LN8 k4 LN75 LN88 LN92 ) (skel LN8 k4 LN75 LN88 LN92 )))


(check-synth)

