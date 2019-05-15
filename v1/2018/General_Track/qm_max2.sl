(set-logic LIA)

(define-fun qm ((a Int) (b Int)) Int
      (ite (< a 0) b a))

(synth-fun qm-foo ((x Int)  (y Int)      ) Int
    ((Start Int (x
                 y
                 0
                 1
                 (- Start Start)
                 (+ Start Start)
                 (qm Start Start)))))

(declare-var x Int)
(declare-var y Int)


(constraint (= (qm-foo x y) 
                (ite (<= x y) y x))) 

(check-synth)
