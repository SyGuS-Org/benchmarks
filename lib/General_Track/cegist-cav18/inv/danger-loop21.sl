(set-logic BV)

(declare-var x (_ BitVec 32))
(declare-var y (_ BitVec 32))
(define-fun if0 ((x (_ BitVec 32)) (y (_ BitVec 32)) (z (_ BitVec 32))) (_ BitVec 32)
    (ite (= x #x00000000) z y))
(define-fun expand ((x Bool)) (_ BitVec 32)
    (ite x #x00000001 #x00000000))
(define-fun G ((x (_ BitVec 32))) Bool
    (bvult x #x00010003))
(define-fun B_x ((x (_ BitVec 32))) (_ BitVec 32)
    (bvadd x #x00000001))
(define-fun B_y ((y (_ BitVec 32)) (n (_ BitVec 32))) (_ BitVec 32)
    (if0 n y (bvadd y #x00000001)))
(define-fun A ((x (_ BitVec 32)) (y (_ BitVec 32))) Bool
    (not (= x y)))
(synth-fun D ((x (_ BitVec 32)) (y (_ BitVec 32))) Bool)

(synth-fun R ((x (_ BitVec 32)) (y (_ BitVec 32))) (_ BitVec 32))

(synth-fun S ((x (_ BitVec 32)) (y (_ BitVec 32))) (_ BitVec 32))

(constraint (=> (and (D x y) (G x)) (and (bvugt (R x y) #x00000000) (and (bvugt (R x y) (R (B_x x) (B_y y (S x y)))) (D (B_x x) (B_y y (S x y)))))))
(constraint (=> (and (D x y) (not (G x))) (not (A x y))))
(constraint (D #x00000000 #x00000001))

(check-synth)

