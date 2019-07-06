; https=//exceljet.net/formula/cell-contains-one-of-many-things
(set-logic SLIA)
(synth-fun f ((_arg_0 String) (_arg_1 String) (_arg_2 String) (_arg_3 String)) Bool 
 ( (Start Bool (ntBool)) 
 (ntString String (
	_arg_0 _arg_1 _arg_2 _arg_3
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
(constraint (= (f "yellow dog on green grass" "yellow" "green" "dog") true))
(constraint (= (f "warm gray sweater" "yellow" "green" "dog") false))
(constraint (= (f "A yellow sun in a green field" "yellow" "green" "dog") true))
(constraint (= (f "yellow neon sign with a green background" "yellow" "green" "dog") true))
(check-synth)
