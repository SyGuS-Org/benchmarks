(set-logic BV)
(define-fun ehad ((x (_ BitVec 64))) (_ BitVec 64) (bvlshr x #x0000000000000001))
(define-fun arba ((x (_ BitVec 64))) (_ BitVec 64) (bvlshr x #x0000000000000004))
(define-fun shesh ((x (_ BitVec 64))) (_ BitVec 64) (bvlshr x #x0000000000000010))
(define-fun smol ((x (_ BitVec 64))) (_ BitVec 64) (bvshl x #x0000000000000001))
(define-fun im ((x (_ BitVec 64)) (y (_ BitVec 64)) (z (_ BitVec 64))) (_ BitVec 64) (ite (= x #x0000000000000001) y z))
(synth-fun f ((x (_ BitVec 64))) (_ BitVec 64)
    ((Start (_ BitVec 64)))
    ((Start (_ BitVec 64) (#x0000000000000000 #x0000000000000001 x (bvnot Start) (smol Start) (ehad Start) (arba Start) (shesh Start) (bvand Start Start) (bvor Start Start) (bvxor Start Start) (bvadd Start Start) (im Start Start Start)))))
(constraint (= (f #xdc07568507beda16) #xb80ead0a0f7db42c))
(constraint (= (f #x19481d0200571ab7) #x0000000000000001))
(constraint (= (f #xdce951283ae95ed9) #xb9d2a25075d2bdb2))
(constraint (= (f #xa61dbe03dab5b6d2) #x4c3b7c07b56b6da4))
(constraint (= (f #xbad6165b60a89e61) #xbad6165b60a89e61))
(constraint (= (f #x180c94216ce407a8) #x180c94216ce407a8))
(constraint (= (f #xcca3e151b99be015) #x9947c2a37337c02a))
(constraint (= (f #x2232cac3248c6499) #x446595864918c932))
(constraint (= (f #xe37bb395c6a89120) #xe37bb395c6a89120))
(constraint (= (f #x8ac6c70581e4deeb) #x8ac6c70581e4deeb))
(check-synth)
