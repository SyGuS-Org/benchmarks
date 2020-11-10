(set-logic BV)

(define-fun hd05 ((x (_ BitVec 32))) (_ BitVec 32)
    (bvor x (bvsub x #x00000001)))
(synth-fun f ((x (_ BitVec 32))) (_ BitVec 32)
    ((Start (_ BitVec 32)))
    ((Start (_ BitVec 32) ((bvsub Start Start) (bvneg Start) (bvadd Start Start) (bvand Start Start) (bvxor Start Start) (bvor Start Start) #x00000001 #x00000000 #xFFFFFFFF x))))

(declare-var x (_ BitVec 32))
(constraint (= (hd05 x) (f x)))

(check-synth)

