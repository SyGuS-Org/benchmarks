; https=//exceljet.net/formula/count-total-words-in-a-cell
(set-logic SLIA)
(synth-fun f ((_arg_0 String)) Int 
 ( (Start Int (ntInt)) 
 (ntString String (
	_arg_0
	"" " "
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
(constraint (= (f "humpty dumpty") 2))
(constraint (= (f "humpty dumpty sat on a wall,") 6))
(constraint (= (f "couldnt put humpty together again.") 5))
(check-synth)
