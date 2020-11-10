(set-logic BV)

(declare-var a (_ BitVec 32))
(declare-var c (_ BitVec 32))
(declare-var i (_ BitVec 32))
(define-fun if0 ((x (_ BitVec 32)) (y (_ BitVec 32)) (z (_ BitVec 32))) (_ BitVec 32)
    (ite (= x #x00000000) z y))
(define-fun expand ((x Bool)) (_ BitVec 32)
    (ite x #x00000001 #x00000000))
(define-fun G ((i (_ BitVec 32))) Bool
    (bvult i #x00010003))
(define-fun B_c ((c (_ BitVec 32)) (i (_ BitVec 32))) (_ BitVec 32)
    (bvadd c i))
(define-fun B_i ((i (_ BitVec 32))) (_ BitVec 32)
    (bvadd i #x00000001))
(define-fun A ((a (_ BitVec 32))) Bool
    (bvugt a #x00000000))
(synth-fun D ((i (_ BitVec 32)) (c (_ BitVec 32)) (a (_ BitVec 32))) Bool)

(synth-fun R ((i (_ BitVec 32)) (c (_ BitVec 32)) (a (_ BitVec 32))) (_ BitVec 32))

(synth-fun a0 ((i (_ BitVec 32)) (c (_ BitVec 32)) (a (_ BitVec 32))) (_ BitVec 32))

(constraint (=> (and (D i c a) (G i)) (and (bvugt (R i c a) #x00000000) (and (bvugt (R i c a) (R (B_i i) (B_c i c) a)) (D (B_i i) (B_c i c) a)))))
(constraint (=> (and (D i c a) (not (G i))) (not (A a))))
(constraint (D #x00000000 #x00000000 (a0 i c a)))

(check-synth)

