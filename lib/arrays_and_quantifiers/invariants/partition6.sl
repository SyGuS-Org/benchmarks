(set-logic ALL)
(declare-var a (Array Int Int))
(declare-var a! (Array Int Int))
(declare-var b (Array Int Int))
(declare-var b! (Array Int Int))
(declare-var c (Array Int Int))
(declare-var c! (Array Int Int))
(declare-var i Int)
(declare-var blength Int)
(declare-var clength Int)
(declare-var i! Int)
(declare-var blength! Int)
(declare-var clength! Int)

(define-fun init-fn ((i Int) (blength Int)(clength Int))Bool
	(and (= i 0) (= blength 0) (= clength 0)))

(synth-fun inv-fn ((a (Array Int Int))(b (Array Int Int))(c (Array Int Int))
	(i Int)(blength Int)(clength Int)) Bool)

(define-fun trans-fn ((a (Array Int Int))(b (Array Int Int))(c (Array Int Int))
	(i Int)(blength Int)(clength Int)
	(b! (Array Int Int))(c! (Array Int Int))
	(i! Int)(blength! Int)(clength! Int)) Bool
	(ite (>= (select a i) 0)
		(and 
      (forall ((index1 Int))(ite (= index1 blength) (= (select b! index1)(select a i))(= (select b! index1) (select b index1)))) 
      (= blength! (+ 1 blength))
			(= clength! clength) (= i! (+ 1 i)) (= c! c))
		(and 
      (forall ((index1 Int))(ite (= index1 clength) (= (select c! index1)(select a i))(= (select c! index1) (select c index1)))) 
      (= clength! (+ 1 clength))
			(= blength! blength) (= i! (+ 1 i)) (= b! b))))

(define-fun post-fn ((b (Array Int Int)) (blength Int)) Bool
(forall ((index Int)) (=> (and (< index i) (>= index 0)) 
	(=> (< (select a index) 0 ) 
		(exists ((index2 Int)) (= (select c index2) (select a index)))))))



(constraint (=> (init-fn i blength clength)(inv-fn a b c i blength clength)))
(constraint (=> (inv-fn a b c i blength clength)(post-fn b blength)))
(constraint (=> (and (inv-fn a b c i blength clength)
	(trans-fn a b c i blength clength b! c! i! blength! clength!) ) (inv-fn a b! c! i! blength! clength!)))


(check-synth)

