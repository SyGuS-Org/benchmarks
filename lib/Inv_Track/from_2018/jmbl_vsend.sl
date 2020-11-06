(set-logic LIA)

(synth-inv InvF ((c Int) (i Int)))

(define-fun PreF ((c Int) (i Int)) Bool
    (= i 0))
(define-fun TransF ((c Int) (i Int) (c! Int) (i! Int)) Bool
    (and (> c 48) (and (< c 57) (= i! (+ (+ i i) (- c 48))))))
(define-fun PostF ((c Int) (i Int)) Bool
    (or (> c 57) (or (< c 48) (>= i 0))))

(inv-constraint InvF PreF TransF PostF)

(check-synth)

