; https=//stackoverflow.com/questions/43120683/excel-substitute-a-substring-in-cell-sheet-a-by-the-corresponding-string-in-l
(set-logic SLIA)
(synth-fun f ((_arg_0 String)) String 
 ( (Start String (ntString)) 
 (ntString String (
	_arg_0
	"" " " "1" "2" "3" "4" "apple" "bananas" "strawberries" "oranges" ","
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
(constraint (= (f "one, 1") "one apple"))
(constraint (= (f "two, 2") "two bananas"))
(constraint (= (f "three, 3") "three strawberries"))
(constraint (= (f "four, 4") "four oranges"))
(check-synth)
