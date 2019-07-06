;
; Synthesize an exact condition under which an inverse for a given bit-vector
; operator can be computed.
;
; Solving Quantified Bit-Vectors using Invertibility Conditions
;
; Aina Niemetz, Mathias Preiner, Andrew Reynolds, Clark Barrett and
; Cesare Tinelli
;
(set-logic BV)

(synth-fun SC ((s (BitVec 4)) (t (BitVec 4))) Bool
  ((Start Bool (
     true
     false
     (not Start)
     (and Start Start)
     (or Start Start)
     (= StartBv StartBv)
     (bvult StartBv StartBv)
     (bvslt StartBv StartBv)
     (bvuge StartBv StartBv)
     (bvsge StartBv StartBv)
   ))
   (StartBv (BitVec 4) (
     s
     t
     #x0
     #x8
     #x7
     (bvneg  StartBv)
     (bvnot  StartBv)
     (bvadd  StartBv StartBv)
     (bvsub  StartBv StartBv)
     (bvand  StartBv StartBv)
     (bvlshr StartBv StartBv)
     (bvor   StartBv StartBv)
     (bvshl  StartBv StartBv)
   ))
))

(declare-var s (BitVec 4))
(declare-var t (BitVec 4))
(define-fun udivtotal ((a (BitVec 4)) (b (BitVec 4))) (BitVec 4)
  (ite (= b #x0) #xF (bvudiv a b))
)
(define-fun uremtotal ((a (BitVec 4)) (b (BitVec 4))) (BitVec 4)
  (ite (= b #x0) a (bvurem a b))
)
(define-fun case ((x (BitVec 4)) (s (BitVec 4)) (t (BitVec 4))) Bool
(bvsgt (bvlshr s x) t)
)
(constraint
  (=
   (or
    (case #x0 s t)
    (case #x1 s t)
    (case #x2 s t)
    (case #x3 s t)
    (case #x4 s t)
    (case #x5 s t)
    (case #x6 s t)
    (case #x7 s t)
    (case #x8 s t)
    (case #x9 s t)
    (case #xA s t)
    (case #xB s t)
    (case #xC s t)
    (case #xD s t)
    (case #xE s t)
    (case #xF s t)
   )
   (SC s t)
  )
)

(check-synth)
