
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


(constraint (= (f #x101335e013bde390) #x000008099af009df))
(constraint (= (f #xba0b23905bd40ed5) #x00005d0591c82deb))
(constraint (= (f #xc500e9873dc481a9) #x0000628074c39ee3))
(constraint (= (f #x8d8b6999026190e8) #x9b16d33204c321d0))
(constraint (= (f #x29d1a69b7e33c114) #x53a34d36fc678228))
(constraint (= (f #xbd4c8e4e110ed143) #x00005ea647270888))
(constraint (= (f #x06a236b8e03bec86) #x0d446d71c077d90c))
(constraint (= (f #x22ae86d500cee873) #x455d0daa019dd0e6))
(constraint (= (f #xbe92b0e848463c32) #xfd2561d0908c7864))
(constraint (= (f #xe64468e0c7317db0) #x0000732234706399))
(check-synth)