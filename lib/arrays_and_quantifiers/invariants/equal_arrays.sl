(set-logic ALL)
(synth-fun inv-fn ((x (Array Int Int)) (y (Array Int Int))) Bool)
(declare-var x (Array Int Int))
(declare-var x! (Array Int Int))
(declare-var y (Array Int Int))
(declare-var y! (Array Int Int))


(define-fun init-fn ((x (Array Int Int)) (y (Array Int Int))) Bool 
	(and (forall ((index Int)) (= (select y index) 10))
	(forall ((index Int)) (= (select x index) 10))))


(define-fun trans-fn ((x (Array Int Int)) (y (Array Int Int))
	(x! (Array Int Int)) (y! (Array Int Int))) Bool 
	(forall ((index Int))
		(and
			(= (select x! index) (+ (select y index) 1))
			(= (select y! index ) (+ (select x index) 1)
			))))

(define-fun post-fn ((x (Array Int Int)) (y (Array Int Int))) Bool 
	(forall ((index Int))(=> (>= index 0) (= (- (select x index) (select y index)) 0))))
 
(constraint (=> (init-fn x y) (inv-fn x y)))
(constraint (=> (and (inv-fn x y) (trans-fn x y x! y!)) (inv-fn x! y!)))
(constraint (=> (inv-fn x y) (post-fn x y)))
(check-synth)
