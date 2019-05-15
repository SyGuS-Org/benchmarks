(set-logic LIA)

(define-fun qm ((a Int) (b Int)) Int
      (ite (< a 0) b a))

(synth-fun qm-loop ((x Int)) Int
    ((Start Int (x
                 0
                 1
                 3
                 (- Start Start)
                 (+ Start Start)
                 (qm Start Start)))))

(declare-var x Int)

(constraint (= (qm-loop x) (ite (<= x 0) 3 (- x 1)))) 

(check-synth)
