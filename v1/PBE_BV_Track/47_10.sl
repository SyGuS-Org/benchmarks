
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


(constraint (= (f #x2ace6154c9d65db4) #x559cc2a993acbb69))
(constraint (= (f #xddc2726b7eabe005) #xddc2726b7eabe001))
(constraint (= (f #x8a4b66e6de3de165) #x1496cdcdbc7bc2cb))
(constraint (= (f #x5e61087b2954178d) #x5e61087b29541789))
(constraint (= (f #x3e9520ed2bd2b515) #x3e9520ed2bd2b511))
(constraint (= (f #x678d3e83d88b258e) #x678d3e83d88b258a))
(constraint (= (f #x494964c29dec25a9) #x9292c9853bd84b53))
(constraint (= (f #xa340aede7d209a66) #x46815dbcfa4134cd))
(constraint (= (f #x5a611e3e2e855bed) #xb4c23c7c5d0ab7db))
(constraint (= (f #x17266a760c37e395) #x17266a760c37e391))
(check-synth)
