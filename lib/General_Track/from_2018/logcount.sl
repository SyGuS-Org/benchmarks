;; expected program: tmp = in & AA + (in >> 1) & AA, tmp = tmp & CC + (tmp >> 2) & CC, tmp = tmp & E0 + (tmp >> 4) & E0
;; (let ((tmp (_ BitVec 8) (x)) (m (_ BitVec 8) (#xE0))  (n (_ BitVec 8) (#x04)))
;;(let ((tmp (_ BitVec 8) (x)) (m (_ BitVec 8) (#xCC))  (n (_ BitVec 8) (#x02))) (
;;(let ((tmp (_ BitVec 8) (x)) (m (_ BitVec 8) (#xAA))  (n (_ BitVec 8) (#x01)) (bvadd;; (bvand tmp m) (bvand (bvlshr tmp n) m)))) (bvadd (bvand tmp m) (bvand 
;;    (bvlshr tmp n) m)))) (bvadd (bvand tmp m) (bvand (bvlshr tmp n) m)))


(set-logic BV)

(synth-fun countSketch ((x (_ BitVec 8))) (_ BitVec 8)
	   ((Start (_ BitVec 8)) (ConstBV (_ BitVec 8)))
 (
	     (Start (_ BitVec 8) ( x
	     	     	       	 (let ((tmp Start) (m ConstBV) (n ConstBV)) (bvadd (bvand tmp m) (bvand (bvlshr tmp n) m)) )
                
		)
	     )
	     (ConstBV (_ BitVec 8) (
	        #x00 #xAA #xCC #xE0 #x01 #x02 #x04
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
