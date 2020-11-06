(set-logic BV)

(define-fun hd09 ((x (_ BitVec 32))) (_ BitVec 32)
    (bvsub (bvxor x (bvashr x #x0000001F)) (bvashr x #x0000001F)))
(synth-fun f ((x (_ BitVec 32))) (_ BitVec 32)
    ((Start (_ BitVec 32)))
    ((Start (_ BitVec 32) ((bvsub Start Start) (bvadd Start Start) (bvashr Start Start) (bvlshr Start Start) (bvxor Start Start) (bvand Start Start) (bvor Start Start) #x00000001 #x00000000 #x0000001F #xFFFFFFFF x))))

(declare-var x (_ BitVec 32))
(constraint (= (hd09 x) (f x)))

(check-synth)

