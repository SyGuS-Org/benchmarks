
(set-logic BV)

(define-fun shr1 ((x (BitVec 64))) (BitVec 64) (bvlshr x #x0000000000000001))
(define-fun shr4 ((x (BitVec 64))) (BitVec 64) (bvlshr x #x0000000000000004))
(define-fun shr16 ((x (BitVec 64))) (BitVec 64) (bvlshr x #x0000000000000010))
(define-fun shl1 ((x (BitVec 64))) (BitVec 64) (bvshl x #x0000000000000001))
(define-fun if0 ((x (BitVec 64)) (y (BitVec 64)) (z (BitVec 64))) (BitVec 64) (ite (= x #x0000000000000001) y z))

(synth-fun f ( (x (BitVec 64))) (BitVec 64)
(

(Start (BitVec 64) (#x0000000000000000 #x0000000000000001 x (bvnot Start)
                    (shl1 Start)
 		    (shr1 Start)
		    (shr4 Start)
		    (shr16 Start)
		    (bvand Start Start)
		    (bvor Start Start)
		    (bvxor Start Start)
		    (bvadd Start Start)
		    (if0 Start Start Start)
 ))
)
)


(constraint (= (f #x200207893b142311) #x2002278b3f9d3b15))
(constraint (= (f #xe54b05a051e040e4) #x8004020003800180))
(constraint (= (f #x1414d859b47396e6) #x0001202240c60988))
(constraint (= (f #xb6b05d27e9d3e028) #x4840300f83078000))
(constraint (= (f #xee3d5e2929c00b15) #xee3dfe3d7fe92bd5))
(constraint (= (f #xd7a6a3e6c44ed8ec) #x0e08078900192190))
(constraint (= (f #x5a7be26701c23be3) #x20e7808c03006784))
(constraint (= (f #x5914a5b004eca9b1) #x5914fdb4a5fcadfd))
(constraint (= (f #x6a0430c555d0b6ab) #x8000410003004804))
(constraint (= (f #xcd2b110cc4642dde) #xcd2bdd2fd56cedfe))
(check-synth)
