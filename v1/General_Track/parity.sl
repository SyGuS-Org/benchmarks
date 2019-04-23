; Synthesize a parity-checking circuit using only AND and NOT gates

(set-logic BV)

;(define-fun iff ((a Bool) (b Bool)) Bool
;  (not (xor a b)))

(define-fun parity ((a Bool) (b Bool) (c Bool) (d Bool)) Bool
  (xor (not (xor a b)) (not (xor c d))))

(synth-fun AIG ((a Bool) (b Bool) (c Bool) (d Bool)) Bool
 ((Start Bool ((and Start Start) (not Start) a b c d))))

(declare-var a Bool)
(declare-var b Bool)
(declare-var c Bool)
(declare-var d Bool)

(constraint (= (parity a b c d) (AIG a b c d)))
(set-options ((samples "0")))
(check-synth)

