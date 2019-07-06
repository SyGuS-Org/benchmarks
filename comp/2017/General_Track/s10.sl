; possible solution 
; f1(x,y,z)=x
; f2(x,y,z)=y-x
; f3(x,y,z)=z+x

(set-logic LIA)

(synth-fun f1 ((x Int) (y Int) (z Int)) Int
   ((Start Int (x
                y
                z
                 (+ Start Start)
                 (- Start Start)))))

(synth-fun f2 ((x Int) (y Int) (z Int)) Int
   ((Start Int (x
                y
                z
                 (+ Start Start)
                 (- Start Start)))))

(synth-fun f3 ((x Int) (y Int) (z Int)) Int
   ((Start Int (x
                y
                z
                 (+ Start Start)
                 (- Start Start)))))

(declare-var x Int)
(declare-var y Int)
(declare-var z Int)

(constraint (= (+ (+ (f1 x y z) (f2 x y z)) (f3 x y z)) (+ (+ x y) z)))
(constraint (= (+ (f2 x y z) (f3 x y z)) (+ y z)))
(constraint (= (+ (f1 x y z) (f2 x y z)) y))

(check-synth)


