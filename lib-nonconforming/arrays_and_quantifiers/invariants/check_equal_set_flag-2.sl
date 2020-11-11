(declare-var a (Array Int Int))
(declare-var b (Array Int Int))
(declare-var length Int)
(declare-var r Int)
(declare-var r! Int)
(declare-var i Int)
(declare-var i! Int)

(define-fun init-fn ((r Int) (i Int)) Bool
  (and (= r 0)(= i 0)))

(define-fun trans-fn ((a (Array Int Int))(b (Array Int Int))(length Int)(r Int)(i Int)(r! Int)(i! Int)) Bool
  (ite (< i length)
    (and (ite (= (select a i)(select b i))(= r! r)(= r! 1))(= i! (+ i 1)))
    (and (= r! r)(= i! i))
    )
  )

(define-fun post-fn ((a (Array Int Int))(b (Array Int Int))(length Int)(r Int)(i Int)) Bool
  (=> (and (<= 0 length)(= r 1))(exists ((index Int))(not (= (select a index) (select b index))))))

(synth-fun inv-fn ((a (Array Int Int))(b (Array Int Int))(length Int)(r Int)(i Int)) Bool 

	)

(constraint (=> (init-fn r i) (inv-fn a b length r i)))
(constraint (=> (and (inv-fn a b length r i)(trans-fn a b length r i r! i!))(inv-fn a b length r! i!)))
(constraint (=> (and (inv-fn a b length r i)(>= i length)) (post-fn a b length r i) ))
(check-synth)

