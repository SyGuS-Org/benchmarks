
(set-logic  LIA)
(
synth-fun f_122-16-122-32 ( (this.y Int) (this.x Int) (y Int) (x Int)) Bool
	((Start Bool (
(and Start Start)
(= IntExpr IntExpr)
(or Start Start)
(not Start )



))
(IntExpr Int (
this.y this.x y x 
0 1
))

	)
)
(declare-var this.y_122-16-122-32 Int)
(declare-var this.x_122-16-122-32 Int)
(declare-var y_122-16-122-32 Int)
(declare-var x_122-16-122-32 Int)

(constraint  (=>  (and (= y_122-16-122-32 2)  (and (= x_122-16-122-32 1)  (and (= this.y_122-16-122-32 2) (= this.x_122-16-122-32 1)) ) )  (= (f_122-16-122-32 this.y_122-16-122-32 this.x_122-16-122-32 y_122-16-122-32 x_122-16-122-32 ) true)))
(constraint  (=>  (and (= y_122-16-122-32 3)  (and (= x_122-16-122-32 1)  (and (= this.y_122-16-122-32 2) (= this.x_122-16-122-32 1)) ) )  (= (f_122-16-122-32 this.y_122-16-122-32 this.x_122-16-122-32 y_122-16-122-32 x_122-16-122-32 ) false)))


(check-synth)