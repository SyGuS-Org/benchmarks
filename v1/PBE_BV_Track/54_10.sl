
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


(constraint (= (f #x3ea459a928bee9b0) #xc15ba656d741164f))
(constraint (= (f #x4b4159b281637d86) #xb4bea64d7e9c8279))
(constraint (= (f #x49e0ee5bec4486c6) #xb61f11a413bb7939))
(constraint (= (f #x0216c8608935a551) #x00000010b6430449))
(constraint (= (f #x16ce9164ba6199b9) #x000000b6748b25d3))
(constraint (= (f #x8da2ecb6d52b9e65) #x0000046d1765b6a9))
(constraint (= (f #x7742b8e77713e3c4) #x88bd471888ec1c3b))
(constraint (= (f #x40c8cd2d84d6335e) #xbf3732d27b29cca1))
(constraint (= (f #x2e9880aee087bb23) #x00000174c4057704))
(constraint (= (f #xa17eda1be75e4850) #x5e8125e418a1b7af))
(check-synth)
