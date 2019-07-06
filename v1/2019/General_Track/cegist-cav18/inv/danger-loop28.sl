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
    (bvugt x #x00000009)
)

(define-fun B_x ((x (BitVec 32))) (BitVec 32)
    (bvadd x #x00000002)
)

(define-fun A ((x (BitVec 32))) Bool
    (not (= (bvurem x #x00000002) #x00000000))
)

(synth-fun D ((x (BitVec 32))) Bool
)

(synth-fun R ((x (BitVec 32))) (BitVec 32)
)

(constraint 
(implies (and (D x) (G x)) (and (bvugt (R x) #x00000000) (and (bvugt (R x) (R (B_x x))) (D (B_x x)))))
)

(constraint 
(implies (and (D x) (not (G x))) (not (A x)))
)

(constraint 
(D #x0000000a)
)

(check-synth)


