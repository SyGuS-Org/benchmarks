; three.sl
; Synthesize x * 3 mod 10 


(set-logic LIA)

(synth-fun f ((x Int)) Int
    ((Start Int (
                 x
                 3
                 7
                 10
                 (* Start StartConst)
                 (mod Start StartConst)))
    (StartConst Int ( 3 7 10 ))

		 ))

(declare-var x Int)

(constraint (= (f x) (f (+ x 10))))
(constraint (= (f 1) 3))
(constraint (= (f 2) 6))
(constraint (= (f 3) 9))
(constraint (= (f 4) 2))
(constraint (= (f 5) 5))
(constraint (= (f 6) 8))
(constraint (= (f 7) 1))
(constraint (= (f 8) 4))
(constraint (= (f 9) 7))
(constraint (= (f 0) 0))

(check-synth)

