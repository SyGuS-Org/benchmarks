
(set-logic BV)


(define-fun origCir ( (LN2254 Bool) (k3 Bool) (k4 Bool) (k5 Bool) (k6 Bool) (k7 Bool) (LN2262 Bool) (LN2275 Bool) (LN2288 Bool) (LN2301 Bool) (LN2314 Bool) (LN2325 Bool) (LN2336 Bool) (LN2347 Bool) (LN2358 Bool) (LN2369 Bool) (LN2380 Bool) (LN2391 Bool) (LN2402 Bool) (LN2413 Bool) (LN2424 Bool) (LN2435 Bool) (LN2446 Bool) (LN2457 Bool) (LN2468 Bool) (LN2479 Bool) (LN2490 Bool) (LN2501 Bool) (LN2510 Bool) (LN2519 Bool) (LN2528 Bool) (LN2537 Bool) (LN2546 Bool) (LN2555 Bool) (LN2564 Bool) (LN2573 Bool) (LN2582 Bool) (LN2591 Bool) (LN2600 Bool) (LN2609 Bool) (LN2618 Bool) (LN2627 Bool) (LN2636 Bool) (LN2645 Bool) (LN2654 Bool) (LN2663 Bool) (LN2672 Bool) (LN2681 Bool) (LN2690 Bool) (LN2699 Bool) (LN2708 Bool) (LN2717 Bool) (LN2726 Bool) (LN2735 Bool) (LN2744 Bool) (LN2753 Bool) (LN2762 Bool) (LN2771 Bool) (LN2780 Bool) (LN2789 Bool) (LN2798 Bool) (LN2805 Bool) (LN2812 Bool) (LN2819 Bool) (LN2826 Bool) (LN2833 Bool) (LN2840 Bool) (LN2847 Bool) (LN2854 Bool) (LN2861 Bool) (LN2868 Bool) (LN2875 Bool) (LN2882 Bool) (LN2889 Bool) (LN2896 Bool) (LN2903 Bool) (LN2910 Bool) (LN2917 Bool) (LN2924 Bool) (LN2931 Bool) (LN2938 Bool) (LN2945 Bool) (LN2952 Bool) (LN2959 Bool) (LN2966 Bool) (LN2973 Bool) (LN2980 Bool) (LN2987 Bool) (LN2994 Bool) (LN3001 Bool) (LN3008 Bool) (LN3015 Bool) (LN3022 Bool) (LN3029 Bool) (LN3036 Bool) (LN3043 Bool) (LN3050 Bool) (LN3055 Bool) (LN3060 Bool) (LN3065 Bool) (LN3070 Bool) (LN3075 Bool) (LN3080 Bool) (LN3085 Bool) (LN3090 Bool) (LN3095 Bool) (LN3100 Bool) (LN3105 Bool) (LN3110 Bool) (LN3115 Bool) (LN3120 Bool) (LN3125 Bool) (LN3130 Bool) (LN3135 Bool) (LN3140 Bool) (LN3145 Bool) (LN3150 Bool) (LN3155 Bool) (LN3160 Bool) (LN3165 Bool) (LN3170 Bool) (LN3175 Bool) (LN3180 Bool) (LN3185 Bool) (LN3190 Bool) (LN3195 Bool) (LN3200 Bool) (LN3205 Bool) (LN3210 Bool) (LN3215 Bool)  )  Bool    
          (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (xor (and (and (and (and (and  LN2254 k3 ) k4 ) k5 ) k6 ) k7 ) LN2262 ) LN2275 ) LN2288 ) LN2301 ) LN2314 ) LN2325 ) LN2336 ) LN2347 ) LN2358 ) LN2369 ) LN2380 ) LN2391 ) LN2402 ) LN2413 ) LN2424 ) LN2435 ) LN2446 ) LN2457 ) LN2468 ) LN2479 ) LN2490 ) LN2501 ) LN2510 ) LN2519 ) LN2528 ) LN2537 ) LN2546 ) LN2555 ) LN2564 ) LN2573 ) LN2582 ) LN2591 ) LN2600 ) LN2609 ) LN2618 ) LN2627 ) LN2636 ) LN2645 ) LN2654 ) LN2663 ) LN2672 ) LN2681 ) LN2690 ) LN2699 ) LN2708 ) LN2717 ) LN2726 ) LN2735 ) LN2744 ) LN2753 ) LN2762 ) LN2771 ) LN2780 ) LN2789 ) LN2798 ) LN2805 ) LN2812 ) LN2819 ) LN2826 ) LN2833 ) LN2840 ) LN2847 ) LN2854 ) LN2861 ) LN2868 ) LN2875 ) LN2882 ) LN2889 ) LN2896 ) LN2903 ) LN2910 ) LN2917 ) LN2924 ) LN2931 ) LN2938 ) LN2945 ) LN2952 ) LN2959 ) LN2966 ) LN2973 ) LN2980 ) LN2987 ) LN2994 ) LN3001 ) LN3008 ) LN3015 ) LN3022 ) LN3029 ) LN3036 ) LN3043 ) LN3050 ) LN3055 ) LN3060 ) LN3065 ) LN3070 ) LN3075 ) LN3080 ) LN3085 ) LN3090 ) LN3095 ) LN3100 ) LN3105 ) LN3110 ) LN3115 ) LN3120 ) LN3125 ) LN3130 ) LN3135 ) LN3140 ) LN3145 ) LN3150 ) LN3155 ) LN3160 ) LN3165 ) LN3170 ) LN3175 ) LN3180 ) LN3185 ) LN3190 ) LN3195 ) LN3200 ) LN3205 ) LN3210 ) LN3215 )
)


