(declare-var a (Array Int Int))
(declare-var alength Int)
(declare-var ch Int)
(declare-var i Int)
(declare-var i! Int)
(declare-var r Int)
(declare-var r! Int)

(define-fun init-fn ((i Int) (r Int)(alength Int)) Bool
  (and (= r alength)(= i 0)))

(define-fun trans-fn ((a (Array Int Int))(alength Int)(ch Int)(i Int)(r Int)(i! Int)(r! Int)) Bool
	(ite (and (< i alength)(= r alength))
		(and (ite (> (select a i) ch) (= r! i)(= r! r)) (= i! (+ i 1)))
		(and (= i! i)(= r! r))))

(define-fun post-fn ((a (Array Int Int))(alength Int)(ch Int)(i Int)(r Int)) Bool
	(=> (and (<= 0 alength)(not (= r alength)))(exists ((pos Int))(= (select a pos) ch) )))

(synth-fun inv-fn ((a (Array Int Int))(alength Int)(ch Int) (i Int)(r Int)) Bool)

(constraint (=> (init-fn i r alength)(inv-fn a alength ch i r)))
(constraint (=> (and (inv-fn a alength ch i r)(trans-fn a alength ch i r i! r!))(inv-fn a alength ch i! r!) ))
(constraint (=> (inv-fn a alength ch i r) (post-fn a alength ch i r)))
(check-synth)