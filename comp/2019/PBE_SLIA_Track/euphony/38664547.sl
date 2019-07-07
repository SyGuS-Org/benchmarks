(set-logic SLIA)

(synth-fun f ((_arg_0 String)) String
    ((Start String (ntString))
    (ntString String (_arg_0 "" " " "that" (str.++ ntString ntString) (str.replace ntString ntString ntString) (str.at ntString ntInt) (int.to.str ntInt) (ite ntBool ntString ntString) (str.substr ntString ntInt ntInt)))
    (ntInt Int (1 0 -1 (+ ntInt ntInt) (- ntInt ntInt) (str.len ntString) (str.to.int ntString) (ite ntBool ntInt ntInt) (str.indexof ntString ntString ntInt)))
    (ntBool Bool (true false (= ntInt ntInt) (str.prefixof ntString ntString) (str.suffixof ntString ntString) (str.contains ntString ntString)))))

(constraint (= (f "thatensures") "ensures"))
(constraint (= (f "thatwill") "will"))
(constraint (= (f "thathave") "have"))
(constraint (= (f "knowthat") "know"))
(constraint (= (f "that") "that"))
(constraint (= (f "mouse") "mouse"))
(constraint (= (f "knowthat") "know"))

(check-synth)

