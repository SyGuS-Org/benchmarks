
(set-logic BV)

(define-fun ehad ((x (BitVec 64))) (BitVec 64) (bvlshr x #x0000000000000001))
(define-fun arba ((x (BitVec 64))) (BitVec 64) (bvlshr x #x0000000000000004))
(define-fun shesh ((x (BitVec 64))) (BitVec 64) (bvlshr x #x0000000000000010))
(define-fun smol ((x (BitVec 64))) (BitVec 64) (bvshl x #x0000000000000001))
(define-fun im ((x (BitVec 64)) (y (BitVec 64)) (z (BitVec 64))) (BitVec 64) (ite (= x #x0000000000000001) y z))

(synth-fun f ( (x (BitVec 64))) (BitVec 64)
(

(Start (BitVec 64) (#x0000000000000000 #x0000000000000001 x (bvnot Start)
                    (smol Start)
 		    (ehad Start)
		    (arba Start)
		    (shesh Start)
		    (bvand Start Start)
		    (bvor Start Start)
		    (bvxor Start Start)
		    (bvadd Start Start)
		    (im Start Start Start)
 ))
)
)


(constraint (= (f #x8186d3e081baae46) #xfffffffffffffffe))
(constraint (= (f #xa6c1dcd5ae68008b) #xffffffffffffffff))
(constraint (= (f #x56e2b6c5006a408d) #xffffffffffffffff))
(constraint (= (f #x4ec50ede7e8a101d) #xffffffffffffffff))
(constraint (= (f #x4141051d040da8b3) #x00004141051d040d))
(constraint (= (f #x9d150d19c10b6596) #x00009d150d19c10b))
(constraint (= (f #xe8d804ca63cd9775) #x0000e8d804ca63cd))
(constraint (= (f #xe08d298dd9ee4224) #xfffffffffffffffe))
(constraint (= (f #x7ab5586b9ad9573e) #x00007ab5586b9ad9))
(constraint (= (f #x6ea3edae14546baa) #xfffffffffffffffe))
(check-synth)
