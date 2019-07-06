; https=//exceljet.net/formula/create-email-address-with-name-and-domain
(set-logic SLIA)
(synth-fun f ((_arg_0 String) (_arg_1 String) (_arg_2 String)) String 
 ( (Start String (ntString)) 
 (ntString String (
	_arg_0 _arg_1 _arg_2
	"" " " "_"
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
(constraint (= (f "ayako" "ogawa" "acme.com") "aogawa_acme.com"))
(constraint (= (f "amy" "johnson" "google.com") "ajohnson_google.com"))
(constraint (= (f "tom" "chang" "upenn.edu") "tchang_upenn.edu"))
(check-synth)
