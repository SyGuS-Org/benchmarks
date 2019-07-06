
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


(constraint (= (f #x15cae98ece00d80b) #x0000000000000000))
(constraint (= (f #x4cc21d35a487ca9d) #x0000000000000000))
(constraint (= (f #x61e568e2070e28eb) #x0000000000000000))
(constraint (= (f #xdd68906be9ab8c64) #x0000000000000000))
(constraint (= (f #x3ebd9c8bc32e19e3) #x0000000000000000))
(constraint (= (f #x6ea98024d01c0a3a) #x0000000000000000))
(constraint (= (f #x32703dc8daee7209) #x032703dc8daee720))
(constraint (= (f #xc499278de4aacb16) #x0000000000000000))
(constraint (= (f #xe663b6bb29ec1e22) #x0000000000000000))
(constraint (= (f #x68a35dc1e6e782d1) #x068a35dc1e6e782d))
(check-synth)
