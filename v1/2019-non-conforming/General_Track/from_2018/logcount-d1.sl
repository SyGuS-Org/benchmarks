(set-logic BV)

(synth-fun countSketch ((x (BitVec 8))) (BitVec 8)
	   (
	     (Start (BitVec 8) ( x
	     	     	       	 (let ((tmp (BitVec 8) Start) (m (BitVec 8) ConstBV) (n (BitVec 8) ConstBV)) (bvadd (bvand tmp m) (bvand (bvlshr tmp n) m)) )
                
		)
	     )
	     (ConstBV (BitVec 8) (
	       #x00 #xAA #xBB #xCC #xDD #xEE #xFF #xA0 #xB0 #xC0 #xD0 #xE0 #xF0 #x01 #x02 #x04
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