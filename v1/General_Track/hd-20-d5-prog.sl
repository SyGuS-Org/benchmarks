; Hacker's delight 20, difficulty 5
; next higher unsigned number with same number of 1 bits

(set-logic BV)

(define-fun hd20 ((x (BitVec 32))) (BitVec 32) 
  (bvor (bvadd x (bvand (bvneg x) x)) (bvudiv (bvlshr (bvxor x (bvand (bvneg x) x)) #x00000002) (bvand (bvneg x) x))))

(synth-fun f ((x (BitVec 32))) (BitVec 32)
    ((Start (BitVec 32) ((bvnot Start)
						 (bvxor Start Start)
						 (bvand Start Start)
						 (bvor Start Start)
						 (bvneg Start)
						 (bvadd Start Start)
						 (bvmul Start Start)
						 (bvudiv Start Start)
						 (bvurem Start Start)
						 (bvlshr Start Start)
						 (bvashr Start Start)
						 (bvshl Start Start)
						 (bvsdiv Start Start)
						 (bvsrem Start Start)
						 (bvsub Start Start)
                         x
						 #x0000001F
						 #x00000001
						 #x00000000
						 #xFFFFFFFF))))



(declare-var x (BitVec 32))

(constraint (= (hd20 x) (f x)))
(check-synth)

