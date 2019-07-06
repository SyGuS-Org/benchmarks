;; expected program: tmp = in & AA + (in >> 1) & AA, tmp = tmp & CC + (tmp >> 2) & CC, tmp = tmp & E0 + (tmp >> 4) & E0
;; (let ((tmp (BitVec 8) (x)) (m (BitVec 8) (#xE0))  (n (BitVec 8) (#x04)))
;;(let ((tmp (BitVec 8) (x)) (m (BitVec 8) (#xCC))  (n (BitVec 8) (#x02))) (
;;(let ((tmp (BitVec 8) (x)) (m (BitVec 8) (#xAA))  (n (BitVec 8) (#x01)) (bvadd;; (bvand tmp m) (bvand (bvlshr tmp n) m)))) (bvadd (bvand tmp m) (bvand 
;;    (bvlshr tmp n) m)))) (bvadd (bvand tmp m) (bvand (bvlshr tmp n) m)))


(set-logic BV)

(synth-fun countSketch ((x (BitVec 8))) (BitVec 8)
	   (
	     (Start (BitVec 8) ( x
	     	     	       	 (let ((tmp (BitVec 8) Start) (m (BitVec 8) ConstBV) (n (BitVec 8) ConstBV)) (bvadd (bvand tmp m) (bvand (bvlshr tmp n) m)) )
                
		)
	     )
	     (ConstBV (BitVec 8) (
	        #x00 #xAA #xCC #xE0 #x01 #x02 #x04
    		 )
	     
	     )
	   )
)


(declare-var x1 (BitVec 8))

(define-fun sumBits ((x (BitVec 8))) (BitVec 8)
(bvadd (bvadd (bvadd (bvadd (bvadd (bvadd (bvadd (ite (= (bvand x #x01) #x01) #x01 #x00)
(ite (= (bvand x #x02) #x02) #x01 #x00))
(ite (= (bvand x #x04) #x04) #x01 #x00))
(ite (= (bvand x #x08) #x08) #x01 #x00))
(ite (= (bvand x #x10) #x10) #x01 #x00))
(ite (= (bvand x #x20) #x20) #x01 #x00))
(ite (= (bvand x #x40) #x40) #x01 #x00))
(ite (= (bvand x #x80) #x80) #x01 #x00)))




(constraint (= (sumBits x1) (countSketch x1)))

(check-synth)
