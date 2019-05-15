(set-logic BV)
(define-fun ehad ((x (_ BitVec 64))) (_ BitVec 64) (bvlshr x #x0000000000000001))
(define-fun arba ((x (_ BitVec 64))) (_ BitVec 64) (bvlshr x #x0000000000000004))
(define-fun shesh ((x (_ BitVec 64))) (_ BitVec 64) (bvlshr x #x0000000000000010))
(define-fun smol ((x (_ BitVec 64))) (_ BitVec 64) (bvshl x #x0000000000000001))
(define-fun im ((x (_ BitVec 64)) (y (_ BitVec 64)) (z (_ BitVec 64))) (_ BitVec 64) (ite (= x #x0000000000000001) y z))
(synth-fun f ((x (_ BitVec 64))) (_ BitVec 64)
    ((Start (_ BitVec 64)))
    ((Start (_ BitVec 64) (#x0000000000000000 #x0000000000000001 x (bvnot Start) (smol Start) (ehad Start) (arba Start) (shesh Start) (bvand Start Start) (bvor Start Start) (bvxor Start Start) (bvadd Start Start) (im Start Start Start)))))
(constraint (= (f #x71c7e1ab41379480) #xfffffffffffffffc))
(constraint (= (f #x7b4319c0667e8b53) #xfffffffffffffffe))
(constraint (= (f #xb4c780718adb8ed7) #x0b4c780718adb8ed))
(constraint (= (f #x204b051e056a95e0) #x0204b051e056a95e))
(constraint (= (f #x758d3e93d508c7aa) #x0758d3e93d508c7a))
(constraint (= (f #xa91e81c7989ab3ed) #xfffffffffffffffe))
(constraint (= (f #x7bb37b8ea0e551bb) #xfffffffffffffffe))
(constraint (= (f #x9e72bc3e96c7ea68) #xfffffffffffffffc))
(constraint (= (f #x35e1057c93242bd7) #xfffffffffffffffe))
(constraint (= (f #x405b3287eb0a36e5) #x0405b3287eb0a36e))
(check-synth)
