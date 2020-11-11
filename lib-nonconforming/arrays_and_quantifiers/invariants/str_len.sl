(declare-var a (Array Int Int))
(declare-var i Int)
(declare-var i! Int)

(define-fun init-fn ((i Int)) Bool
(= i 0))

(define-fun trans-fn ((a (Array Int Int))(i Int)(i! Int)) Bool
(ite (not (= (select a i) 0))
	(= i! (+ i 1))
	(= i! i))
)

(define-fun post-fn ((a (Array Int Int))(i Int)) Bool
	(=> 
		(exists ((index Int)) (and (<= 0 index)(= (select a index) 0)))
		(forall ((index2 Int)) (=> (and (<= 0 index2) (< index2 i)) (not (= (select a index2) 0)) ))))

(synth-fun inv-fn ((a (Array Int Int))(i Int)) Bool)

(constraint (=> (init-fn i) (inv-fn a i)))
(constraint (=> (and (inv-fn a i) (trans-fn a i i!))(inv-fn a i!)))
(constraint (=> (inv-fn a i) (post-fn a i)))
(check-synth)