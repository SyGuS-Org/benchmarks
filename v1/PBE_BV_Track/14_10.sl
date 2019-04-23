
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


(constraint (= (f #xa2793ba0447489ee) #xfddeec5ffbbbf771))
(constraint (= (f #x2190c3de12635b0c) #xffefffe3ffddeeff))
(constraint (= (f #xe5ebea8de65bb421) #x0000e5ebefefeedf))
(constraint (= (f #x650402c24c0a5b17) #xfbfffffffbfffeee))
(constraint (= (f #x8ed342e62a50b171) #xf73effd9ddfffeee))
(constraint (= (f #x8b2066cac5a480e5) #x00008b20efeae7ee))
(constraint (= (f #x8647e54b7730c9ae) #xffbb9bbfc8cff775))
(constraint (= (f #x2bde841154e15b2b) #xfd637ffeebbfeedd))
(constraint (= (f #x203b9524ea07b1ce) #xfffc6effb5ffcef3))
(constraint (= (f #xe381a307106b9087) #x0000e381e387b36f))
(check-synth)
