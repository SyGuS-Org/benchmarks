(set-logic BV)

(synth-fun inv ((x (_ BitVec 4))) Bool)

(define-fun implies ((a Bool) (b Bool)) Bool
    (or (not a) b))
(constraint (inv #x0))
(declare-var x (_ BitVec 4))
(constraint (implies (and (inv x) (not (= (bvadd x #x1) #xa))) (not (= (bvadd x #x1) #xf))))
(constraint (implies (and (inv x) (not (= (bvadd x #x1) #xa))) (inv (bvadd x #x1))))

(check-synth)

