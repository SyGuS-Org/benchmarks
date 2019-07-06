(set-logic LIA)


(synth-fun max13 ((x1 Int) (x2 Int) (x3 Int) (x4 Int) (x5 Int)
                 (x6 Int) (x7 Int) (x8 Int) (x9 Int) (x10 Int)
                 (x11 Int) (x12 Int) (x13 Int)) Int
    ((Start Int (x1
                 x2
                 x3
                 x4
                 x5
                 x6
                 x7
                 x8
                 x9
                 x10
                 x11
                 x12
                 x13
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
(declare-var x9 Int)
(declare-var x10 Int)
(declare-var x11 Int)
(declare-var x12 Int)
(declare-var x13 Int)


(constraint (>= (max13 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13) x1))
(constraint (>= (max13 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13) x2))
(constraint (>= (max13 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13) x3))
(constraint (>= (max13 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13) x4))
(constraint (>= (max13 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13) x5))
(constraint (>= (max13 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13) x6))
(constraint (>= (max13 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13) x7))
(constraint (>= (max13 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13) x8))
(constraint (>= (max13 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13) x9))
(constraint (>= (max13 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13) x10))
(constraint (>= (max13 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13) x11))
(constraint (>= (max13 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13) x12))
(constraint (>= (max13 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13) x13))


(constraint (or (= x1 (max13 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13))
            (or (= x2 (max13 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13))
            (or (= x3 (max13 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13))
            (or (= x4 (max13 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13))
            (or (= x5 (max13 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13))
            (or (= x6 (max13 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13))
            (or (= x7 (max13 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13))
            (or (= x8 (max13 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13))
            (or (= x9 (max13 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13))
            (or (= x10 (max13 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13))
            (or (= x11 (max13 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13))
            (or (= x12 (max13 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13))
                (= x13 (max13 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13)))))))))))))))

(check-synth)

