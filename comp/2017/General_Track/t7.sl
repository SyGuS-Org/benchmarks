
(set-logic  LIA)
(
synth-fun f_125-10-125-47 ( (bufferIndex Int) (MC_741360 Int)) Bool
	((Start Bool (
(>= IntExpr IntExpr)
(> IntExpr IntExpr)



))
(IntExpr Int (
(- IntExpr IntExpr)
(+ IntExpr IntExpr)
bufferIndex MC_741360 
0 1
))

	)
)
(declare-var bufferIndex_125-10-125-47 Int)
(declare-var MC_741360_125-10-125-47 Int)

(constraint  (=>  (and (= bufferIndex_125-10-125-47 1) (= MC_741360_125-10-125-47 0))  (= (f_125-10-125-47 bufferIndex_125-10-125-47 MC_741360_125-10-125-47 ) false)))


(check-synth)