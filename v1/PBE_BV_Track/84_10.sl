
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


(constraint (= (f #xe093a45011447027) #xfffff1f6c5bafeeb))
(constraint (= (f #x222ee77dbb47d602) #xfffffddd1188244b))
(constraint (= (f #xe9d6351259ee1ed4) #xe9d6351259ee1ed5))
(constraint (= (f #xb4294084760655ad) #xfffff4bd6bf7b89f))
(constraint (= (f #x63580b071e7661a3) #x63580b071e7661a4))
(constraint (= (f #xb6de6711d9cd7e20) #xfffff492198ee263))
(constraint (= (f #x57a3bb75d75edd42) #x57a3bb75d75edd43))
(constraint (= (f #xae869555954769d4) #xae869555954769d5))
(constraint (= (f #x164db6b971e3d9a9) #xfffffe9b249468e1))
(constraint (= (f #xd97714baed4295e9) #xfffff2688eb4512b))
(check-synth)
