(set-logic LIA)

(define-fun qm ((a Int) (b Int)) Int
      (ite (< a 0) b a))

(synth-fun qm-choose ((x Int) ) Int
    ((Start Int (x
                 0
                 1
                 (- Start Start)
                 (+ Start Start)
                 (qm Start Start)))))

(declare-var x Int)

(constraint (= (qm-choose x) (ite (<= x 0) 1 0))) 

(check-synth)
