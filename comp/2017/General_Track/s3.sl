; if x==y then f(x,y)=x+y
; else if x>y then f(x,y)=1
; else f(x,y)=-1

(set-logic LIA)

(synth-fun f ((x Int) (y Int)) Int
   ((Start Int (x
                y
                0 1 -1 2 -2
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
(declare-var y Int)

(constraint (or (and (= x y) (= (f x y) (+ x y)))
            (or (and (> x y) (= (f x y) 1))
                             (= (f x y) -1))))

(check-synth)

