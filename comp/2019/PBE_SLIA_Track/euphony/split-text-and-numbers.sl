(set-logic SLIA)

(synth-fun f ((_arg_0 String) (_arg_1 Int)) String
    ((Start String (ntString))
    (ntString String (_arg_0 "" " " (str.++ ntString ntString) (str.replace ntString ntString ntString) (str.at ntString ntInt) (int.to.str ntInt) (ite ntBool ntString ntString) (str.substr ntString ntInt ntInt)))
    (ntInt Int (_arg_1 1 0 -1 1 2 3 (+ ntInt ntInt) (- ntInt ntInt) (str.len ntString) (str.to.int ntString) (ite ntBool ntInt ntInt) (str.indexof ntString ntString ntInt)))
    (ntBool Bool (true false (= ntInt ntInt) (str.prefixof ntString ntString) (str.suffixof ntString ntString) (str.contains ntString ntString)))))

(constraint (= (f "apples30" 7) "apples"))
(constraint (= (f "peaches24" 8) "peaches"))
(constraint (= (f "peaches0" 8) "peaches"))
(constraint (= (f "pears" 6) "pears"))

(check-synth)

