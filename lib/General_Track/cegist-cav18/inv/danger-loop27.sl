(set-logic BV)

(declare-var x (_ BitVec 32))
(declare-var y (_ BitVec 32))
(define-fun if0 ((x (_ BitVec 32)) (y (_ BitVec 32)) (z (_ BitVec 32))) (_ BitVec 32)
    (ite (= x #x00000000) z y))
(define-fun expand ((x Bool)) (_ BitVec 32)
    (ite x #x00000001 #x00000000))
(define-fun implies ((a Bool) (b Bool)) Bool
    (or (not a) b))
(define-fun G ((y (_ BitVec 32))) Bool
    (bvult y #x00010003))
(define-fun B_x () (_ BitVec 32)
    #x00000000)
(define-fun B_y ((y (_ BitVec 32))) (_ BitVec 32)
    (bvadd y #x00000001))
(define-fun A ((x (_ BitVec 32))) Bool
    (= x #x00000001))
(synth-fun D ((x (_ BitVec 32)) (y (_ BitVec 32))) Bool)

(synth-fun R ((x (_ BitVec 32)) (y (_ BitVec 32))) (_ BitVec 32))

(constraint (implies (and (D x y) (G y)) (and (bvugt (R x y) #x00000000) (and (bvugt (R x y) (R B_x (B_y y))) (D B_x (B_y y))))))
(constraint (implies (and (D x y) (not (G y))) (not (A x))))
(constraint (D #x00000001 #x00000000))

(check-synth)

