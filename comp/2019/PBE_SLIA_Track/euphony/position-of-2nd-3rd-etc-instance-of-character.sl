(set-logic SLIA)

(synth-fun f ((_arg_0 String) (_arg_1 String) (_arg_2 Int)) Int
    ((Start Int (ntInt))
    (ntString String (_arg_0 _arg_1 "" " " (str.++ ntString ntString) (str.replace ntString ntString ntString) (str.at ntString ntInt) (int.to.str ntInt) (ite ntBool ntString ntString) (str.substr ntString ntInt ntInt)))
    (ntInt Int (_arg_2 1 0 -1 1 2 3 (+ ntInt ntInt) (- ntInt ntInt) (str.len ntString) (str.to.int ntString) (ite ntBool ntInt ntInt) (str.indexof ntString ntString ntInt)))
    (ntBool Bool (true false (= ntInt ntInt) (str.prefixof ntString ntString) (str.suffixof ntString ntString) (str.contains ntString ntString)))))

(constraint (= (f "100x15x50" "x" 2) 7))
(constraint (= (f "cat-in-the-hat" "-" 3) 11))

(check-synth)

