(set-logic ALL)
(synth-fun inv-fn ((c Int) (x (Array Int Int))) Bool)
(declare-var x (Array Int Int))
(declare-var c Int)
(declare-var x! (Array Int Int))
(declare-var c! Int)


(define-fun init-fn ((c Int) (x (Array Int Int))) Bool 
(and (= c 0) (= (select x 0) 0)))

(define-fun trans-fn ((c Int) (x (Array Int Int)) (c! Int) (x! (Array Int Int))) Bool 
	(and (= c! (+ c 1)) (= x! (store x c 0)) 
	(forall ((index Int)) (=> (not(= index c)) (= (select x! index)(select x index))))))


(define-fun post-fn ((c Int) (x (Array Int Int)) ) Bool 
	(forall ((index Int)) (=> (and (>= index 0) (< index 3)) (= (select x index) 0))))

(constraint (=> (init-fn c x) (inv-fn c x)))
(constraint (=> (and (inv-fn c x) (trans-fn c x c! x!)) (inv-fn c! x!)))
(constraint (=> (and (>= c 3) (inv-fn c x))(post-fn c x)))

(check-synth)


