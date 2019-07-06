(set-logic BV)

(declare-var x (BitVec 32))

(declare-var y (BitVec 32))

(define-fun if0 ((x (BitVec 32))(y (BitVec 32))(z (BitVec 32))) (BitVec 32)
    (ite (= x #x00000000) z y)
)

(define-fun expand ((x Bool)) (BitVec 32)
    (ite x #x00000001 #x00000000)
)

(define-fun implies ((a Bool)(b Bool)) Bool
    (or (not a) b)
)

(define-fun G ((y (BitVec 32))) Bool
    (bvult y #x00010003)
)

(define-fun B_x () (BitVec 32)
    #x00000000
)

(define-fun B_y ((y (BitVec 32))) (BitVec 32)
    (bvadd y #x00000001)
)

(define-fun A ((x (BitVec 32))) Bool
    (= x #x00000001)
)

(synth-fun D ((x (BitVec 32))(y (BitVec 32))) Bool
)

(synth-fun R ((x (BitVec 32))(y (BitVec 32))) (BitVec 32)
)

(constraint 
(implies (and (D x y) (G y)) (and (bvugt (R x y) #x00000000) (and (bvugt (R x y) (R B_x (B_y y))) (D B_x (B_y y)))))
)

(constraint 
(implies (and (D x y) (not (G y))) (not (A x)))
)

(constraint 
(D #x00000001 #x00000000)
)

(check-synth)


