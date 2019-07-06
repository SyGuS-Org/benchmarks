; https=//stackoverflow.com/questions/44359450/finding-a-substring-that-is-comprised-of-both-letters-and-numbers-in-excel
(set-logic SLIA)
(synth-fun f ((_arg_0 String)) String 
 ( (Start String (ntString)) 
 (ntString String (
	_arg_0
	"" " " "_" "1" "2" "3" "4" "5" "6" "7" "8" "9" "0"
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
(constraint (= (f "2283-332-44543 CAP DDT PPL445_ HEEN PAX 77820") "HEEN PAX 77820"))
(constraint (= (f "44372-33-3223 TYYTE CAP BOX 1550 244 BOX PPSSA223_ PAX") "PAX"))
(constraint (= (f "PRECISE 77 CLEAR BLUE 99WIE_ BOX 4403 PAX SSKA") "BOX 4403 PAX SSKA"))
(check-synth)
