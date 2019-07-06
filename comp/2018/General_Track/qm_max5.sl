(set-logic LIA)

(define-fun qm ((a Int) (b Int)) Int
      (ite (< a 0) b a))

(synth-fun qm-foo ((v Int) (w Int) (x Int) (y Int) (z Int) ) Int
    ((Start Int (v
    			 w
    			 x
    			 y
    			 z
                 0
                 1
                 (- Start Start)
                 (+ Start Start)
                 (qm Start Start)))))

(declare-var v Int)
(declare-var w Int)
(declare-var x Int)
(declare-var y Int)
(declare-var z Int)


(constraint (= (qm-foo v w x y z) 
                (ite (and (and (and (>= v w ) (>= v x)) (>= v y)) (>= v z)) v
                  (ite (and (and (>= w x) (>= w y)) (>= w z)) w
                    (ite (and (>= x y) (>= x z)) x 
                      (ite (>= y z) y z) ) ) ) ) )

(check-synth)
