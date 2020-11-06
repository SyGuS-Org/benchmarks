(set-logic BV)

(synth-fun fb () (_ BitVec 32))

(synth-fun fc () (_ BitVec 32))

(constraint (= fc (bvadd fb #x0000000a)))

(check-synth)

