(set-logic BV)

(define-fun hd09 ((x (_ BitVec 32))) (_ BitVec 32)
    (bvsub (bvxor x (bvashr x #x0000001F)) (bvashr x #x0000001F)))
(synth-fun f ((x (_ BitVec 32))) (_ BitVec 32)
    ((Start (_ BitVec 32)))
    ((Start (_ BitVec 32) ((bvsub Start Start) (bvashr Start Start) (bvxor Start Start) #x0000001F x))))

(declare-var x (_ BitVec 32))
(constraint (= (hd09 x) (f x)))

(check-synth)

