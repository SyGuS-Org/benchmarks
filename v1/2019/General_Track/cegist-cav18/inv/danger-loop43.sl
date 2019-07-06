(set-logic BV)

(define-fun G ((x (BitVec 32))) Bool
    (bvult x #x0000000a)
)

(define-fun B_x ((x (BitVec 32))) (BitVec 32)
    (bvadd x #x00000001)
)

(define-fun A ((x (BitVec 32))) Bool
    (= x #x0000000a)
)

(declare-var x_var (BitVec 32))

(synth-fun D ((x (BitVec 32))) Bool
)

(synth-fun R ((x (BitVec 32))) (BitVec 32)
)

(synth-fun x0 () (BitVec 32)
)

(constraint 
(=> (and (D x_var) (G x_var)) (and (bvugt (R x_var) #x00000000) (and (bvugt (R x_var) (R (B_x x_var))) (D (B_x x_var)))))
)

(constraint 
(=> (and (D x_var) (not (G x_var))) (not (A x_var)))
)

(constraint 
(D x0)
)

(check-synth)


