(set-logic SLIA)

(synth-fun f ((_arg_0 String) (_arg_1 String)) Int
    ((Start Int (ntInt))
    (ntString String (_arg_0 _arg_1 "" " " "_" (str.++ ntString ntString) (str.replace ntString ntString ntString) (str.at ntString ntInt) (int.to.str ntInt) (ite ntBool ntString ntString) (str.substr ntString ntInt ntInt)))
    (ntInt Int (1 0 -1 1 2 3 (+ ntInt ntInt) (- ntInt ntInt) (str.len ntString) (str.to.int ntString) (ite ntBool ntInt ntInt) (str.indexof ntString ntString ntInt)))
    (ntBool Bool (true false (= ntInt ntInt) (str.prefixof ntString ntString) (str.suffixof ntString ntString) (str.contains ntString ntString)))))

(constraint (= (f "An example string with _username in it RT _AwesomeUser says _username is awesome" "username") 2))
(constraint (= (f "An example string with _username in it RT _AwesomeUser says _username is awesome" "AwesomeUser") 1))
(constraint (= (f "An _example string with _example in it is awesome _example" "example") 3))

(check-synth)

