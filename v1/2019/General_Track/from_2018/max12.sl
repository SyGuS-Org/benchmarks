(set-logic LIA)

(synth-fun max12 ((x1 Int) (x2 Int) (x3 Int) (x4 Int) (x5 Int)
                 (x6 Int) (x7 Int) (x8 Int) (x9 Int) (x10 Int)
                 (x11 Int) (x12 Int)) Int
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


(constraint (>= (max12 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12) x1))
(constraint (>= (max12 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12) x2))
(constraint (>= (max12 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12) x3))
(constraint (>= (max12 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12) x4))
(constraint (>= (max12 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12) x5))
(constraint (>= (max12 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12) x6))
(constraint (>= (max12 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12) x7))
(constraint (>= (max12 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12) x8))
(constraint (>= (max12 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12) x9))
(constraint (>= (max12 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12) x10))
(constraint (>= (max12 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12) x11))
(constraint (>= (max12 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12) x12))


(constraint (or (= x1 (max12 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12))
            (or (= x2 (max12 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12))
            (or (= x3 (max12 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12))
            (or (= x4 (max12 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12))
            (or (= x5 (max12 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12))
            (or (= x6 (max12 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12))
            (or (= x7 (max12 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12))
            (or (= x8 (max12 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12))
            (or (= x9 (max12 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12))
            (or (= x10 (max12 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12))
            (or (= x11 (max12 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12))
                (= x12 (max12 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12))))))))))))))

(check-synth)

