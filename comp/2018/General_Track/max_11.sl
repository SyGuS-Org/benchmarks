(set-logic LIA)


(synth-fun max11 ((x1 Int) (x2 Int) (x3 Int) (x4 Int) (x5 Int)
                 (x6 Int) (x7 Int) (x8 Int) (x9 Int) (x10 Int)
                 (x11 Int)) Int
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



(constraint (>= (max11 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11) x1))
(constraint (>= (max11 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11) x2))
(constraint (>= (max11 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11) x3))
(constraint (>= (max11 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11) x4))
(constraint (>= (max11 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11) x5))
(constraint (>= (max11 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11) x6))
(constraint (>= (max11 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11) x7))
(constraint (>= (max11 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11) x8))
(constraint (>= (max11 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11) x9))
(constraint (>= (max11 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11) x10))
(constraint (>= (max11 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11) x11))


(constraint (or (= x1 (max11 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11))
            (or (= x2 (max11 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11))
            (or (= x3 (max11 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11))
            (or (= x4 (max11 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11))
            (or (= x5 (max11 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11))
            (or (= x6 (max11 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11))
            (or (= x7 (max11 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11))
            (or (= x8 (max11 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11))
            (or (= x9 (max11 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11))
            (or (= x10 (max11 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11))
                (= x11 (max11 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11)))))))))))))

(check-synth)

