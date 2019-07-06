; https=//exceljet.net/formula/remove-unwanted-characters
(set-logic SLIA)
(synth-fun f ((_arg_0 String) (_arg_1 String)) String 
 ( (Start String (ntString)) 
 (ntString String (
	_arg_0 _arg_1
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
(constraint (= (f "zx66448" "z") "x66448"))
(constraint (= (f "zx66448" "x") "z66448"))
(constraint (= (f "zx66448" "6") "zx448"))
(constraint (= (f "zx66448" "4") "zx668"))
(constraint (= (f "zx66448" "8") "zx6644"))
(check-synth)
