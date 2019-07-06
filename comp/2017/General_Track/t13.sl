
(set-logic  LIA)
(
synth-fun f_356-35-356-59 ( (MC_741360 Bool)) Bool
	((Start Bool (
(not Start )
(= IntExpr IntExpr)
MC_741360 


))

	)
)
(declare-var MC_741360_356-35-356-59 Bool)

(constraint  (=> (= MC_741360_356-35-356-59 false) (= (f_356-35-356-59 MC_741360_356-35-356-59 ) true)))


(check-synth)