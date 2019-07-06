; https=//exceljet.net/formula/find-nth-occurrence-of-character
(set-logic SLIA)
(synth-fun f ((_arg_0 String) (_arg_1 Int)) Int 
 ( (Start Int (ntInt)) 
 (ntString String (
	_arg_0
	"" " " "_"
	(str.++ ntString ntString) 
	(str.replace ntString ntString ntString) 
	(str.at ntString ntInt)
	(int.to.str ntInt)
	(ite ntBool ntString ntString)
	(str.substr ntString ntInt ntInt)
)) 
 (ntInt Int (
	_arg_1
	1 0 -1
	(+ ntInt ntInt)
	(- ntInt ntInt)
	(str.len ntString)
	(str.to.int ntString)
	(ite ntBool ntInt ntInt)
	(str.indexof ntString ntString ntInt)
)) 
 (ntBool Bool (
	
	true false
	(= ntInt ntInt)
	(str.prefixof ntString ntString)
	(str.suffixof ntString ntString)
	(str.contains ntString ntString)
)) ))
(constraint (= (f "replies to _aya, _tasisuke, and _chan" 1) 12))
(constraint (= (f "replies to _aya, _tasisuke, and _chan" 2) 18))
(constraint (= (f "replies to _aya, _tasisuke, and _chan" 3) 33))
(check-synth)
