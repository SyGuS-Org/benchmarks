; https=//stackoverflow.com/questions/43606446/extract-substring-from-this-string-inside-excel-cell/43606527%43606527
(set-logic SLIA)
(synth-fun f ((_arg_0 String)) String 
 ( (Start String (ntString)) 
 (ntString String (
	_arg_0
	"" " " ">"
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
(constraint (= (f "USD.EUR<IDEALPRO,CASH,EUR>") "EUR"))
(constraint (= (f "USD.EUR<IDEALPRO,CASH,USD>") "USD"))
(constraint (= (f "KOR.JPN<IDEALPRO,CASH,WON>") "WON"))
(constraint (= (f "KOR.JPN<IDEALPRO,CASH,YEN>") "YEN"))
(check-synth)
