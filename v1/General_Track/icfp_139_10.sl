
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


(constraint (= (f #x6d1e607710691396) #xda3cc0ee20d2272e))
(constraint (= (f #x675aecbae08b4a14) #xceb5d975c116942a))
(constraint (= (f #xbe0160eb542aa373) #xbe0160eb542aa373))
(constraint (= (f #x253ac2ea42e1a49e) #x4a7585d485c3493e))
(constraint (= (f #x4238c39857ad3006) #x84718730af5a600e))
(constraint (= (f #x6cb09733ce90d037) #x6cb09733ce90d037))
(constraint (= (f #xac3c44aa716920ee) #x58788954e2d241de))
(constraint (= (f #x98ec5d22bd30b4d2) #x31d8ba457a6169a6))
(constraint (= (f #xbc4955e77a7eb8b6) #x7892abcef4fd716e))
(constraint (= (f #x993eee07446e8a7e) #x327ddc0e88dd14fe))
(check-synth)
