; Synthesize a parity-checking circuit using only AND and NOT gates

(set-logic BV)

(define-fun parity ((a Bool) (b Bool) (c Bool) (d Bool)) Bool
  (xor (not (xor a b)) (not (xor c d))))

(synth-fun AIG ((a Bool) (b Bool) (c Bool) (d Bool)) Bool
 ((Start Bool ((and Start Start) (not Start) a b c d))))

(declare-var a Bool)
(declare-var b Bool)
(declare-var c Bool)
(declare-var d Bool)

(constraint (= (parity a b c d) (AIG a b c d)))
(check-synth)

; Solution:
;(define-fun AIG ((a Bool) (b Bool) (c Bool) (d Bool)) Bool
;(and
;    (not
;     (and
;      (and (not (and d (not a))) (not (and a (not d))))
;      (not (and (not (and b c)) (not (and (not c) (not b)))))))
;    (not
;     (and
;      (not (and (not (and b (not c))) (not (and (not b) c))))
;      (not (and (not (and a (not d))) (not (and d (not a)))))))))