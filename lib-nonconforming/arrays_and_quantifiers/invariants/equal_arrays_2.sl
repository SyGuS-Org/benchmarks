
(set-logic ALL)
(synth-fun inv-fn ((x (Array Int Int)) (y (Array Int Int))(c1 Int) ) Bool)
(declare-var x (Array Int Int))


(declare-var x! (Array Int Int))
(declare-var y (Array Int Int))
(declare-var y! (Array Int Int))
(declare-var c1 Int)
(declare-var c1! Int)



(define-fun init-fn ((x (Array Int Int)) (y (Array Int Int)) (c1 Int) ) Bool 
	(and (forall ((index Int)) (= (select y index) 10))
	(forall ((index Int)) (= (select x index) 10))))


(define-fun trans-fn ((x (Array Int Int)) (y (Array Int Int))(c1 Int) 
	(x! (Array Int Int)) (y! (Array Int Int))(c1! Int) ) Bool 
	(and (forall ((index Int))
		(and
			(= (select x! index) (+ (select y index) c1))
			(= (select y! index ) (+ (select x index) c1))
			))(= c1! c1) ))

(define-fun post-fn ((x (Array Int Int)) (y (Array Int Int))(c1 Int) ) Bool 
	(forall ((index Int))(=> (>= index 0) (=(- (select x index) (select y index)) 0))))
 
(constraint (=> (init-fn x y c1 ) (inv-fn x y c1 )))
(constraint (=> (and (inv-fn x y c1 ) (trans-fn x y  c1  x! y! c1! )) (inv-fn x! y! c1 )))
(constraint (=> (inv-fn x y c1 ) (post-fn x y c1 )))
(check-synth)
