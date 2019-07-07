(set-logic SLIA)

(synth-fun f ((_arg_0 String) (_arg_1 String)) Int
    ((Start Int (ntInt))
    (ntString String (_arg_0 _arg_1 "" " " (str.++ ntString ntString) (str.replace ntString ntString ntString) (str.at ntString ntInt) (int.to.str ntInt) (ite ntBool ntString ntString) (str.substr ntString ntInt ntInt)))
    (ntInt Int (1 0 -1 1 (+ ntInt ntInt) (- ntInt ntInt) (str.len ntString) (str.to.int ntString) (ite ntBool ntInt ntInt) (str.indexof ntString ntString ntInt)))
    (ntBool Bool (true false (= ntInt ntInt) (str.prefixof ntString ntString) (str.suffixof ntString ntString) (str.contains ntString ntString)))))

(constraint (= (f "Hannah" "n") 2))
(constraint (= (f "Hannah" "x") 0))
(constraint (= (f "Hannah" "N") 0))
(constraint (= (f "Hannah" "a") 2))
(constraint (= (f "Hannah" "h") 1))

(check-synth)

