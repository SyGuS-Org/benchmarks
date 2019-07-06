; https=//stackoverflow.com/questions/44789427/excel-substring/44789464%44789464
(set-logic SLIA)
(synth-fun f ((_arg_0 String) (_arg_1 Int)) String 
 ( (Start String (ntString)) 
 (ntString String (
	_arg_0
	"" " " "-"
	(str.++ ntString ntString) 
	(str.replace ntString ntString ntString) 
	(str.at ntString ntInt)
	(int.to.str ntInt)
	(ite ntBool ntString ntString)
	(str.substr ntString ntInt ntInt)
)) 
 (ntInt Int (
	_arg_1
	1 0 -1 1 2
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
(constraint (= (f "1/17/16-1/18/17" 1) "1/17/16"))
(constraint (= (f "1/17/16-1/18/17" 2) "1/18/17"))
(constraint (= (f "01/17/2016-01/18/2017" 1) "01/17/2016"))
(constraint (= (f "01/17/2016-01/18/2017" 2) "01/18/2017"))
(check-synth)
