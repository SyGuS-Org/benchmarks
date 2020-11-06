(set-logic BV)

(define-fun parity ((a Bool) (b Bool) (c Bool) (d Bool)) Bool
    (xor (not (xor a b)) (not (xor c d))))
(synth-fun NAND ((a Bool) (b Bool) (c Bool) (d Bool)) Bool
    ((Start Bool) (StartAnd Bool) (Vars Bool) (Constants Bool))
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

