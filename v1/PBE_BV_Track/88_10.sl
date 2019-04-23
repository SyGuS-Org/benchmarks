
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


(constraint (= (f #x84aae1da2c5ccd64) #x8dffe3fe7cfddfee))
(constraint (= (f #x01b04334d6a7ebd3) #x00d8219a6b53f5e8))
(constraint (= (f #x92364ce9909c74c4) #xb67eddfbb1bcfdce))
(constraint (= (f #x8442bb3e6032ec93) #x42215d9f30197648))
(constraint (= (f #x65ed4301e69c6d7c) #xefffc703efbcfffe))
(constraint (= (f #x30aebe7c9dc565a7) #x18575f3e4ee2b2d2))
(constraint (= (f #x9eb13da1be5cc56e) #xbff37fe3fefdcffe))
(constraint (= (f #x6e0b139b9addd15a) #xfe1f37bfbffff3fe))
(constraint (= (f #xa478bb348039ecee) #xecf9ff7d807bfdfe))
(constraint (= (f #x24a35e5b7562e098) #x6de7feffffe7e1ba))
(check-synth)
