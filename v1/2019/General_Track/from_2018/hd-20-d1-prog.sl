; Hacker's delight 20, difficulty 1
; next higher unsigned number with same number of 1 bits

(set-logic BV)

(define-fun hd20 ((x (BitVec 32))) (BitVec 32) 
  (bvor (bvadd x (bvand (bvneg x) x)) (bvudiv (bvlshr (bvxor x (bvand (bvneg x) x)) #x00000002) (bvand (bvneg x) x))))

(synth-fun f ((x (BitVec 32))) (BitVec 32)
		   ((Start (BitVec 32) ((bvand Start Start)
								(bvxor Start Start)
								(bvor Start Start)
								(bvadd Start Start)
								(bvsub Start Start)
								(bvlshr Start Start)
								(bvneg Start)
								(bvnot Start)
								(bvudiv Start Start)
								(bvsdiv Start Start)
								x
								#x00000002
								#x00000000
								#x00000001))))



(declare-var x (BitVec 32))

(constraint (= (hd20 x) (f x)))
(check-synth)

