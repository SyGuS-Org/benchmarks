; https=//exceljet.net/formula/convert-numbers-to-text
(set-logic SLIA)
(synth-fun f ((_arg_0 Int)) String 
 ( (Start String (ntString)) 
 (ntString String (
	
	"" " "
	(str.++ ntString ntString) 
	(str.replace ntString ntString ntString) 
	(str.at ntString ntInt)
	(int.to.str ntInt)
	(ite ntBool ntString ntString)
	(str.substr ntString ntInt ntInt)
)) 
 (ntInt Int (
	_arg_0
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
(constraint (= (f 101) "101"))
(constraint (= (f 1002) "1002"))
(constraint (= (f 743) "743"))
(check-synth)
