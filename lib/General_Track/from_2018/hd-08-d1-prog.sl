(set-logic BV)

(define-fun hd08 ((x (_ BitVec 32))) (_ BitVec 32)
    (bvand (bvnot x) (bvsub x #x00000001)))
(synth-fun f ((x (_ BitVec 32))) (_ BitVec 32)
    ((Start (_ BitVec 32)))
    ((Start (_ BitVec 32) ((bvsub Start Start) (bvadd Start Start) (bvnot Start) (bvneg Start) (bvand Start Start) (bvor Start Start) (bvxor Start Start) #x00000000 #x00000001 #xFFFFFFFF x))))

(declare-var x (_ BitVec 32))
(constraint (= (hd08 x) (f x)))

(check-synth)

