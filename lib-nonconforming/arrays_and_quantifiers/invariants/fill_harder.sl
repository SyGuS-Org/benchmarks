; solved wthout grammar
(set-logic ALL)
(synth-fun inv-fn ((c Int) (k Int) (x (Array Int Int))) Bool)
(declare-var x (Array Int Int))
(declare-var x! (Array Int Int))
(declare-var c Int)
(declare-var c! Int)
(declare-var k Int)
(declare-var k! Int)


(define-fun init-fn ((c Int) (k Int) (x (Array Int Int))) Bool 
	(and(= k 1000)(forall((index Int))(=> (< index k)(= (select x index) c)))))

(define-fun trans-fn ((c Int) (k Int) (x (Array Int Int)) (c! Int) (k! Int) (x! (Array Int Int))) Bool
(and 
(forall ((index Int)) (= (select x! index) (+ (select x index)1)))
(= c! (+ c 1)))
)
	

(define-fun post-fn ((c Int) (x (Array Int Int)) ) Bool 
	(exists ((index Int)) (and (= (select x index) c)
	(forall ((index2 Int)) (=> (and (>= index2 0)(< index2 index)) (= (select x index2) c))))))

(constraint (=> (init-fn c k x) (inv-fn c k x)))
(constraint (=> (and (inv-fn c k x) (trans-fn c k x c! k! x!)) (inv-fn c! k! x!)))
(constraint (=> (inv-fn c k x) (post-fn c x)))

(check-synth)


