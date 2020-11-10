(set-logic BV)

(define-fun hd15 ((x (_ BitVec 32)) (y (_ BitVec 32))) (_ BitVec 32)
    (bvsub (bvor x y) (bvlshr (bvxor x y) #x00000001)))
(synth-fun f ((x (_ BitVec 32)) (y (_ BitVec 32))) (_ BitVec 32)
    ((Start (_ BitVec 32)))
    ((Start (_ BitVec 32) ((bvlshr Start Start) (bvxor Start Start) (bvsub Start Start) (bvor Start Start) x y #x00000001))))

(declare-var x (_ BitVec 32))
(declare-var y (_ BitVec 32))
(constraint (= (hd15 x y) (f x y)))

(check-synth)

