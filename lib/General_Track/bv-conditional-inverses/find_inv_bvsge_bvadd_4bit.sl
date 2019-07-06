(set-logic BV)

(synth-fun inv ((s (BitVec 4)) (t (BitVec 4))) (BitVec 4)
  ((Start (BitVec 4) (
     s
     t
     #x0
     #x8 ; min_val
     #x7 ; max_val
     (bvneg  Start)
     (bvnot  Start)
     (bvadd  Start Start)
     (bvsub  Start Start)
     (bvand  Start Start)
     (bvlshr Start Start)
     (bvor   Start Start)
     (bvshl  Start Start)
   ))
)


)

(declare-var s (BitVec 4))
(declare-var t (BitVec 4))
(define-fun udivtotal ((a (BitVec 4)) (b (BitVec 4))) (BitVec 4)
  (ite (= b #x0) #xF (bvudiv a b))
)
(define-fun uremtotal ((a (BitVec 4)) (b (BitVec 4))) (BitVec 4)
  (ite (= b #x0) a (bvurem a b))
)
(define-fun min () (BitVec 4)
  (bvnot (bvlshr (bvnot #x0) #x1))
)
(define-fun max () (BitVec 4)
  (bvnot min)
)
(define-fun l ( (s (BitVec 4)) (t (BitVec 4))) Bool 
     (bvsge (bvadd (inv s t) s) t)
)
(define-fun SC ((s (BitVec 4)) (t (BitVec 4))) Bool 
    true
)
(constraint
  (=> 
    (SC s t)
    (l s t)
  )
)

(check-synth)
