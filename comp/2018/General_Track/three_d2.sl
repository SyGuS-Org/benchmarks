; three.sl
; Synthesize x * 3 mod 10 


(set-logic LIA)

(synth-fun f ((x Int)) Int
    ((Start Int (
                 x
                 (Constant Int) 
                 (+ Start Start)
                 (- Start Start)
                 (* Start StartConst)
                 (div Start StartConst)
                 (ite StartBool Start Start)
                 (let (( z Int Start )) Start )))
     (StartConst Int (1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18))
     (StartBool Bool ((and StartBool StartBool)
                      (or  StartBool StartBool)
                      (not StartBool)
                      (<=  Start Start)
                      (=   Start Start)
                      (>=  Start Start)))))

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

