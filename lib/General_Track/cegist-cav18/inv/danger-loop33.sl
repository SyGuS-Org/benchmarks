(set-logic BV)

(declare-var x (_ BitVec 32))
(define-fun if0 ((x (_ BitVec 32)) (y (_ BitVec 32)) (z (_ BitVec 32))) (_ BitVec 32)
    (ite (= x #x00000000) z y))
(define-fun expand ((x Bool)) (_ BitVec 32)
    (ite x #x00000001 #x00000000))
(define-fun implies ((a Bool) (b Bool)) Bool
    (or (not a) b))
(define-fun G ((x (_ BitVec 32))) Bool
    (bvsgt x #x00000000))
(define-fun B_x ((x (_ BitVec 32))) (_ BitVec 32)
    (bvsub x #x00000002))
(define-fun A ((x (_ BitVec 32))) Bool
    (bvsle #x00000000 x))
(synth-fun D ((x (_ BitVec 32))) Bool)

(synth-fun R ((x (_ BitVec 32))) (_ BitVec 32))

(synth-fun x0 ((x (_ BitVec 32))) (_ BitVec 32))

(constraint (implies (and (D x) (G x)) (and (bvugt (R x) #x00000000) (and (bvugt (R x) (R (B_x x))) (D (B_x x))))))
(constraint (implies (and (D x) (not (G x))) (not (A x))))
(constraint (D (x0 x)))
(constraint (and (bvslt (x0 x) #x00000100) (bvsgt (x0 x) #x00000200)))

(check-synth)

