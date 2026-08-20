(set-logic ALL)

(synth-fun inv-fn ((a (Array Int Int))(b (Array Int Int)) (c Int)) Bool)
(declare-var a (Array Int Int))
(declare-var a! (Array Int Int))
(declare-var b (Array Int Int))
(declare-var b! (Array Int Int))
(declare-var c Int)


(define-fun init-fn ((a (Array Int Int)) (b (Array Int Int)) (c Int)) Bool
(and (= a b) (> c 1)))

(define-fun trans-fn ((a (Array Int Int)) (b (Array Int Int)) (a! (Array Int Int)) (b! (Array Int Int))) Bool
(and
(= a! (store (store a 1 (select a 0)) 0 (select a 1)))
(= b! b)))

(define-fun trans2-fn ((a (Array Int Int)) (b (Array Int Int)) (a! (Array Int Int)) (b! (Array Int Int)) (c Int)) Bool
(forall ((index1 Int )) (and (= (select a! index1) (+ (select a index1)c))
(= (select b! index1) (+ (select b index1)c)))))


(define-fun post-fn ((a (Array Int Int)) (b (Array Int Int))) Bool
(forall ((index1 Int))(exists ((index2 Int)) (= (select a index1) (select b index2)))))


(constraint (=> (init-fn a b c) (inv-fn a b c)))
(constraint (=> (and (inv-fn a b c) (trans-fn a b a! b!)) (inv-fn a! b! c)))
(constraint (=> (and (inv-fn a b c) (trans2-fn a b a! b! c)) (inv-fn a! b! c)))
(constraint (=> (inv-fn a b c) (post-fn a b )))
(check-synth)
