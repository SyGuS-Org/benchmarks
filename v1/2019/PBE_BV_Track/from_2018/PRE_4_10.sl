
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


(constraint (= (f #xd5a6481ee2ba1030) #xfffffffffffffffe))
(constraint (= (f #x03e887e72dee55cd) #x03e887e72dee55cd))
(constraint (= (f #xaced92921c8e318d) #xaced92921c8e318d))
(constraint (= (f #x95e5e4184e40aaec) #xfffffffffffffffe))
(constraint (= (f #x352367e34d76550b) #x352367e34d76550b))
(constraint (= (f #x398560eeee7b1b6c) #xfffffffffffffffe))
(constraint (= (f #x099be4899986c29a) #xfffffffffffffffe))
(constraint (= (f #xb14b75be2e13445a) #xfffffffffffffffe))
(constraint (= (f #xb4c680ad7e6b16ce) #xfffffffffffffffe))
(constraint (= (f #x7e4954872868acb8) #xfffffffffffffffe))
(check-synth)
