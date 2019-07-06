; https=//exceljet.net/formula/get-last-line-in-cell
(set-logic SLIA)
(synth-fun f ((_arg_0 String)) String 
 ( (Start String (ntString)) 
 (ntString String (
	_arg_0
	"" " " "/n"
	(str.++ ntString ntString) 
	(str.replace ntString ntString ntString) 
	(str.at ntString ntInt)
	(int.to.str ntInt)
	(ite ntBool ntString ntString)
	(str.substr ntString ntInt ntInt)
)) 
 (ntInt Int (
	
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
(constraint (= (f "11/1/2015 - First call/n12/3/2015-order placed/n11/15/2015-follow-up,interested") "11/15/2015-follow-up,interested"))
(constraint (= (f "11/1/2015 - First call/n12/3/2015-order placed") "12/3/2015-order placed"))
(constraint (= (f "11/1/2015 - First call") "11/1/2015 - First call"))
(check-synth)
