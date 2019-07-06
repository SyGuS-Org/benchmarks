
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


(constraint (= (f #x321e6678937339ed) #x321e6678937339ec))
(constraint (= (f #x671e9ae978b2c33d) #x671e9ae978b2c33c))
(constraint (= (f #x3ab0a234339486be) #x3ab0a234339486bd))
(constraint (= (f #x358c11cce9a53ee8) #x358c11cce9a53ee7))
(constraint (= (f #xec82acc416ee1d51) #xd90559882ddc3aa3))
(constraint (= (f #x06a698ac31a03bed) #x06a698ac31a03bec))
(constraint (= (f #xede73acaa9c8b0ca) #xdbce759553916195))
(constraint (= (f #x2eaca61a413e8145) #x5d594c34827d028b))
(constraint (= (f #xab919b00659e40a6) #xab919b00659e40a5))
(constraint (= (f #xbaa99b84e74630b8) #xbaa99b84e74630b7))
(check-synth)
