
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


(constraint (= (f #x7ae6e89bceabea30) #x0000007ae6e89bce))
(constraint (= (f #x4c1d10e3542b7b59) #x983a21c6a856f6b0))
(constraint (= (f #x06ea177047e59e6d) #x0dd42ee08fcb3cd8))
(constraint (= (f #x7d48ba79dd2a578d) #xfa9174f3ba54af18))
(constraint (= (f #x6e1327bd87241083) #x0000006e1327bd87))
(constraint (= (f #x02700e1ed96ad31d) #x04e01c3db2d5a638))
(constraint (= (f #xdaeb644158573713) #x000000daeb644158))
(constraint (= (f #x2ed5be278659e2ed) #x5dab7c4f0cb3c5d8))
(constraint (= (f #xa3e518eb9ee32de4) #x000000a3e518eb9e))
(constraint (= (f #xac96c241231ea9ee) #x592d8482463d53dc))
(check-synth)
