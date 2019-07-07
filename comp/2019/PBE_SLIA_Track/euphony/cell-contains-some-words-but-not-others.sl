(set-logic SLIA)

(synth-fun f ((_arg_0 String) (_arg_1 String) (_arg_2 String) (_arg_3 String)) Bool
    ((Start Bool (ntBool))
    (ntString String (_arg_0 _arg_1 _arg_2 _arg_3 "" " " (str.++ ntString ntString) (str.replace ntString ntString ntString) (str.at ntString ntInt) (int.to.str ntInt) (ite ntBool ntString ntString) (str.substr ntString ntInt ntInt)))
    (ntInt Int (1 0 -1 (+ ntInt ntInt) (- ntInt ntInt) (str.len ntString) (str.to.int ntString) (ite ntBool ntInt ntInt) (str.indexof ntString ntString ntInt)))
    (ntBool Bool (true false (= ntInt ntInt) (str.prefixof ntString ntString) (str.suffixof ntString ntString) (str.contains ntString ntString)))))

(constraint (= (f "red ball, green sweater" "red" "green" "pink") true))
(constraint (= (f "pink ball, green sweater" "red" "green" "pink") false))
(constraint (= (f "blue sea, pink ribbon" "red" "blue" "pink") false))
(constraint (= (f "black sea, white ribbon" "red" "blue" "pink") false))
(constraint (= (f "red green blue" "red" "blue" "pink") true))

(check-synth)

