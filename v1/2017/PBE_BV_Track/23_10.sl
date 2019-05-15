
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


(constraint (= (f #xa17786ed31a6e983) #x548801100c411064))
(constraint (= (f #xc23dd03148950a79) #x31c022cca362a500))
(constraint (= (f #x1d580634321d0383) #xe22279888cc22c44))
(constraint (= (f #x0e87dc233541d363) #xf110021cc8aa2088))
(constraint (= (f #x9066deeb92e18765) #x6699001044106088))
(constraint (= (f #x053e043e354c3e39) #xfa801b8008a30004))
(constraint (= (f #xe21557d61574c836) #x1deaa829ea8b37c9))
(constraint (= (f #xd458484d230b9ceb) #x22a233320cc44210))
(constraint (= (f #x9d6333334d838e5d) #x6208cccc82244102))
(constraint (= (f #x78decdc1a43610b3) #x8020122241888e44))
(check-synth)
