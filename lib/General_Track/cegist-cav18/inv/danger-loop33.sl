(set-logic BV)

(declare-var x (BitVec 32))

(define-fun if0 ((x (BitVec 32))(y (BitVec 32))(z (BitVec 32))) (BitVec 32)
    (ite (= x #x00000000) z y)
)

(define-fun expand ((x Bool)) (BitVec 32)
    (ite x #x00000001 #x00000000)
)

(define-fun implies ((a Bool)(b Bool)) Bool
    (or (not a) b)
)

(define-fun G ((x (BitVec 32))) Bool
    (bvsgt x #x00000000)
)

(define-fun B_x ((x (BitVec 32))) (BitVec 32)
    (bvsub x #x00000002)
)

(define-fun A ((x (BitVec 32))) Bool
    (bvsle #x00000000 x)
)

(synth-fun D ((x (BitVec 32))) Bool
)

(synth-fun R ((x (BitVec 32))) (BitVec 32)
)

(synth-fun x0 ((x (BitVec 32))) (BitVec 32)
)

(constraint 
(implies (and (D x) (G x)) (and (bvugt (R x) #x00000000) (and (bvugt (R x) (R (B_x x))) (D (B_x x)))))
)

(constraint 
(implies (and (D x) (not (G x))) (not (A x)))
)

(constraint 
(D (x0 x))
)

(constraint 
(and (bvslt (x0 x) #x00000100) (bvsgt (x0 x) #x00000200))
)

(check-synth)


