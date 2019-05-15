
(set-logic  LIA)
(
synth-fun f_29-21-29-36 ( (pair.length Int)) Bool
	((Start Bool (
(> IntExpr IntExpr)
(>= IntExpr IntExpr)



))
(IntExpr Int (
pair.length 
0 1
))

	)
)
(declare-var pair.length_29-21-29-36 Int)

(constraint  (or   (and (=> (= pair.length_29-21-29-36 2) (= (f_29-21-29-36 pair.length_29-21-29-36 ) true))  (and (=> (= pair.length_29-21-29-36 2) (= (f_29-21-29-36 pair.length_29-21-29-36 ) true))  (and (=> (= pair.length_29-21-29-36 2) (= (f_29-21-29-36 pair.length_29-21-29-36 ) true)) (=> (= pair.length_29-21-29-36 2) (= (f_29-21-29-36 pair.length_29-21-29-36 ) true))) ) )    (and (=> (= pair.length_29-21-29-36 1) (= (f_29-21-29-36 pair.length_29-21-29-36 ) false))  (and (=> (= pair.length_29-21-29-36 2) (= (f_29-21-29-36 pair.length_29-21-29-36 ) true))  (and (=> (= pair.length_29-21-29-36 2) (= (f_29-21-29-36 pair.length_29-21-29-36 ) true))  (and (=> (= pair.length_29-21-29-36 2) (= (f_29-21-29-36 pair.length_29-21-29-36 ) true))  (and (=> (= pair.length_29-21-29-36 1) (= (f_29-21-29-36 pair.length_29-21-29-36 ) false)) (=> (= pair.length_29-21-29-36 2) (= (f_29-21-29-36 pair.length_29-21-29-36 ) true))) ) ) ) ) ) )



(check-synth)