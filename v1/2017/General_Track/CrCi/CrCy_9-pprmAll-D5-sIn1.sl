
(set-logic BV)


(define-fun origCir ( (LN2254 Bool) (k3 Bool) (k4 Bool) (k5 Bool) (k6 Bool) (k7 Bool) (LN2262 Bool) (LN2275 Bool) (LN2288 Bool) (LN2301 Bool)  )  Bool    
          (xor (xor (xor (xor (and (and (and (and (and  LN2254 k3 ) k4 ) k5 ) k6 ) k7 ) LN2262 ) LN2275 ) LN2288 ) LN2301 )
)


(synth-fun skel ( (LN2254 Bool) (k3 Bool) (k4 Bool) (k5 Bool) (k6 Bool) (k7 Bool) (LN2262 Bool) (LN2275 Bool) (LN2288 Bool) (LN2301 Bool)  )  Bool    
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
		                                  LN2254
		                                  LN2262
		                                  LN2275
		                                  LN2288
		                                  LN2301
          ))
          (depth4 Bool (
		                                  k3
		                                  k4
		                                  k5
		                                  k6
		                                  k7
          )))
)


(declare-var LN2254 Bool)
(declare-var k3 Bool)
(declare-var k4 Bool)
(declare-var k5 Bool)
(declare-var k6 Bool)
(declare-var k7 Bool)
(declare-var LN2262 Bool)
(declare-var LN2275 Bool)
(declare-var LN2288 Bool)
(declare-var LN2301 Bool)

(constraint (= (origCir LN2254 k3 k4 k5 k6 k7 LN2262 LN2275 LN2288 LN2301 ) (skel LN2254 k3 k4 k5 k6 k7 LN2262 LN2275 LN2288 LN2301 )))


(check-synth)

