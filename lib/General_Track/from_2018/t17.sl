
(set-logic  LIA)
(
synth-fun f_255-8-255-24 ( (j Int) (MC_741360 Int)) Bool
	((Start Bool (
(= IntExpr IntExpr)



))
(IntExpr Int (
(+ IntExpr IntExpr)
(- IntExpr IntExpr)
j MC_741360 
0 1
))

	)
)
(declare-var j_255-8-255-24 Int)
(declare-var MC_741360_255-8-255-24 Int)

(constraint   (and (=>  (and (= j_255-8-255-24 2) (= MC_741360_255-8-255-24 3))  (= (f_255-8-255-24 j_255-8-255-24 MC_741360_255-8-255-24 ) true)) (=>  (and (= MC_741360_255-8-255-24 3) (= j_255-8-255-24 2))  (= (f_255-8-255-24 j_255-8-255-24 MC_741360_255-8-255-24 ) true))) )


(check-synth)