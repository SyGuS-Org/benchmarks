; if x<=5 then f(x)=x*10
; else f(x)=x

(set-logic LIA)

(synth-fun f ((x Int)) Int
   ((Start Int (x
                0 10 20 30 40 50 60 70 80 90 100
                 (+ Start Start)
                 (- Start Start)
                 (ite StartBool Start Start)))
     (StartBool Bool ((and StartBool StartBool)
                      (or  StartBool StartBool)
                      (not StartBool)
                      (<=  Start Start)
                      (=   Start Start)
                      (>=  Start Start)))))

(declare-var x Int)

(constraint (= (f 0) 0))
(constraint (= (f 1) 10))
(constraint (= (f 2) 20))
(constraint (= (f 3) 30))
(constraint (= (f 4) 40))
(constraint (= (f 5) 50))
(constraint (or (and (> x 5) (= (f x) x)) (<= x 5)))



(check-synth)

