(set-logic BV)

(synth-fun eq1 ((x (BitVec 32))(y (BitVec 32))(z (BitVec 32))) (BitVec 32)
)

(define-fun iteB ((b1 Bool)(b2 Bool)(b3 Bool)) Bool
    (or (and b1 b2) (and (not b1) b3))
)

(define-fun plus2 ((b1 (BitVec 32))(b2 (BitVec 32))) (BitVec 32)
    (bvadd b1 b2)
)

(define-fun plus3 ((b1 (BitVec 32))(b2 (BitVec 32))(b3 (BitVec 32))) (BitVec 32)
    (bvadd (bvadd b1 b2) b3)
)

(define-fun plus4 ((b1 (BitVec 32))(b2 (BitVec 32))(b3 (BitVec 32))(b4 (BitVec 32))) (BitVec 32)
    (bvadd (plus3 b1 b2 b3) b4)
)

(define-fun plus5 ((b1 (BitVec 32))(b2 (BitVec 32))(b3 (BitVec 32))(b4 (BitVec 32))(b5 (BitVec 32))) (BitVec 32)
    (bvadd (plus4 b1 b2 b3 b4) b5)
)

(define-fun plus6 ((b1 (BitVec 32))(b2 (BitVec 32))(b3 (BitVec 32))(b4 (BitVec 32))(b5 (BitVec 32))(b6 (BitVec 32))) (BitVec 32)
    (bvadd (plus5 b1 b2 b3 b4 b5) b6)
)

(define-fun plus7 ((b1 (BitVec 32))(b2 (BitVec 32))(b3 (BitVec 32))(b4 (BitVec 32))(b5 (BitVec 32))(b6 (BitVec 32))(b7 (BitVec 32))) (BitVec 32)
    (bvadd (plus6 b1 b2 b3 b4 b5 b6) b7)
)

(define-fun plus8 ((b1 (BitVec 32))(b2 (BitVec 32))(b3 (BitVec 32))(b4 (BitVec 32))(b5 (BitVec 32))(b6 (BitVec 32))(b7 (BitVec 32))(be (BitVec 32))) (BitVec 32)
    (bvadd (plus7 b1 b2 b3 b4 b5 b6 b7) be)
)

(define-fun plus9 ((b1 (BitVec 32))(b2 (BitVec 32))(b3 (BitVec 32))(b4 (BitVec 32))(b5 (BitVec 32))(b6 (BitVec 32))(b7 (BitVec 32))(be (BitVec 32))(bn (BitVec 32))) (BitVec 32)
    (bvadd (plus8 b1 b2 b3 b4 b5 b6 b7 be) bn)
)

(define-fun or3 ((b1 Bool)(b2 Bool)(b3 Bool)) Bool
    (or (or b1 b2) b3)
)

(define-fun one-times ((b1 (BitVec 32))) (BitVec 32)
    b1
)

(define-fun two-times ((b1 (BitVec 32))) (BitVec 32)
    (plus2 b1 b1)
)

(define-fun three-times ((b1 (BitVec 32))) (BitVec 32)
    (plus3 b1 b1 b1)
)

(define-fun five-times ((b1 (BitVec 32))) (BitVec 32)
    (plus5 b1 b1 b1 b1 b1)
)

(define-fun seven-times ((b1 (BitVec 32))) (BitVec 32)
    (plus7 b1 b1 b1 b1 b1 b1 b1)
)

(define-fun nine-times ((b1 (BitVec 32))) (BitVec 32)
    (plus9 b1 b1 b1 b1 b1 b1 b1 b1 b1)
)

(define-fun ten-times ((b1 (BitVec 32))) (BitVec 32)
    (plus9 b1 b1 b1 b1 b1 b1 b1 b1 (plus2 b1 b1))
)

(define-fun minus ((b1 (BitVec 32))) (BitVec 32)
    (bvsub #x00000000 b1)
)

(declare-var x (BitVec 32))

(declare-var y (BitVec 32))

(declare-var z (BitVec 32))

(constraint 
(iteB (bvuge (plus3 x y z) #x00000001) (= (eq1 x y z) (plus2 x y)) (= (eq1 x y z) (plus2 x (minus y))))
)

(check-synth)


