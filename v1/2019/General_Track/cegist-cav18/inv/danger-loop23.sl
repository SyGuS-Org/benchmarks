(set-logic BV)

(declare-var x (BitVec 32))

(declare-var len (BitVec 32))

(declare-var i (BitVec 32))

(define-fun if0 ((x (BitVec 32))(y (BitVec 32))(z (BitVec 32))) (BitVec 32)
    (ite (= x #x00000000) z y)
)

(define-fun expand ((x Bool)) (BitVec 32)
    (ite x #x00000001 #x00000000)
)

(define-fun G ((x (BitVec 32))(len (BitVec 32))(i (BitVec 32))) Bool
    (and (bvult (bvmul i #x00000004) len) (bvult i x))
)

(define-fun B_i ((i (BitVec 32))) (BitVec 32)
    (bvadd i #x00000001)
)

(define-fun A ((x (BitVec 32))(len (BitVec 32))(i (BitVec 32))) Bool
    (or (bvult (bvmul i #x00000004) len) (bvuge i x))
)

(synth-fun D ((x (BitVec 32))(len (BitVec 32))(i (BitVec 32))) Bool
)

(synth-fun R ((x (BitVec 32))(len (BitVec 32))(i (BitVec 32))) (BitVec 32)
)

(synth-fun x0 ((x (BitVec 32))(len (BitVec 32))(i (BitVec 32))) (BitVec 32)
)

(constraint 
(=> (and (D x len i) (G x len i)) (and (bvugt (R x len i) #x00000000) (and (bvugt (R x len i) (R x len (B_i i))) (D x len (B_i i)))))
)

(constraint 
(=> (and (D x len i) (not (G x len i))) (not (A x len i)))
)

(constraint 
(D (x0 x len i) (bvmul (x0 x len i) #x00000004) #x00000000)
)

(check-synth)


