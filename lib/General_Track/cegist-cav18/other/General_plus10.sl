(set-logic BV)

(synth-fun fb () (BitVec 32)
)

(synth-fun fc () (BitVec 32)
)

(constraint 
(= fc (bvadd fb #x0000000a))
)

(check-synth)


