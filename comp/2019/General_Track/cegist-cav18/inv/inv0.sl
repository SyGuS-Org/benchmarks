(set-logic BV)

(synth-fun inv () (BitVec 32))

(define-fun implies ((a Bool) (b Bool)) Bool
    (or (not a) b))
(constraint (bvult #x00000000 inv))
(declare-var x (BitVec 32))
(constraint (implies (and (bvult x inv) (not (= (bvadd x #x00000001) #x0000000a))) (not (= (bvadd x #x00000001) #x000000ff))))
(constraint (implies (and (bvult x inv) (not (= (bvadd x #x00000001) #x0000000a))) (bvult (bvadd x #x00000001) inv)))

(check-synth)

