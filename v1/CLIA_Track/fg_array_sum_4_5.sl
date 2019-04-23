;; expected program:: (let ((z Int (+ x1 x2))) (ite (> z 5) z (
;;   	    	      let ((z Int (+ x2 x3))) (ite (> z 5) z (
;;   	    	      let ((z Int (+ x3 x4))) (ite (> z 5) z 0))))))


(set-logic LIA)
(synth-fun findSum ((y1 Int) (y2 Int) (y3 Int) (y4 Int)) Int) 
(declare-var x1 Int)
(declare-var x2 Int)
(declare-var x3 Int)
(declare-var x4 Int)

(constraint (=> (> (+ x1 x2) 5) (= (findSum x1 x2 x3 x4) (+ x1 x2))))
(constraint (=> (and (<= (+ x1 x2) 5) (> (+ x2 x3) 5)) (= (findSum x1 x2 x3 x4) (+ x2 x3))))
(constraint (=> (and (and (<= (+ x1 x2) 5) (<= (+ x2 x3) 5)) (> (+ x3 x4) 5)) (= (findSum x1 x2 x3 x4) (+ x3 x4))))
(constraint (=> (and (and (<= (+ x1 x2) 5) (<= (+ x2 x3) 5)) (<= (+ x3 x4) 5)) (= (findSum x1 x2 x3 x4) 0)))


(check-synth)
