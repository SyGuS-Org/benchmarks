(set-logic LIA)

(synth-inv InvF ((x Int) (y Int) (i Int) (n Int)))

(define-fun PreF ((x Int) (y Int) (i Int) (n Int)) Bool
    (and (>= n 0) (and (= i 0) (and (= x 0) (= y 0)))))
(define-fun TransF ((x Int) (y Int) (i Int) (n Int) (x! Int) (y! Int) (i! Int) (n! Int)) Bool
    (and (= n! n) (and (< i n) (and (= i! (+ i 1)) (or (and (= x! (+ x 1)) (= y! (+ y 2))) (and (= x! (+ x 2)) (= y! (+ y 1))))))))
(define-fun PostF ((x Int) (y Int) (i Int) (n Int)) Bool
    (or (< i n) (= (* 3 n) (+ x y))))

(inv-constraint InvF PreF TransF PostF)

(check-synth)

