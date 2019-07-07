(set-logic SLIA)

(synth-fun f ((_arg_0 String)) Bool
    ((Start Bool (ntBool))
    (ntString String (_arg_0 "" " " "1" "2" "3" "4" "5" (str.++ ntString ntString) (str.replace ntString ntString ntString) (str.at ntString ntInt) (int.to.str ntInt) (ite ntBool ntString ntString) (str.substr ntString ntInt ntInt)))
    (ntInt Int (1 0 -1 (+ ntInt ntInt) (- ntInt ntInt) (str.len ntString) (str.to.int ntString) (ite ntBool ntInt ntInt) (str.indexof ntString ntString ntInt)))
    (ntBool Bool (true false (= ntInt ntInt) (str.prefixof ntString ntString) (str.suffixof ntString ntString) (str.contains ntString ntString)))))

(constraint (= (f "A bird in the hand is worth 2 in the bush.") true))
(constraint (= (f "A bird in the hand is worth two in the bush.") false))
(constraint (= (f "The 15 shortcuts you simply must know") true))

(check-synth)

