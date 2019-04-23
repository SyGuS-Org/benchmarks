
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


(constraint (= (f #xcb811430e70a8385) #xcfb91573ef7aabbd))
(constraint (= (f #x0740ec3ae90051e7) #x0774eefbef9055ff))
(constraint (= (f #x1eb87952ba16c7eb) #x1ffbffd7bbb7efff))
(constraint (= (f #x737e3745835cbe2a) #x777ff775db7dffea))
(constraint (= (f #x695a65ab504578e1) #x0000695a65ab5045))
(constraint (= (f #x5c04be5bb9ed2840) #x00005c04be5bb9ed))
(constraint (= (f #x3579b1b1ebb2ba1a) #x377fbbbbffbbbbbb))
(constraint (= (f #x3524d1be542199e7) #x00003524d1be5421))
(constraint (= (f #x1a740959ad3b0b47) #x00001a740959ad3b))
(constraint (= (f #xb29abad0be12dc2e) #xbbbbbbfdbff3fdee))
(check-synth)
