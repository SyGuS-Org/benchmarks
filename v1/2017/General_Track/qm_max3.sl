(set-logic LIA)

(define-fun qm ((a Int) (b Int)) Int
      (ite (< a 0) b a))

(synth-fun qm-foo ((x Int)  (y Int) (z Int) ) Int
    ((Start Int (x
    			 y
    			 z
                 0
                 1
                 (- Start Start)
                 (+ Start Start)
                 (qm Start Start)))))

(declare-var x Int)
(declare-var y Int)
(declare-var z Int)


(constraint (= (qm-foo x y z) 
                (ite (and (>= x y) (>= x z)) x (ite (>= y z) y z) )))  

(check-synth)
