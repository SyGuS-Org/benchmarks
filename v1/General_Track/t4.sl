
(set-logic  LIA)
(
synth-fun f_141-11-141-28 ( (x.end Int) (size Int) (i Int) (elem.end Int)) Bool
	((Start Bool (
(= IntExpr IntExpr)
(not Start )
(> IntExpr IntExpr)
(>= IntExpr IntExpr)



))
(IntExpr Int (
x.end size i elem.end 
0 1
))

	)
)
(declare-var x.end_141-11-141-28 Int)
(declare-var size_141-11-141-28 Int)
(declare-var i_141-11-141-28 Int)
(declare-var elem.end_141-11-141-28 Int)

(constraint  (=>  (and (= size_141-11-141-28 3)  (and (= x.end_141-11-141-28 122)  (and (= elem.end_141-11-141-28 110) (= i_141-11-141-28 2)) ) )  (= (f_141-11-141-28 x.end_141-11-141-28 size_141-11-141-28 i_141-11-141-28 elem.end_141-11-141-28 ) true)))
(constraint  (or  (=>  (and (= size_141-11-141-28 2)  (and (= x.end_141-11-141-28 15)  (and (= elem.end_141-11-141-28 15) (= i_141-11-141-28 1)) ) )  (= (f_141-11-141-28 x.end_141-11-141-28 size_141-11-141-28 i_141-11-141-28 elem.end_141-11-141-28 ) false))  (=>  (and (= size_141-11-141-28 2)  (and (= x.end_141-11-141-28 15)  (and (= elem.end_141-11-141-28 15) (= i_141-11-141-28 1)) ) )  (= (f_141-11-141-28 x.end_141-11-141-28 size_141-11-141-28 i_141-11-141-28 elem.end_141-11-141-28 ) true))) )
(constraint  (=>  (and (= size_141-11-141-28 3)  (and (= x.end_141-11-141-28 122)  (and (= elem.end_141-11-141-28 110) (= i_141-11-141-28 2)) ) )  (= (f_141-11-141-28 x.end_141-11-141-28 size_141-11-141-28 i_141-11-141-28 elem.end_141-11-141-28 ) true)))
(constraint  (=>  (and (= size_141-11-141-28 3)  (and (= x.end_141-11-141-28 122)  (and (= elem.end_141-11-141-28 111) (= i_141-11-141-28 2)) ) )  (= (f_141-11-141-28 x.end_141-11-141-28 size_141-11-141-28 i_141-11-141-28 elem.end_141-11-141-28 ) true)))
(constraint  (=>  (and (= size_141-11-141-28 2)  (and (= x.end_141-11-141-28 3)  (and (= elem.end_141-11-141-28 4) (= i_141-11-141-28 1)) ) )  (= (f_141-11-141-28 x.end_141-11-141-28 size_141-11-141-28 i_141-11-141-28 elem.end_141-11-141-28 ) false)))
(constraint  (=>  (and (= size_141-11-141-28 2)  (and (= x.end_141-11-141-28 122)  (and (= elem.end_141-11-141-28 109) (= i_141-11-141-28 1)) ) )  (= (f_141-11-141-28 x.end_141-11-141-28 size_141-11-141-28 i_141-11-141-28 elem.end_141-11-141-28 ) true)))
(constraint  (=>  (and (= size_141-11-141-28 2)  (and (= x.end_141-11-141-28 300)  (and (= elem.end_141-11-141-28 305) (= i_141-11-141-28 1)) ) )  (= (f_141-11-141-28 x.end_141-11-141-28 size_141-11-141-28 i_141-11-141-28 elem.end_141-11-141-28 ) false)))
(constraint  (=>  (and (= size_141-11-141-28 2)  (and (= x.end_141-11-141-28 2)  (and (= elem.end_141-11-141-28 21) (= i_141-11-141-28 1)) ) )  (= (f_141-11-141-28 x.end_141-11-141-28 size_141-11-141-28 i_141-11-141-28 elem.end_141-11-141-28 ) false)))


(check-synth)