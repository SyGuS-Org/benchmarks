(declare-var a (Array Int Int))
(declare-var a! (Array Int Int))
(declare-var b (Array Int Int))
(declare-var blength Int)
(declare-var i Int)
(declare-var i! Int)
(declare-var alength Int)
(declare-var alength! Int)

(define-fun init-fn ((i Int)(alength Int)) Bool
(and (= i 0)(= alength 0))
	)

(define-fun trans-fn ((a (Array Int Int))(b (Array Int Int))(alength Int)
	(blength Int)(i Int)(a! (Array Int Int))(alength! Int)(i! Int)) Bool
(ite (< i blength)
	(and (ite (>= (select b i) 0)
		(and (= a! a) (= alength! alength))
		(and (= a! (store a alength (select b i)))(= alength! (+ alength 1))))
	(= i! (+ i 1)))
	(and (= i! i)(= a! a) (= alength! alength))))

(define-fun post-fn ((a (Array Int Int))(b (Array Int Int))(alength Int)
	(blength Int)(i Int)) Bool
(forall ((index Int))(=> (and (<= 0 blength)(<= 0 index)(< index alength))(not (= (select a index) 0)) ) ))

(synth-fun inv-fn((a (Array Int Int))(b (Array Int Int))(alength Int)
	(blength Int)(i Int)) Bool)

(constraint (=> (init-fn i alength)(inv-fn a b alength blength i)))
(constraint (=> (and (inv-fn a b alength blength i)(trans-fn a b alength blength i a! alength! i!))
				(inv-fn a! b alength! blength i!)))


(constraint (=> (inv-fn a b alength blength i)(post-fn a b alength blength i)))
(check-synth)
