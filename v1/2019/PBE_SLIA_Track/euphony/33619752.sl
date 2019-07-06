; https=//stackoverflow.com/questions/33619752/checking-for-duplicate-substrings-in-excel
(set-logic SLIA)
(synth-fun f ((_arg_0 String)) String 
 ( (Start String (ntString)) 
 (ntString String (
	_arg_0
	"" " " "Inc" "Company" "Corporation" "Enterprises"
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
(constraint (= (f "General Electric") "General Electric"))
(constraint (= (f "General Electric Inc") "General Electric"))
(constraint (= (f "General Electric Company") "General Electric"))
(constraint (= (f "Microsoft") "Microsoft"))
(constraint (= (f "Microsoft Corporation") "Microsoft"))
(constraint (= (f "Nintendo") "Nintendo"))
(constraint (= (f "Nintendo Enterprises") "Nintendo"))
(check-synth)
