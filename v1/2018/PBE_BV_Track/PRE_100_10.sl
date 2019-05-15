
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


(constraint (= (f #xb3cac86be739e234) #xb3cac86be739e236))
(constraint (= (f #x51a9d52072e4b62d) #x000051a9d52072e5))
(constraint (= (f #x2130169dedcdee86) #x2130169dedcdee88))
(constraint (= (f #x990de8de31db2e84) #x990de8de31db2e86))
(constraint (= (f #x58e5b9739d2daea6) #x58e5b9739d2daea8))
(constraint (= (f #x42952532650e6962) #x42952532650e6964))
(constraint (= (f #xcc69c62112c1d09e) #xcc69c62112c1d0a0))
(constraint (= (f #x210a64857152e648) #x210a64857152e64a))
(constraint (= (f #xce111bea931328d4) #xce111bea931328d6))
(constraint (= (f #xbeb187cd6ed5b4bd) #x0000beb187cd6ed6))
(check-synth)
