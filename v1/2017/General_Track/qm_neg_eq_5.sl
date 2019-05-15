(set-logic LIA)

(define-fun qm ((a Int) (b Int)) Int
      (ite (< a 0) b a))

(synth-fun qm-foo ((v Int) (w Int) (x Int) (y Int) (z Int)) Int
    ((Start Int (v
    			 w
    			 x
                 y
                 z
                 0
                 1
                 (- Start Start)
                 (qm Start Start)))))

(declare-var v Int)
(declare-var w Int)
(declare-var x Int)
(declare-var y Int)
(declare-var z Int)

(constraint (= (qm-foo v w x y z)  
                (ite (and (<= v 0) (and (<= w 0) (and (<= x 0) (and (<= y 0) (<= z 0))))) 1 0))) 

(check-synth)
