(set-logic BV)

(declare-var x (_ BitVec 32))
(declare-var y (_ BitVec 32))
(declare-var lockstate (_ BitVec 32))
(define-fun if0 ((x (_ BitVec 32)) (y (_ BitVec 32)) (z (_ BitVec 32))) (_ BitVec 32)
    (ite (= x #x00000000) z y))
(define-fun expand ((x Bool)) (_ BitVec 32)
    (ite x #x00000001 #x00000000))
(define-fun G ((x (_ BitVec 32)) (y (_ BitVec 32))) Bool
    (not (= x y)))
(define-fun B_x ((y (_ BitVec 32))) (_ BitVec 32)
    y)
(define-fun B_y ((y (_ BitVec 32)) (n (_ BitVec 32))) (_ BitVec 32)
    (if0 n y (bvadd y #x00000001)))
(define-fun B_lockstate ((n (_ BitVec 32))) (_ BitVec 32)
    (if0 n #x00000000 #x00000001))
(define-fun A ((lockstate (_ BitVec 32))) Bool
    (= lockstate #x00000000))
(synth-fun D ((x (_ BitVec 32)) (y (_ BitVec 32)) (lockstate (_ BitVec 32))) Bool)

(synth-fun R ((x (_ BitVec 32)) (y (_ BitVec 32)) (lockstate (_ BitVec 32))) (_ BitVec 32))

(synth-fun S ((x (_ BitVec 32)) (y (_ BitVec 32)) (lockstate (_ BitVec 32))) (_ BitVec 32))

(synth-fun y0 ((x (_ BitVec 32)) (y (_ BitVec 32)) (lockstate (_ BitVec 32))) (_ BitVec 32))

(synth-fun n0 ((x (_ BitVec 32)) (y (_ BitVec 32)) (lockstate (_ BitVec 32))) (_ BitVec 32))

(define-fun x0 ((y (_ BitVec 32))) (_ BitVec 32)
    y)
(define-fun lockstate0 ((n (_ BitVec 32))) (_ BitVec 32)
    (if0 n #x00000001 #x00000000))
(define-fun y1 ((y (_ BitVec 32)) (n (_ BitVec 32))) (_ BitVec 32)
    (if0 n y (bvadd y #x00000001)))
(constraint (=> (and (D x y lockstate) (G x y)) (and (bvugt (R x y lockstate) #x00000000) (and (bvugt (R x y lockstate) (R (B_x y) (B_y y (S x y lockstate)) (B_lockstate (S x y lockstate)))) (D (B_x y) (B_y y (S x y lockstate)) (B_lockstate (S x y lockstate)))))))
(constraint (=> (and (D x y lockstate) (not (G x y))) (not (A lockstate))))
(constraint (D (x0 (y0 x y lockstate)) (y1 (y0 x y lockstate) (n0 x y lockstate)) (lockstate0 (n0 x y lockstate))))

(check-synth)

