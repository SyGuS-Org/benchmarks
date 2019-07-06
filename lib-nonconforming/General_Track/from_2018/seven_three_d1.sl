; seven.sl
; Synthesize x * 7 mod 10 
;            x * 3 mod 10 


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


(synth-fun g ((x Int)) Int
    ((Start Int (
                 x
                 (Constant Int) 
                 (* Start StartConst)
                 (mod Start StartConst)))
     (StartConst Int (1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18))
		 ))

(declare-var x Int)

(constraint (= (f x) (f (+ x 10))))
(constraint (= (f 1) 7))
(constraint (= (f 2) 4))
(constraint (= (f 3) 1))
(constraint (= (f 4) 8))
(constraint (= (f 5) 5))
(constraint (= (f 6) 2))
(constraint (= (f 7) 9))
(constraint (= (f 8) 6))
(constraint (= (f 9) 3))
(constraint (= (f 0) 0))

(constraint (= (g x) (- 10 (f x))))

(check-synth)

