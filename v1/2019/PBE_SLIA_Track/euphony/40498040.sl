; https=//stackoverflow.com/questions/40498040/excel-formula-if-cell-contains-substring-this-and-does-not-contain-substring
(set-logic SLIA)
(synth-fun f ((_arg_0 String)) Bool 
 ( (Start Bool (ntBool)) 
 (ntString String (
	_arg_0
	"" " " "overhead" "some project" "other" "boo" ","
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
(constraint (= (f "some project,other project") true))
(constraint (= (f "some project") true))
(constraint (= (f "overhead") false))
(constraint (= (f "some project, overhead") false))
(constraint (= (f "some project, other, boo") true))
(check-synth)
