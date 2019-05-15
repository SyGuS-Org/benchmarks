(set-logic BV)
(define-fun ehad ((x (_ BitVec 64))) (_ BitVec 64) (bvlshr x #x0000000000000001))
(define-fun arba ((x (_ BitVec 64))) (_ BitVec 64) (bvlshr x #x0000000000000004))
(define-fun shesh ((x (_ BitVec 64))) (_ BitVec 64) (bvlshr x #x0000000000000010))
(define-fun smol ((x (_ BitVec 64))) (_ BitVec 64) (bvshl x #x0000000000000001))
(define-fun im ((x (_ BitVec 64)) (y (_ BitVec 64)) (z (_ BitVec 64))) (_ BitVec 64) (ite (= x #x0000000000000001) y z))
(synth-fun f ((x (_ BitVec 64))) (_ BitVec 64)
    ((Start (_ BitVec 64)))
    ((Start (_ BitVec 64) (#x0000000000000000 #x0000000000000001 x (bvnot Start) (smol Start) (ehad Start) (arba Start) (shesh Start) (bvand Start Start) (bvor Start Start) (bvxor Start Start) (bvadd Start Start) (im Start Start Start)))))
(constraint (= (f #x5cb548b224b3cc28) #x5cb548b224b3cc28))
(constraint (= (f #x56d92b3345485ca2) #x0000000000000001))
(constraint (= (f #xca299e098d9e3eee) #xca299e098d9e3eee))
(constraint (= (f #xee3341deac4ca008) #x0000000000000001))
(constraint (= (f #x7ded079a6009cb0d) #x0000000000000000))
(constraint (= (f #x58a9e86439dec059) #x58a9e86439dec05b))
(constraint (= (f #x1cdb31de2b65c9a2) #x0000000000000001))
(constraint (= (f #xda79990714ea2b9c) #x0000000000000001))
(constraint (= (f #x620e0bd493c3799d) #x0000000000000000))
(constraint (= (f #x5552e6b7d8edbe8e) #x0000000000000001))
(constraint (= (f #xe31be2adb03ab07a) #xe31be2adb03ab07a))
(constraint (= (f #x465863cec898095e) #x465863cec898095e))
(constraint (= (f #x924e757418655574) #x0000000000000001))
(constraint (= (f #x6c493eb97bbe753e) #x6c493eb97bbe753e))
(constraint (= (f #x5d6dbd3d9b1669b2) #x5d6dbd3d9b1669b2))
(constraint (= (f #x8ea2edca2d226259) #x0000000000000000))
(constraint (= (f #x16ac4aedcb12bcce) #x16ac4aedcb12bcce))
(constraint (= (f #xe546db622d9be7e0) #xe546db622d9be7e0))
(constraint (= (f #xb3473e63a210c4a6) #xb3473e63a210c4a6))
(constraint (= (f #x8817e4bb74673a87) #x0000000000000000))
(constraint (= (f #x058ccca4a1b1d014) #x058ccca4a1b1d014))
(constraint (= (f #x20698664dad95c46) #x20698664dad95c46))
(constraint (= (f #xb4e6c226e8414138) #x0000000000000001))
(constraint (= (f #xae23533e414e261b) #x0000000000000000))
(constraint (= (f #x6de5e3db9db9da31) #x6de5e3db9db9da33))
(constraint (= (f #x131d32ea7b067bbe) #x0000000000000001))
(constraint (= (f #xb8e780098a086e28) #x0000000000000001))
(constraint (= (f #xe5e96184d39a98cb) #xe5e96184d39a98cb))
(constraint (= (f #x3b1ee199e761ea9c) #x0000000000000001))
(constraint (= (f #xbbe8b76a043a2dbe) #xbbe8b76a043a2dbe))
(constraint (= (f #xec66950c87379b1d) #xec66950c87379b1f))
(constraint (= (f #xe4e3a9a9ad6cb4a0) #x0000000000000001))
(constraint (= (f #xee090929269d4667) #xee090929269d4667))
(constraint (= (f #x7716393e29d8e759) #x7716393e29d8e75b))
(constraint (= (f #x330ad8143c37e951) #x330ad8143c37e953))
(constraint (= (f #x28d91470136b51d6) #x0000000000000001))
(constraint (= (f #xaa4524ecd6ba6aec) #xaa4524ecd6ba6aec))
(constraint (= (f #xb3223ac27e4ab088) #x0000000000000001))
(constraint (= (f #x44d46326913438c7) #x44d46326913438c7))
(constraint (= (f #x13a005aeb7c82beb) #x0000000000000000))
(constraint (= (f #x5bd002279c9eae3e) #x5bd002279c9eae3e))
(constraint (= (f #xeecde9b8d74d076e) #x0000000000000001))
(constraint (= (f #xd462038614104ede) #xd462038614104ede))
(constraint (= (f #xa87a1a85ce71eed9) #xa87a1a85ce71eedb))
(constraint (= (f #xe32568d4de7e50e7) #xe32568d4de7e50e7))
(constraint (= (f #x9345c2a92ee61979) #x0000000000000000))
(constraint (= (f #x4e0323c72ee17c94) #x0000000000000001))
(constraint (= (f #xe10de988935a8e94) #xe10de988935a8e94))
(constraint (= (f #x7a767caa3ba7e744) #x0000000000000001))
(constraint (= (f #x9052786d469b2e7a) #x9052786d469b2e7a))
(constraint (= (f #xe1cb15349d29d4c4) #x0000000000000001))
(constraint (= (f #xc34c8984ec01dde0) #x0000000000000001))
(constraint (= (f #xe5c47611d8291e13) #x0000000000000000))
(constraint (= (f #x4db07aa758522e65) #x4db07aa758522e67))
(constraint (= (f #xcee029a3ce890e81) #x0000000000000000))
(constraint (= (f #xcb20e61141e919e7) #x0000000000000000))
(constraint (= (f #xc69bcc83055dc8bc) #xc69bcc83055dc8bc))
(constraint (= (f #x8e870cbc0c7e24c6) #x8e870cbc0c7e24c6))
(constraint (= (f #xdee5a3605eee8077) #x0000000000000000))
(constraint (= (f #x9a96d34c89b614a8) #x9a96d34c89b614a8))
(constraint (= (f #x15046179202659b9) #x0000000000000000))
(constraint (= (f #xee3e03eab82b9b2e) #x0000000000000001))
(constraint (= (f #xa595eed1963e5100) #xa595eed1963e5100))
(constraint (= (f #x493d25a93b28d9b8) #x0000000000000001))
(constraint (= (f #x6c98e8c33525e778) #x0000000000000001))
(constraint (= (f #xd6b8343b1a56e77e) #xd6b8343b1a56e77e))
(constraint (= (f #x9b161da55e234abb) #x0000000000000000))
(constraint (= (f #x60aaec74996242c8) #x0000000000000001))
(constraint (= (f #x1e246ae3e63eee9e) #x1e246ae3e63eee9e))
(constraint (= (f #x4c2451bc437de7d9) #x4c2451bc437de7db))
(constraint (= (f #x5aa2ce7b7999d14d) #x5aa2ce7b7999d14f))
(constraint (= (f #x713279c4952a3a17) #x0000000000000000))
(constraint (= (f #x088de6e8ea09558e) #x0000000000000001))
(constraint (= (f #xca6e2858e46de451) #x0000000000000000))
(constraint (= (f #x540dee01ce194e46) #x540dee01ce194e46))
(constraint (= (f #xe431a3b72089a1da) #x0000000000000001))
(constraint (= (f #x01652a812d179e60) #x01652a812d179e60))
(constraint (= (f #x3607b1c0d7c8985b) #x0000000000000000))
(constraint (= (f #xed0b5991b712a334) #xed0b5991b712a334))
(constraint (= (f #xdb9254b2ca3ea77e) #xdb9254b2ca3ea77e))
(constraint (= (f #x4eb612e8dd3e30c7) #x4eb612e8dd3e30c7))
(constraint (= (f #xead8d747c679ee35) #xead8d747c679ee37))
(constraint (= (f #x01dd50d4e86e66e1) #x0000000000000000))
(constraint (= (f #x6c82d8182aa52b86) #x0000000000000001))
(constraint (= (f #xede42b4e4045979b) #x0000000000000000))
(constraint (= (f #x4b77d49c3b587181) #x4b77d49c3b587183))
(constraint (= (f #xab5984951cdc4192) #xab5984951cdc4192))
(constraint (= (f #xe1ee3a1b069e80d1) #xe1ee3a1b069e80d3))
(constraint (= (f #xce5277d802518955) #xce5277d802518957))
(constraint (= (f #xaa06a8375687205c) #x0000000000000001))
(constraint (= (f #x29e52bc19a4b9214) #x0000000000000001))
(constraint (= (f #xd63424b762e9ec8b) #x0000000000000000))
(constraint (= (f #x639adbaaae59eebe) #x639adbaaae59eebe))
(constraint (= (f #xee9b4a7c64b2d9b2) #xee9b4a7c64b2d9b2))
(constraint (= (f #x826be35248ee5dde) #x0000000000000001))
(constraint (= (f #xd48d1e4263e13e8d) #x0000000000000000))
(constraint (= (f #xbe083d666ddc7d2a) #xbe083d666ddc7d2a))
(constraint (= (f #xc399b6cb74cbb949) #x0000000000000000))
(constraint (= (f #x2b07bb17830eecce) #x0000000000000001))
(constraint (= (f #x433570e977407d4a) #x0000000000000001))
(check-synth)
