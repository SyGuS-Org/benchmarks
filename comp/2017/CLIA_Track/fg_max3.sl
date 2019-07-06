; max3.sl
; Synthesize the maximum of 3 integers, from a purely declarative spec

(set-logic LIA)

(synth-fun max3 ((x Int) (y Int) (z Int)) Int
)

(declare-var x Int)
(declare-var y Int)
(declare-var z Int)

(constraint (>= (max3 x y z) x))
(constraint (>= (max3 x y z) y))
(constraint (>= (max3 x y z) z))
(constraint (or (= x (max3 x y z))
            (or (= y (max3 x y z))
                (= z (max3 x y z)))))

(check-synth)

