
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


(constraint (= (f #x28085a970e13e12c) #x28085a970e13e12d))
(constraint (= (f #xbe5341bebd2a0749) #xbe5341bebd2a0749))
(constraint (= (f #xe239460eed2cc34e) #xe239460eed2cc34f))
(constraint (= (f #xac5b1b5e9b236b10) #xac5b1b5e9b236b11))
(constraint (= (f #x4069a4c7173e1786) #x4069a4c7173e1786))
(constraint (= (f #x39419062091119a6) #x39419062091119a6))
(constraint (= (f #x49aeeca628644ee0) #x49aeeca628644ee0))
(constraint (= (f #x75e5bc2a07c77c97) #x75e5bc2a07c77c97))
(constraint (= (f #x4c5ee4be98c5ee7d) #x4c5ee4be98c5ee7d))
(constraint (= (f #xcd67bd5beaac575e) #xcd67bd5beaac575e))
(check-synth)
