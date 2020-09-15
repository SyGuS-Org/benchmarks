(set-logic BV)
(define-fun w () (_ BitVec 4) (_ bv4 4))
(define-fun zero () (_ BitVec 4) (_ bv0 4))
(define-fun ones () (_ BitVec 4) (bvnot zero))
(define-fun maxs () (_ BitVec 4) (bvlshr ones (_ bv1 4)))
(define-fun mins () (_ BitVec 4) (bvnot maxs))
(define-fun mcb ((xlo (_ BitVec 4)) (xhi (_ BitVec 4)) (v (_ BitVec 4))) Bool
 (and
  (= (bvor v xlo) v)
  (= (bvand v xhi) v)
 )
)
(define-fun ctz ((x (_ BitVec 4))) (_ BitVec 4)
 (ite
  (= ((_ extract 0 0) x) #b0)
  (ite
   (= ((_ extract 1 1) x) #b0)
   (ite
    (= ((_ extract 2 2) x) #b0)
    (ite
     (= ((_ extract 3 3) x) #b0)
     (_ bv4 4)
     (_ bv3 4)
    )
    (_ bv2 4)
   )
   (_ bv1 4)
  )
  (_ bv0 4)
 )
)
(define-fun clz ((x (_ BitVec 4))) (_ BitVec 4)
 (ite
  (= ((_ extract 3 3) x) #b0)
  (ite
   (= ((_ extract 2 2) x) #b0)
   (ite
    (= ((_ extract 1 1) x) #b0)
    (ite
     (= ((_ extract 0 0) x) #b0)
     (_ bv4 4)
     (_ bv3 4)
    )
    (_ bv2 4)
   )
   (_ bv1 4)
  )
  (_ bv0 4)
 )
)
(synth-fun IC ((xlo (_ BitVec 4)) (xhi (_ BitVec 4)) (s (_ BitVec 4)) (t (_ BitVec 4))) Bool
  ((Start Bool) (StartBv (_ BitVec 4)))
  ((Start Bool (
     true
     false
     (= StartBv StartBv)
     (mcb xlo xhi StartBv)
     (bvult StartBv StartBv)
     (bvslt StartBv StartBv)
     (not Start)
     (=> Start Start)
     (and Start Start)
     (or Start Start)
   ))
   (StartBv (_ BitVec 4) (
     s
     t
     xlo
     xhi
     zero
     ones
     mins
     maxs
     (ctz s)
     (ctz t)
     (clz s)
     (clz t)
     (bvxor StartBv StartBv)
     (bvneg  StartBv)
     (bvnot  StartBv)
     (bvadd  StartBv StartBv)
     (bvsub  StartBv StartBv)
     (bvand  StartBv StartBv)
     (bvlshr StartBv StartBv)
     (bvmul  StartBv StartBv)
     (bvor   StartBv StartBv)
     (bvshl  StartBv StartBv)
     (bvudiv StartBv StartBv)
     (bvurem StartBv StartBv)
   ))
))
(define-fun case ((x (_ BitVec 4)) (xlo (_ BitVec 4)) (xhi (_ BitVec 4)) (s (_ BitVec 4)) (t (_ BitVec 4))) Bool
 (and
  ; const bits of x
  (mcb xlo xhi x)
  ; bit-vector operation
  (= (bvurem s x) t)
 )
)
(declare-var s (_ BitVec 4))
(declare-var t (_ BitVec 4))
(declare-var xlo (_ BitVec 4))
(declare-var xhi (_ BitVec 4))
(define-fun precond () Bool
 (and
  ; original IC
  (bvule (bvand (bvsub (bvadd t t) s) s) t)
  ; valid xlo/xhi pairs
  (= (bvor (bvnot xlo) xhi) #b1111)
 )
)
(constraint
 (=>
  precond
  (=
   (or
    (case #b0000 xlo xhi s t)
    (case #b0001 xlo xhi s t)
    (case #b0010 xlo xhi s t)
    (case #b0011 xlo xhi s t)
    (case #b0100 xlo xhi s t)
    (case #b0101 xlo xhi s t)
    (case #b0110 xlo xhi s t)
    (case #b0111 xlo xhi s t)
    (case #b1000 xlo xhi s t)
    (case #b1001 xlo xhi s t)
    (case #b1010 xlo xhi s t)
    (case #b1011 xlo xhi s t)
    (case #b1100 xlo xhi s t)
    (case #b1101 xlo xhi s t)
    (case #b1110 xlo xhi s t)
    (case #b1111 xlo xhi s t)
   )
   (IC xlo xhi s t)
  )
 )
)
(check-synth)