(synth-fun skel ( (LN2254 Bool) (k3 Bool) (k4 Bool) (k5 Bool) (k6 Bool) (k7 Bool) (LN2262 Bool) (LN2275 Bool) (LN2288 Bool) (LN2301 Bool) (LN2314 Bool) (LN2325 Bool) (LN2336 Bool) (LN2347 Bool) (LN2358 Bool) (LN2369 Bool) (LN2380 Bool) (LN2391 Bool) (LN2402 Bool) (LN2413 Bool) (LN2424 Bool) (LN2435 Bool) (LN2446 Bool) (LN2457 Bool) (LN2468 Bool) (LN2479 Bool) (LN2490 Bool) (LN2501 Bool) (LN2510 Bool) (LN2519 Bool) (LN2528 Bool) (LN2537 Bool) (LN2546 Bool) (LN2555 Bool) (LN2564 Bool) (LN2573 Bool) (LN2582 Bool) (LN2591 Bool) (LN2600 Bool) (LN2609 Bool) (LN2618 Bool) (LN2627 Bool) (LN2636 Bool) (LN2645 Bool) (LN2654 Bool) (LN2663 Bool) (LN2672 Bool) (LN2681 Bool) (LN2690 Bool) (LN2699 Bool) (LN2708 Bool) (LN2717 Bool) (LN2726 Bool) (LN2735 Bool) (LN2744 Bool) (LN2753 Bool) (LN2762 Bool) (LN2771 Bool) (LN2780 Bool) (LN2789 Bool) (LN2798 Bool) (LN2805 Bool) (LN2812 Bool) (LN2819 Bool) (LN2826 Bool) (LN2833 Bool) (LN2840 Bool) (LN2847 Bool) (LN2854 Bool) (LN2861 Bool) (LN2868 Bool) (LN2875 Bool) (LN2882 Bool) (LN2889 Bool) (LN2896 Bool) (LN2903 Bool) (LN2910 Bool) (LN2917 Bool) (LN2924 Bool) (LN2931 Bool) (LN2938 Bool) (LN2945 Bool) (LN2952 Bool) (LN2959 Bool) (LN2966 Bool) (LN2973 Bool) (LN2980 Bool) (LN2987 Bool) (LN2994 Bool) (LN3001 Bool) (LN3008 Bool) (LN3015 Bool) (LN3022 Bool) (LN3029 Bool) (LN3036 Bool) (LN3043 Bool) (LN3050 Bool) (LN3055 Bool) (LN3060 Bool) (LN3065 Bool) (LN3070 Bool) (LN3075 Bool) (LN3080 Bool) (LN3085 Bool) (LN3090 Bool) (LN3095 Bool) (LN3100 Bool) (LN3105 Bool) (LN3110 Bool) (LN3115 Bool) (LN3120 Bool) (LN3125 Bool) (LN3130 Bool) (LN3135 Bool) (LN3140 Bool) (LN3145 Bool) (LN3150 Bool) (LN3155 Bool) (LN3160 Bool) (LN3165 Bool) (LN3170 Bool) (LN3175 Bool) (LN3180 Bool) (LN3185 Bool) (LN3190 Bool) (LN3195 Bool) (LN3200 Bool) (LN3205 Bool) (LN3210 Bool) (LN3215 Bool)  )  Bool    
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
          ))
          (depth6 Bool (
		                                  (and depth7 depth7)
		                                  (not depth7)
		                                  (or depth7 depth7)
		                                  (xor depth7 depth7)
          ))
          (depth7 Bool (
		                                  (and depth8 depth8)
		                                  (not depth8)
		                                  (or depth8 depth8)
		                                  (xor depth8 depth8)
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
		                                  LN2564
		                                  LN2573
		                                  LN2582
		                                  LN2591
		                                  LN2600
		                                  LN2609
		                                  LN2618
		                                  LN2627
		                                  LN2636
		                                  LN2645
		                                  LN2654
		                                  LN2663
		                                  LN2672
		                                  LN2681
		                                  LN2690
		                                  LN2699
		                                  LN2708
		                                  LN2717
		                                  LN2726
		                                  LN2735
		                                  LN2744
		                                  LN2753
		                                  LN2762
		                                  LN2771
		                                  LN2780
		                                  LN2789
		                                  LN2798
		                                  LN2805
		                                  LN2812
		                                  LN2819
		                                  LN2826
		                                  LN2833
		                                  LN2840
		                                  LN2847
		                                  LN2854
		                                  LN2861
		                                  LN2868
		                                  LN2875
		                                  LN2882
		                                  LN2889
		                                  LN2896
		                                  LN2903
		                                  LN2910
		                                  LN2917
		                                  LN2924
		                                  LN2931
		                                  LN2938
		                                  LN2945
		                                  LN2952
		                                  LN2959
		                                  LN2966
		                                  LN2973
		                                  LN2980
		                                  LN2987
		                                  LN2994
		                                  LN3001
		                                  LN3008
		                                  LN3015
		                                  LN3022
		                                  LN3029
		                                  LN3036
		                                  LN3043
		                                  LN3050
		                                  LN3055
		                                  LN3060
		                                  LN3065
		                                  LN3070
		                                  LN3075
		                                  LN3080
		                                  LN3085
		                                  LN3090
		                                  LN3095
		                                  LN3100
		                                  LN3105
		                                  LN3110
		                                  LN3115
		                                  LN3120
		                                  LN3125
		                                  LN3130
		                                  LN3135
		                                  LN3140
		                                  LN3145
		                                  LN3150
		                                  LN3155
		                                  LN3160
		                                  LN3165
		                                  LN3170
		                                  LN3175
		                                  LN3180
		                                  LN3185
		                                  LN3190
		                                  LN3195
		                                  LN3200
		                                  LN3205
		                                  LN3210
		                                  LN3215
          ))
          (depth8 Bool (
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
(declare-var LN2564 Bool)
(declare-var LN2573 Bool)
(declare-var LN2582 Bool)
(declare-var LN2591 Bool)
(declare-var LN2600 Bool)
(declare-var LN2609 Bool)
(declare-var LN2618 Bool)
(declare-var LN2627 Bool)
(declare-var LN2636 Bool)
(declare-var LN2645 Bool)
(declare-var LN2654 Bool)
(declare-var LN2663 Bool)
(declare-var LN2672 Bool)
(declare-var LN2681 Bool)
(declare-var LN2690 Bool)
(declare-var LN2699 Bool)
(declare-var LN2708 Bool)
(declare-var LN2717 Bool)
(declare-var LN2726 Bool)
(declare-var LN2735 Bool)
(declare-var LN2744 Bool)
(declare-var LN2753 Bool)
(declare-var LN2762 Bool)
(declare-var LN2771 Bool)
(declare-var LN2780 Bool)
(declare-var LN2789 Bool)
(declare-var LN2798 Bool)
(declare-var LN2805 Bool)
(declare-var LN2812 Bool)
(declare-var LN2819 Bool)
(declare-var LN2826 Bool)
(declare-var LN2833 Bool)
(declare-var LN2840 Bool)
(declare-var LN2847 Bool)
(declare-var LN2854 Bool)
(declare-var LN2861 Bool)
(declare-var LN2868 Bool)
(declare-var LN2875 Bool)
(declare-var LN2882 Bool)
(declare-var LN2889 Bool)
(declare-var LN2896 Bool)
(declare-var LN2903 Bool)
(declare-var LN2910 Bool)
(declare-var LN2917 Bool)
(declare-var LN2924 Bool)
(declare-var LN2931 Bool)
(declare-var LN2938 Bool)
(declare-var LN2945 Bool)
(declare-var LN2952 Bool)
(declare-var LN2959 Bool)
(declare-var LN2966 Bool)
(declare-var LN2973 Bool)
(declare-var LN2980 Bool)
(declare-var LN2987 Bool)
(declare-var LN2994 Bool)
(declare-var LN3001 Bool)
(declare-var LN3008 Bool)
(declare-var LN3015 Bool)
(declare-var LN3022 Bool)
(declare-var LN3029 Bool)
(declare-var LN3036 Bool)
(declare-var LN3043 Bool)
(declare-var LN3050 Bool)
(declare-var LN3055 Bool)
(declare-var LN3060 Bool)
(declare-var LN3065 Bool)
(declare-var LN3070 Bool)
(declare-var LN3075 Bool)
(declare-var LN3080 Bool)
(declare-var LN3085 Bool)
(declare-var LN3090 Bool)
(declare-var LN3095 Bool)
(declare-var LN3100 Bool)
(declare-var LN3105 Bool)
(declare-var LN3110 Bool)
(declare-var LN3115 Bool)
(declare-var LN3120 Bool)
(declare-var LN3125 Bool)
(declare-var LN3130 Bool)
(declare-var LN3135 Bool)
(declare-var LN3140 Bool)
(declare-var LN3145 Bool)
(declare-var LN3150 Bool)
(declare-var LN3155 Bool)
(declare-var LN3160 Bool)
(declare-var LN3165 Bool)
(declare-var LN3170 Bool)
(declare-var LN3175 Bool)
(declare-var LN3180 Bool)
(declare-var LN3185 Bool)
(declare-var LN3190 Bool)
(declare-var LN3195 Bool)
(declare-var LN3200 Bool)
(declare-var LN3205 Bool)
(declare-var LN3210 Bool)
(declare-var LN3215 Bool)

(constraint (= (origCir LN2254 k3 k4 k5 k6 k7 LN2262 LN2275 LN2288 LN2301 LN2314 LN2325 LN2336 LN2347 LN2358 LN2369 LN2380 LN2391 LN2402 LN2413 LN2424 LN2435 LN2446 LN2457 LN2468 LN2479 LN2490 LN2501 LN2510 LN2519 LN2528 LN2537 LN2546 LN2555 LN2564 LN2573 LN2582 LN2591 LN2600 LN2609 LN2618 LN2627 LN2636 LN2645 LN2654 LN2663 LN2672 LN2681 LN2690 LN2699 LN2708 LN2717 LN2726 LN2735 LN2744 LN2753 LN2762 LN2771 LN2780 LN2789 LN2798 LN2805 LN2812 LN2819 LN2826 LN2833 LN2840 LN2847 LN2854 LN2861 LN2868 LN2875 LN2882 LN2889 LN2896 LN2903 LN2910 LN2917 LN2924 LN2931 LN2938 LN2945 LN2952 LN2959 LN2966 LN2973 LN2980 LN2987 LN2994 LN3001 LN3008 LN3015 LN3022 LN3029 LN3036 LN3043 LN3050 LN3055 LN3060 LN3065 LN3070 LN3075 LN3080 LN3085 LN3090 LN3095 LN3100 LN3105 LN3110 LN3115 LN3120 LN3125 LN3130 LN3135 LN3140 LN3145 LN3150 LN3155 LN3160 LN3165 LN3170 LN3175 LN3180 LN3185 LN3190 LN3195 LN3200 LN3205 LN3210 LN3215 ) (skel LN2254 k3 k4 k5 k6 k7 LN2262 LN2275 LN2288 LN2301 LN2314 LN2325 LN2336 LN2347 LN2358 LN2369 LN2380 LN2391 LN2402 LN2413 LN2424 LN2435 LN2446 LN2457 LN2468 LN2479 LN2490 LN2501 LN2510 LN2519 LN2528 LN2537 LN2546 LN2555 LN2564 LN2573 LN2582 LN2591 LN2600 LN2609 LN2618 LN2627 LN2636 LN2645 LN2654 LN2663 LN2672 LN2681 LN2690 LN2699 LN2708 LN2717 LN2726 LN2735 LN2744 LN2753 LN2762 LN2771 LN2780 LN2789 LN2798 LN2805 LN2812 LN2819 LN2826 LN2833 LN2840 LN2847 LN2854 LN2861 LN2868 LN2875 LN2882 LN2889 LN2896 LN2903 LN2910 LN2917 LN2924 LN2931 LN2938 LN2945 LN2952 LN2959 LN2966 LN2973 LN2980 LN2987 LN2994 LN3001 LN3008 LN3015 LN3022 LN3029 LN3036 LN3043 LN3050 LN3055 LN3060 LN3065 LN3070 LN3075 LN3080 LN3085 LN3090 LN3095 LN3100 LN3105 LN3110 LN3115 LN3120 LN3125 LN3130 LN3135 LN3140 LN3145 LN3150 LN3155 LN3160 LN3165 LN3170 LN3175 LN3180 LN3185 LN3190 LN3195 LN3200 LN3205 LN3210 LN3215 )))


(check-synth)

