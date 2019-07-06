; Hacker's delight 19, difficulty 5

(set-logic BV)

(define-fun hd19 ((x (BitVec 32)) (m (BitVec 32)) (k (BitVec 32))) (BitVec 32) 
  (bvxor x (bvxor (bvshl (bvand (bvxor (bvlshr x k) x) m) k) (bvand (bvxor (bvlshr x k) x) m))))

(synth-fun f ((x (BitVec 32)) (m (BitVec 32)) (k (BitVec 32))) (BitVec 32)
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
						 m
						 k
						 #x0000001F
						 #x00000001
						 #x00000000
						 #xFFFFFFFF))))


(declare-var x (BitVec 32))
(declare-var m (BitVec 32))
(declare-var k (BitVec 32))

(constraint (= (hd19 x m k) (f x m k)))
(check-synth)

