
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


(constraint (= (f #x407342b4898da67e) #x607be3fecdcff77f))
(constraint (= (f #xa454175d3cb6e7a2) #xf67e1fffbefff7f3))
(constraint (= (f #xe426ed5261cac26e) #xf637fffb71efe37f))
(constraint (= (f #xbeecd7cb22e535ab) #x5f766be591729ad5))
(constraint (= (f #x469724129ed193c0) #x67dfb61bdff9dbe0))
(constraint (= (f #x3e7c6de6d950ca21) #x1f3e36f36ca86510))
(constraint (= (f #x4095ab0ea98867eb) #x204ad58754c433f5))
(constraint (= (f #xa020c51c71dac296) #xf030e79e79ffe3df))
(constraint (= (f #x8eb8e91016deb707) #x475c74880b6f5b83))
(constraint (= (f #xd17cb63dbd94e05b) #x68be5b1edeca702d))
(check-synth)
