(set-logic BV)

(synth-fun countSketch ((x (_ BitVec 8))) (_ BitVec 8)
	   ((Start (_ BitVec 8)) (ConstBV (_ BitVec 8)))
 (
	     (Start (_ BitVec 8) ( x
	     	     	       	 (bvadd (bvand Start ConstBV) (bvand (bvlshr Start ConstBV) ConstBV))
                
		)
	     )
	     (ConstBV (_ BitVec 8) (
	       #x00 #xAA #xBB #xCC #xDD #xEE #xFF #xA0 #xB0 #xC0 #xD0 #xE0 #xF0 #x01 #x02 #x04
    		 )
	     
	     )
	   )
)



(declare-var x1 (_ BitVec 8))

(define-fun sumBits ((x (_ BitVec 8))) (_ BitVec 8)
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