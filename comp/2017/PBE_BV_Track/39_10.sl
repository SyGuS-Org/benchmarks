
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


(constraint (= (f #xacb61ceeb8401d34) #xacb61ceeb8401d36))
(constraint (= (f #x58d1a3366e17b724) #x0000000000000002))
(constraint (= (f #xa4c130529a517258) #xa4c130529a51725a))
(constraint (= (f #xe7c1c59ea58b3dec) #x0000000000000002))
(constraint (= (f #x0e2e259435431dee) #x0000000000000002))
(constraint (= (f #x6d2be13c93e67aed) #x0000000000000002))
(constraint (= (f #x66e8a966049b3eb2) #x66e8a966049b3eb0))
(constraint (= (f #xeedc2a0be801ed07) #x0000000000000002))
(constraint (= (f #xbe683e2ec7e4e2ac) #x0000000000000002))
(constraint (= (f #x641210b3ced656e2) #x0000000000000002))
(check-synth)
