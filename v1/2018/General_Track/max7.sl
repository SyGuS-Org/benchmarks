; max5.sl
; Synthesize the maximum of 5 integers, from a purely declarative spec

(set-logic LIA)

(synth-fun max7 ((x1 Int) (x2 Int) (x3 Int) (x4 Int) (x5 Int) (x6 Int) (x7 Int)) Int
    ((Start Int (x1
                 x2
                 x3
                 x4
                 x5
                 x6 
                 x7
                 0
                 1
                 (+ Start Start)
                 (- Start Start)
                 (ite StartBool Start Start)))
     (StartBool Bool ((and StartBool StartBool)
                      (or  StartBool StartBool)
                      (not StartBool)
                      (<=  Start Start)
                      (=   Start Start)
                      (>=  Start Start)))))

(declare-var x1 Int)
(declare-var x2 Int)
(declare-var x3 Int)
(declare-var x4 Int)
(declare-var x5 Int)
(declare-var x6 Int)
(declare-var x7 Int)

(constraint (>= (max7 x1 x2 x3 x4 x5 x6 x7) x1))
(constraint (>= (max7 x1 x2 x3 x4 x5 x6 x7) x2))
(constraint (>= (max7 x1 x2 x3 x4 x5 x6 x7) x3))
(constraint (>= (max7 x1 x2 x3 x4 x5 x6 x7) x4))
(constraint (>= (max7 x1 x2 x3 x4 x5 x6 x7) x5))
(constraint (>= (max7 x1 x2 x3 x4 x5 x6 x7) x6))
(constraint (>= (max7 x1 x2 x3 x4 x5 x6 x7) x7))


(constraint (or (= x1 (max7 x1 x2 x3 x4 x5 x6 x7))
            (or (= x2 (max7 x1 x2 x3 x4 x5 x6 x7))
            (or (= x3 (max7 x1 x2 x3 x4 x5 x6 x7))
            (or (= x4 (max7 x1 x2 x3 x4 x5 x6 x7))
            (or (= x5 (max7 x1 x2 x3 x4 x5 x6 x7))
            (or (= x6 (max7 x1 x2 x3 x4 x5 x6 x7))
	        (= x7 (max7 x1 x2 x3 x4 x5 x6 x7)))))))))

(check-synth)


