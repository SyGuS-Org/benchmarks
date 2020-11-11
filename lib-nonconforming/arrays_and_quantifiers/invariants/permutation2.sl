(set-logic ALL)
(synth-fun inv-fn ((a (Array Int Int))(b (Array Int Int))) Bool)
(declare-var a (Array Int Int))
(declare-var a! (Array Int Int))
(declare-var b (Array Int Int))
(declare-var b! (Array Int Int))
(declare-var idx1 Int)
(declare-var idx2 Int)


(define-fun init-fn ((a (Array Int Int)) (b (Array Int Int))) Bool
(= a b))


(define-fun trans-fn ((a (Array Int Int)) (b (Array Int Int)) (a! (Array Int Int)) (b! (Array Int Int))
(idx1 Int) (idx2 Int)) Bool
(and
(= a! (store a 10 (select a 7)))
(= a! (store a 7 (select a 10)))
(= b! b)))

(define-fun post-fn ((a (Array Int Int)) (b (Array Int Int)) ) Bool
(forall ((index1 Int)) 
(exists ((index2 Int)) (= (select a index1) (select b index2)))))


(constraint (=> (init-fn a b) (inv-fn a b )))
(constraint (=> (and (inv-fn a b ) (trans-fn a b a! b! idx1 idx2)) (inv-fn a! b!)))
(constraint (=> (inv-fn a b ) (post-fn a b )))
(check-synth)
