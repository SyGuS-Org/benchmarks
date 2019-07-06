; https=//stackoverflow.com/questions/39648273/ms-excel-extract-unique-text-patterns-keyword-from-substring
(set-logic SLIA)
(synth-fun f ((_arg_0 String)) String 
 ( (Start String (ntString)) 
 (ntString String (
	_arg_0
	"" " "
	(str.++ ntString ntString) 
	(str.replace ntString ntString ntString) 
	(str.at ntString ntInt)
	(int.to.str ntInt)
	(ite ntBool ntString ntString)
	(str.substr ntString ntInt ntInt)
)) 
 (ntInt Int (
	
	1 0 -1 1 2 3 4 5
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
(constraint (= (f "April 1 1799") "1799"))
(constraint (= (f "April 11 1867") "1867"))
(constraint (= (f "February 12 1806") "1806"))
(constraint (= (f "February 21 1798") "1798"))
(constraint (= (f "February 28 1844 as Delaware Township") "1844"))
(constraint (= (f "February 5 1798") "1798"))
(constraint (= (f "February 7 1892 Verona Township") "1892"))
(constraint (= (f "February 9 1797") "1797"))
(constraint (= (f "January 19 1748") "1748"))
(constraint (= (f "July 10 1721 as Upper Penns Neck Township") "1721"))
(constraint (= (f "March 15 1860") "1860"))
(constraint (= (f "March 17 1870 <as Raritan Township>") "1870"))
(constraint (= (f "March 17 1874") "1874"))
(constraint (= (f "March 23 1864") "1864"))
(constraint (= (f "March 5 1867") "1867"))
(constraint (= (f "April 28th 1828") "1828"))
(check-synth)
