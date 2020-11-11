(set-logic ALL)
(synth-fun inv-fn ((i Int) (x (Array Int Int))) Bool)
(declare-var x (Array Int Int))
(declare-var x! (Array Int Int))
(declare-var i Int)
(declare-var i! Int)

(define-fun init-fn ((i Int) (x (Array Int Int))) Bool 
	(and (> i 0)
	(forall ((index Int)) (= (select x index) 10))))


(define-fun trans-fn ((i Int)  (x (Array Int Int)) 
	(i! Int) (x! (Array Int Int))) Bool 
	(and (= i! i)
	(forall ((index Int))  
		(ite (< (select x index) 100)
			(= (select x! index) (+ (select x index) i))
			(= (select x! index ) (select x index))
			))))

(define-fun post-fn ((i Int) (x (Array Int Int))) Bool 
	(forall ((index Int)) (=> (>= index 0) (>= (select x index) 10))))

(constraint (=> (init-fn i x) (inv-fn i x)))
(constraint (=> (and (inv-fn i x) (trans-fn i x i! x!)) (inv-fn i! x!)))
(constraint (=> (inv-fn i x) (post-fn i x)))
(check-synth)


