(declare-var a (Array Int Int))
(declare-var alength Int)
(declare-var i Int)
(declare-var i! Int)
(declare-var max Int)
(declare-var max! Int)

(define-fun init-fn ((i Int) (max Int)) Bool
  (and (= max 0)(= i 0)))

(define-fun trans-fn ((a (Array Int Int))(alength Int)(i Int)(max Int)(i! Int)(max! Int)) Bool
	(ite (< i alength)
		(and (ite (> (select a i) max) (= max! (select a i))(= max! max)) (= i! (+ i 1)))
		(and (= i! i)(= max! max))))

(define-fun post-fn ((a (Array Int Int))(alength Int)(i Int)(max Int)) Bool
	(forall ((index Int))(=> (and (<= 0 alength)(<= 0 index)(< index i))(<= (select a index) max))))

(synth-fun inv-fn ((a (Array Int Int))(alength Int)(i Int)(max Int)) Bool)

(constraint (=> (init-fn i max)(inv-fn a alength i max)))
(constraint (=> (and (inv-fn  a alength i max)(trans-fn  a alength i max i! max!))(inv-fn a alength i! max!) ))
(constraint (=> (inv-fn a alength i max) (post-fn a alength i max)))
(check-synth)