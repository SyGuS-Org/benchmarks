; https=//stackoverflow.com/questions/26875613/return-all-text-to-the-right-of-last-numeric-digit-in-strings/26876794%26876794
(set-logic SLIA)
(synth-fun f ((_arg_0 String)) String 
 ( (Start String (ntString)) 
 (ntString String (
	_arg_0
	"" " " "1" "9"
	(str.++ ntString ntString) 
	(str.replace ntString ntString ntString) 
	(str.at ntString ntInt)
	(int.to.str ntInt)
	(ite ntBool ntString ntString)
	(str.substr ntString ntInt ntInt)
)) 
 (ntInt Int (
	
	1 0 -1 1 2 3
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
(constraint (= (f "geb. 14 oct 1956 Westerkerk HRL") "Westerkerk HRL"))
(constraint (= (f "geb. 14 oct 1956 ") ""))
(constraint (= (f "geb. 15 feb 1987 Westerkerk HRL") "Westerkerk HRL"))
(check-synth)
