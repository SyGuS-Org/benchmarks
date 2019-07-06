; Synthesize a parity-checking circuit using only NAND gates

(set-logic BV)

(define-fun parity ((a Bool) (b Bool) (c Bool) (d Bool)) Bool
  (xor (not (xor a b)) (not (xor c d))))

(synth-fun NAND ((a Bool) (b Bool) (c Bool) (d Bool)) Bool
 ((Start Bool ((not StartAnd) Vars Constants))
  (StartAnd Bool ((and Start Start)))
  (Vars Bool (a b c d))
  (Constants Bool (true false))))

(declare-var a Bool)
(declare-var b Bool)
(declare-var c Bool)
(declare-var d Bool)

(constraint (= (parity a b c d) (NAND a b c d)))
(check-synth)

; Solution:
;(define-fun NAND ((a Bool) (b Bool) (c Bool) (d Bool)) Bool
;(not
;    (and
;     (not
;      (and
;       (not (and (not (and c (not (and b c)))) (not (and b (not (and b c))))))
;       (not (and (not (and d a)) (not (and (not (and d d)) (not (and true a))))))))
;     (not
;      (and
;       (not (and (not (and d (not (and d a)))) (not (and a (not (and d a))))))
;       (not (and (not (and (not (and true c)) (not (and true b)))) (not (and b c)))))))))