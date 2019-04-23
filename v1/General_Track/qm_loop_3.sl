(set-logic LIA)

(define-fun qm ((a Int) (b Int)) Int
      (ite (< a 0) b a))

(synth-fun qm-multi-loop ((x Int) (y Int) (z Int)) Int
    ((Start Int (x
                 y
                 z
                 0
                 1
                 3
                 (- Start Start)
                 (+ Start Start)
                 (qm Start Start)))))

(declare-var x Int)
(declare-var y Int)
(declare-var z Int)

(constraint (or  (or (or (< x 0) (< y 0)) (< z 0)) 
                 (= (qm-multi-loop x y z)  
                      (ite (and (= z 0) (= y 0)) (ite (= x 0) 3 (- x 1)) x) ) ))

(check-synth)
