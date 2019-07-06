
(set-logic BV)


(define-fun origCir ( (LN2254 Bool) (k3 Bool) (k4 Bool) (k5 Bool) (k6 Bool) (k7 Bool) (LN2262 Bool) (LN2275 Bool) (LN2288 Bool) (LN2301 Bool) (LN2314 Bool) (LN2325 Bool) (LN2336 Bool) (LN2347 Bool) (LN2358 Bool) (LN2369 Bool) (LN2380 Bool) (LN2391 Bool) (LN2402 Bool) (LN2413 Bool) (LN2424 Bool) (LN2435 Bool) (LN2446 Bool) (LN2457 Bool) (LN2468 Bool) (LN2479 Bool) (LN2490 Bool) (LN2501 Bool) (LN2510 Bool) (LN2519 Bool) (LN2528 Bool) (LN2537 Bool) (LN2546 Bool) (LN2555 Bool)  )  Bool    
          (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (and (and (and (and (and  LN2254 k3 ) k4 ) k5 ) k6 ) k7 ) LN2262 ) LN2275 ) LN2288 ) LN2301 ) LN2314 ) LN2325 ) LN2336 ) LN2347 ) LN2358 ) LN2369 ) LN2380 ) LN2391 ) LN2402 ) LN2413 ) LN2424 ) LN2435 ) LN2446 ) LN2457 ) LN2468 ) LN2479 ) LN2490 ) LN2501 ) LN2510 ) LN2519 ) LN2528 ) LN2537 ) LN2546 ) LN2555 )
)


(synth-fun skel ( (LN2254 Bool) (k3 Bool) (k4 Bool) (k5 Bool) (k6 Bool) (k7 Bool) (LN2262 Bool) (LN2275 Bool) (LN2288 Bool) (LN2301 Bool) (LN2314 Bool) (LN2325 Bool) (LN2336 Bool) (LN2347 Bool) (LN2358 Bool) (LN2369 Bool) (LN2380 Bool) (LN2391 Bool) (LN2402 Bool) (LN2413 Bool) (LN2424 Bool) (LN2435 Bool) (LN2446 Bool) (LN2457 Bool) (LN2468 Bool) (LN2479 Bool) (LN2490 Bool) (LN2501 Bool) (LN2510 Bool) (LN2519 Bool) (LN2528 Bool) (LN2537 Bool) (LN2546 Bool) (LN2555 Bool)  )  Bool    
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
		                                  LN2254
		                                  LN2262
		                                  LN2275
		                                  LN2288
		                                  LN2301
		                                  LN2314
		                                  LN2325
		                                  LN2336
		                                  LN2347
		                                  LN2358
		                                  LN2369
		                                  LN2380
		                                  LN2391
		                                  LN2402
		                                  LN2413
		                                  LN2424
		                                  LN2435
		                                  LN2446
		                                  LN2457
		                                  LN2468
		                                  LN2479
		                                  LN2490
		                                  LN2501
		                                  LN2510
		                                  LN2519
		                                  LN2528
		                                  LN2537
		                                  LN2546
		                                  LN2555
          ))
          (depth6 Bool (
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
(declare-var LN2314 Bool)
(declare-var LN2325 Bool)
(declare-var LN2336 Bool)
(declare-var LN2347 Bool)
(declare-var LN2358 Bool)
(declare-var LN2369 Bool)
(declare-var LN2380 Bool)
(declare-var LN2391 Bool)
(declare-var LN2402 Bool)
(declare-var LN2413 Bool)
(declare-var LN2424 Bool)
(declare-var LN2435 Bool)
(declare-var LN2446 Bool)
(declare-var LN2457 Bool)
(declare-var LN2468 Bool)
(declare-var LN2479 Bool)
(declare-var LN2490 Bool)
(declare-var LN2501 Bool)
(declare-var LN2510 Bool)
(declare-var LN2519 Bool)
(declare-var LN2528 Bool)
(declare-var LN2537 Bool)
(declare-var LN2546 Bool)
(declare-var LN2555 Bool)

(constraint (= (origCir LN2254 k3 k4 k5 k6 k7 LN2262 LN2275 LN2288 LN2301 LN2314 LN2325 LN2336 LN2347 LN2358 LN2369 LN2380 LN2391 LN2402 LN2413 LN2424 LN2435 LN2446 LN2457 LN2468 LN2479 LN2490 LN2501 LN2510 LN2519 LN2528 LN2537 LN2546 LN2555 ) (skel LN2254 k3 k4 k5 k6 k7 LN2262 LN2275 LN2288 LN2301 LN2314 LN2325 LN2336 LN2347 LN2358 LN2369 LN2380 LN2391 LN2402 LN2413 LN2424 LN2435 LN2446 LN2457 LN2468 LN2479 LN2490 LN2501 LN2510 LN2519 LN2528 LN2537 LN2546 LN2555 )))


(check-synth)

