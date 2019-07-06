; https=//stackoverflow.com/questions/41503046/find-string-in-substring-with-vlookup-in-excel
(set-logic SLIA)
(synth-fun f ((_arg_0 String)) String 
 ( (Start String (ntString)) 
 (ntString String (
	_arg_0
	"" " " "ssp."
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
(constraint (= (f "Polygonum amphibium") "Polygonum"))
(constraint (= (f "Hippuris vulgaris") "Hippuris"))
(constraint (= (f "Lysimachia vulgaris") "Lysimachia"))
(constraint (= (f "Juncus bulbosus ssp. bulbosus") "Juncus bulbosus"))
(constraint (= (f "Lycopus europaeus ssp. europaeus") "Lycopus europaeus"))
(constraint (= (f "Nymphaea alba") "Nymphaea"))
(check-synth)
