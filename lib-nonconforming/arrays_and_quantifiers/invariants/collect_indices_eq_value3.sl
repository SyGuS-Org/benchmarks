(declare-var a1 (Array Int Int))
(declare-var a2 (Array Int Int))
(declare-var alength Int)
(declare-var b (Array Int Int))
(declare-var b! (Array Int Int))
(declare-var blength Int)
(declare-var blength! Int)
(declare-var i Int)
(declare-var i! Int)

(define-fun init-fn ((i Int)(blength Int))Bool
(and (= i 0)(= blength 0))
	)

(define-fun trans-fn ((a1 (Array Int Int))(a2 (Array Int Int))(alength Int)(b (Array Int Int))
(blength Int)(i Int)(b! (Array Int Int))(blength! Int)(i! Int)) Bool
	(ite (< i alength)
		(and (ite (= (select a1 i)(select a2 i))(and (= b! (store b blength i)) (= blength! (+ blength 1)))
			(and (= b! b)(= blength! blength))) (= i! (+ i 1)))
		(and (= i! i)(= blength! blength)(= b! b))))

(define-fun post-fn ((a1 (Array Int Int))(a2 (Array Int Int))(alength Int)(b (Array Int Int))
(blength Int)(i Int)) Bool
(forall ((index Int))(=> (and (<= 0 alength)(<= 0 index)(< index i) (= (select a1 index)(select a2 index))) 
		(exists ((index2 Int)) (= (select b index2) index)))))

(synth-fun inv-fn ((a1 (Array Int Int))(a2 (Array Int Int))(alength Int)(b (Array Int Int))
(blength Int)(i Int)) Bool)

(constraint (=> (init-fn i blength) (inv-fn a1 a2 alength b blength i)))
(constraint (=> (and (inv-fn a1 a2 alength b blength i) (trans-fn a1 a2 alength b blength i b! blength! i!))
				(inv-fn a1 a2 alength b! blength! i!)))

(constraint (=> (inv-fn a1 a2 alength b blength i) (post-fn a1 a2 alength b blength i)))
(check-synth)						