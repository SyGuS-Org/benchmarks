; possible solution 
; f1(x,y,z)=x+x
; f2(x,y,z)=y+y
; f3(x,y,z)=z+z

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

(constraint (= (+ (+ (f1 x y z) (f2 x y z)) (f3 x y z)) (+ (+ (+ x x) (+ y y)) (+ z z))))

(check-synth)


