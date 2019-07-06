; https=//stackoverflow.com/questions/19274448/how-to-find-if-a-cell-contains-a-substring-excel
(set-logic SLIA)
(synth-fun f ((_arg_0 String)) Bool 
 ( (Start Bool (ntBool)) 
 (ntString String (
	_arg_0
	"" " " "9999999"
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
(constraint (= (f "dhfjd9999999dfda") true))
(constraint (= (f "ddsss999dfdfsfd") false))
(check-synth)
