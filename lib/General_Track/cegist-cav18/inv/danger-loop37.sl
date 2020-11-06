(set-logic BV)

(declare-var x (_ BitVec 32))
(declare-var y (_ BitVec 32))
(define-fun if0 ((x (_ BitVec 32)) (y (_ BitVec 32)) (z (_ BitVec 32))) (_ BitVec 32)
    (ite (= x #x00000000) z y))
(define-fun expand ((x Bool)) (_ BitVec 32)
    (ite x #x00000001 #x00000000))
(define-fun implies ((a Bool) (b Bool)) Bool
    (or (not a) b))
(define-fun G ((x (_ BitVec 32))) Bool
    (bvult x #x00000063))
(define-fun B_x ((x (_ BitVec 32)) (y (_ BitVec 32))) (_ BitVec 32)
    (if0 (bvurem y #x00000002) (bvadd x #x00000001) (bvadd x #x00000002)))
(define-fun B_y ((y (_ BitVec 32))) (_ BitVec 32)
    y)
(define-fun A ((x (_ BitVec 32)) (y (_ BitVec 32))) Bool
    (= (bvurem x #x00000002) (bvurem y #x00000002)))
(synth-fun D ((x (_ BitVec 32)) (y (_ BitVec 32))) Bool)

(synth-fun R ((x (_ BitVec 32)) (y (_ BitVec 32))) (_ BitVec 32))

(synth-fun y0 ((x (_ BitVec 32)) (y (_ BitVec 32))) (_ BitVec 32))

(define-fun x0 () (_ BitVec 32)
    #x00000000)
(constraint (implies (and (D x y) (G x)) (and (bvugt (R x y) #x00000000) (and (bvugt (R x y) (R (B_x x y) (B_y y))) (D (B_x x y) (B_y y))))))
(constraint (implies (and (D x y) (not (G x))) (not (A x y))))
(constraint (D x0 (y0 x y)))

(check-synth)

