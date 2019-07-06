(set-logic BV)

(define-fun if0 ((x (BitVec 32))(y (BitVec 32))(z (BitVec 32))) (BitVec 32)
    (ite (= x #x00000000) z y)
)

(define-fun expand ((x Bool)) (BitVec 32)
    (ite x #x00000001 #x00000000)
)

(define-fun implies ((a Bool)(b Bool)) Bool
    (or (not a) b)
)

(declare-var x (BitVec 32))

(define-fun G ((x (BitVec 32))) Bool
    (bvugt x #x00000000)
)

(define-fun B_x ((x (BitVec 32))) (BitVec 32)
    (bvmul x #x00000002)
)

(synth-fun R ((x (BitVec 32))) (BitVec 32)
)

(constraint 
(implies (G x) (bvugt (R x) #x00000000))
)

(constraint 
(implies (G x) (bvugt (R x) (R (B_x x))))
)

(check-synth)


