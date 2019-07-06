
(set-logic  LIA)
(
synth-fun f_35-7-35-46 ( (this.total Int) (this.num Int) (this.start Int)) Bool
	((Start Bool (
(>= IntExpr IntExpr)
(> IntExpr IntExpr)



))
(IntExpr Int (
(- IntExpr IntExpr)
(+ IntExpr IntExpr)
this.total this.num this.start 
0 1
))

	)
)
(declare-var this.total_35-7-35-46 Int)
(declare-var this.num_35-7-35-46 Int)
(declare-var this.start_35-7-35-46 Int)

(constraint  (=>  (and (= this.num_35-7-35-46 1)  (and (= this.start_35-7-35-46 0) (= this.total_35-7-35-46 2)) )  (= (f_35-7-35-46 this.total_35-7-35-46 this.num_35-7-35-46 this.start_35-7-35-46 ) false)))


(check-synth)