; seven.sl
; Synthesize x * 7 mod 10 


(set-logic NIA)

(synth-fun f ((x Int)) Int
    ((Start Int) (StartConst Int) (StartBool Bool))
 ((Start Int (
                 x
                 (Constant Int) 
                 (+ Start Start)
                 (- Start Start)
                 (* Start StartConst)
                 (div Start StartConst)
                 (mod Start StartConst)
                 (ite StartBool Start Start)
                 (let (( z Start )) Start )))
          (StartConst Int (1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18))

     (StartBool Bool ((and StartBool StartBool)
                      (or  StartBool StartBool)
                      (not StartBool)
                      (<=  Start Start)
                      (=   Start Start)
                      (>=  Start Start)))))

(declare-var x Int)

(constraint (= (f x) (f (+ x 10))))
(constraint (= (f 1) 7))
(constraint (= (f 2) (- (f 1) 3)))
(constraint (= (f 3) (- (f 1) 6)))
(constraint (= (f 4) (+ (f 1) 1)))
(constraint (= (f 5) (- (f 1) 2)))
(constraint (= (f 6) (- (f 1) 5)))
(constraint (= (f 7) (+ (f 1) 2)))
(constraint (= (f 8) (- (f 1) 1)))
(constraint (= (f 9) (- (f 1) 4)))
(constraint (= (f 0) (- (f 1) 7)))

(check-synth)

