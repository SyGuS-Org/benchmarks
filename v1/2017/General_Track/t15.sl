
(set-logic  LIA)
(
synth-fun f_97-10-97-48 ( (NOACK Int) (this.acknowledgeId Int) (enabled Bool)) Bool
	((Start Bool (
(and Start Start)
(= IntExpr IntExpr)
(not Start )
(or Start Start)
enabled 


))
(IntExpr Int (
NOACK this.acknowledgeId 
0 1
))

	)
)
(declare-var NOACK_97-10-97-48 Int)
(declare-var this.acknowledgeId_97-10-97-48 Int)
(declare-var enabled_97-10-97-48 Bool)

(constraint  (=>  (and (= NOACK_97-10-97-48 48)  (and (= enabled_97-10-97-48 true) (= this.acknowledgeId_97-10-97-48 48)) )  (= (f_97-10-97-48 NOACK_97-10-97-48 this.acknowledgeId_97-10-97-48 enabled_97-10-97-48 ) true)))


(check-synth)