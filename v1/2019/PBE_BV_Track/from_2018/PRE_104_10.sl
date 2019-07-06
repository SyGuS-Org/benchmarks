
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


(constraint (= (f #xb321e2bcb5d4ce60) #x6643c5796ba99cc0))
(constraint (= (f #x48776ed52a38663a) #x90eeddaa5470cc74))
(constraint (= (f #xe0642c2e018e40e4) #xc0c8585c031c81c8))
(constraint (= (f #xe7ea80d80b2ea9ee) #xcfd501b0165d53dc))
(constraint (= (f #xe82de1215d08cc8e) #xd05bc242ba11991c))
(constraint (= (f #xd03e8a11d2a7a889) #x681f4508e953d444))
(constraint (= (f #xbec219398a108952) #x7d843273142112a4))
(constraint (= (f #x849702c9ee9a767b) #x0000000000000000))
(constraint (= (f #x826ec5c883d48b71) #x0000000000000000))
(constraint (= (f #x5503401395759099) #x2a81a009cabac84c))
(check-synth)
