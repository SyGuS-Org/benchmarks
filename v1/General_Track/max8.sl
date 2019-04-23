; max5.sl
; Synthesize the maximum of 5 integers, from a purely declarative spec

(set-logic LIA)

(synth-fun max8 ((x1 Int) (x2 Int) (x3 Int) (x4 Int) (x5 Int) (x6 Int) (x7 Int) (x8 Int)) Int
    ((Start Int (x1
                 x2
                 x3
                 x4
                 x5
                 x6 
                 x7
                 x8
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
(declare-var x8 Int)

(constraint (>= (max8 x1 x2 x3 x4 x5 x6 x7 x8) x1))
(constraint (>= (max8 x1 x2 x3 x4 x5 x6 x7 x8) x2))
(constraint (>= (max8 x1 x2 x3 x4 x5 x6 x7 x8) x3))
(constraint (>= (max8 x1 x2 x3 x4 x5 x6 x7 x8) x4))
(constraint (>= (max8 x1 x2 x3 x4 x5 x6 x7 x8) x5))
(constraint (>= (max8 x1 x2 x3 x4 x5 x6 x7 x8) x6))
(constraint (>= (max8 x1 x2 x3 x4 x5 x6 x7 x8) x7))
(constraint (>= (max8 x1 x2 x3 x4 x5 x6 x7 x8) x8))


(constraint (or (= x1 (max8 x1 x2 x3 x4 x5 x6 x7 x8))
            (or (= x2 (max8 x1 x2 x3 x4 x5 x6 x7 x8))
            (or (= x3 (max8 x1 x2 x3 x4 x5 x6 x7 x8))
            (or (= x4 (max8 x1 x2 x3 x4 x5 x6 x7 x8))
            (or (= x5 (max8 x1 x2 x3 x4 x5 x6 x7 x8))
            (or (= x6 (max8 x1 x2 x3 x4 x5 x6 x7 x8))
            (or (= x7 (max8 x1 x2 x3 x4 x5 x6 x7 x8))
	        (= x8 (max8 x1 x2 x3 x4 x5 x6 x7 x8))))))))))

(check-synth)


