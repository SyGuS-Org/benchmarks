(set-logic BV)

(define-fun if0 ((x (_ BitVec 32)) (y (_ BitVec 32)) (z (_ BitVec 32))) (_ BitVec 32)
    (ite (= x #x00000000) z y))
(define-fun expand ((x Bool)) (_ BitVec 32)
    (ite x #x00000001 #x00000000))
(define-fun implies ((a Bool) (b Bool)) Bool
    (or (not a) b))
(declare-var x (_ BitVec 32))
(define-fun G ((x (_ BitVec 32))) Bool
    (bvugt x #x00000000))
(define-fun B_x ((x (_ BitVec 32))) (_ BitVec 32)
    (bvmul x #x00000002))
(synth-fun R ((x (_ BitVec 32))) (_ BitVec 32))

(constraint (implies (G x) (bvugt (R x) #x00000000)))
(constraint (implies (G x) (bvugt (R x) (R (B_x x)))))

(check-synth)

