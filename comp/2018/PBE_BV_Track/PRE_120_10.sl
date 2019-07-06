
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


(constraint (= (f #x9242b6dae8883bb3) #x0000000000000000))
(constraint (= (f #x73108d32440c677e) #x0000000000000000))
(constraint (= (f #xc81a3db6eaaea2ee) #x0000000000000000))
(constraint (= (f #x67bdd02d959b1e03) #x0000000000000000))
(constraint (= (f #xe0c0e0375167a783) #x0000000000000000))
(constraint (= (f #x51cadbaee51cd706) #x0000000000000000))
(constraint (= (f #x0b868527dea43769) #x0000000000000000))
(constraint (= (f #xc0e42167c984ee9e) #x0000000000000000))
(constraint (= (f #x402eea7a20ce6c0e) #x0000000000000000))
(constraint (= (f #xbae36b08c0ca9c30) #x0000000000000000))
(check-synth)
