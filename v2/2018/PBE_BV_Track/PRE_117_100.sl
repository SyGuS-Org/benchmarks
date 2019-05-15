(set-logic BV)
(define-fun ehad ((x (_ BitVec 64))) (_ BitVec 64) (bvlshr x #x0000000000000001))
(define-fun arba ((x (_ BitVec 64))) (_ BitVec 64) (bvlshr x #x0000000000000004))
(define-fun shesh ((x (_ BitVec 64))) (_ BitVec 64) (bvlshr x #x0000000000000010))
(define-fun smol ((x (_ BitVec 64))) (_ BitVec 64) (bvshl x #x0000000000000001))
(define-fun im ((x (_ BitVec 64)) (y (_ BitVec 64)) (z (_ BitVec 64))) (_ BitVec 64) (ite (= x #x0000000000000001) y z))
(synth-fun f ((x (_ BitVec 64))) (_ BitVec 64)
    ((Start (_ BitVec 64)))
    ((Start (_ BitVec 64) (#x0000000000000000 #x0000000000000001 x (bvnot Start) (smol Start) (ehad Start) (arba Start) (shesh Start) (bvand Start Start) (bvor Start Start) (bvxor Start Start) (bvadd Start Start) (im Start Start Start)))))
(constraint (= (f #x644c8471bebb5b23) #x0c89908e37d76b64))
(constraint (= (f #x8973024c22db3b6e) #x012e6049845b676d))
(constraint (= (f #x3e0c1a098212d9bd) #x3e0c1a098212d9bc))
(constraint (= (f #x10a706b471334753) #x0214e0d68e2668ea))
(constraint (= (f #x931e4d2ca25b9146) #x0263c9a5944b7228))
(constraint (= (f #x3a800bde4e5011d0) #x3a800bde4e5011d1))
(constraint (= (f #xae59315434ce0d5e) #x05cb262a8699c1ab))
(constraint (= (f #x9207eb349d1d96b2) #x0240fd6693a3b2d6))
(constraint (= (f #x555ddd43e1b040ec) #x555ddd43e1b040ed))
(constraint (= (f #xd4ca0d7d9517ea3e) #x0a9941afb2a2fd47))
(constraint (= (f #x77436a4ab578d73d) #x77436a4ab578d73c))
(constraint (= (f #x8cc00998b06e7a6c) #x8cc00998b06e7a6d))
(constraint (= (f #x74dd7b77ac37531e) #x0e9baf6ef586ea63))
(constraint (= (f #xe628b86141b0e844) #xe628b86141b0e845))
(constraint (= (f #x824472523c84e0db) #x00488e4a47909c1b))
(constraint (= (f #x7563cce17da26ee7) #x0eac799c2fb44ddc))
(constraint (= (f #xe7492460c34281e1) #xe7492460c34281e0))
(constraint (= (f #xb6b1b6a59bc943b8) #xb6b1b6a59bc943b9))
(constraint (= (f #xc861d29c3e1c9eaa) #x090c3a5387c393d5))
(constraint (= (f #xaee551a3a8e77e1b) #x05dcaa34751cefc3))
(constraint (= (f #xc605b4c50dc17da2) #x08c0b698a1b82fb4))
(constraint (= (f #x29436c694e5250d7) #x05286d8d29ca4a1a))
(constraint (= (f #x01608d4ee916b9eb) #x002c11a9dd22d73d))
(constraint (= (f #x8a2d4ce60127238e) #x0145a99cc024e471))
(constraint (= (f #x47e4b04d01a0baab) #x08fc9609a0341755))
(constraint (= (f #x97710429a6a0851b) #x02ee208534d410a3))
(constraint (= (f #xbdbb3396dc7d5332) #x07b76672db8faa66))
(constraint (= (f #x95b43323d23be1c5) #x95b43323d23be1c4))
(constraint (= (f #x48ccb7413c418cc7) #x091996e827883198))
(constraint (= (f #xd625d8e0b87d1da6) #x0ac4bb1c170fa3b4))
(constraint (= (f #x306e03aa72eddd96) #x060dc0754e5dbbb2))
(constraint (= (f #xeb898915e3700869) #xeb898915e3700868))
(constraint (= (f #xa44c37e2e00ed176) #x048986fc5c01da2e))
(constraint (= (f #x0478bbd21038509d) #x0478bbd21038509c))
(constraint (= (f #xe71795c05c193623) #x0ce2f2b80b8326c4))
(constraint (= (f #xda0b36ebe7dabd52) #x0b4166dd7cfb57aa))
(constraint (= (f #x3ada4395600e1e15) #x3ada4395600e1e14))
(constraint (= (f #xe2a297410835629e) #x0c5452e82106ac53))
(constraint (= (f #x97a048a4904cc209) #x97a048a4904cc208))
(constraint (= (f #x8b0b86e0238de41e) #x016170dc0471bc83))
(constraint (= (f #x5b49b2a0c1e69145) #x5b49b2a0c1e69144))
(constraint (= (f #x33dabb519d1e164e) #x067b576a33a3c2c9))
(constraint (= (f #x028258aa690b0517) #x00504b154d2160a2))
(constraint (= (f #x37edeb3e6145e1ae) #x06fdbd67cc28bc35))
(constraint (= (f #x133c8e1d7d2d8b2b) #x026791c3afa5b165))
(constraint (= (f #x71b6aa89b8e18c92) #x0e36d551371c3192))
(constraint (= (f #xdb120d65aeea9352) #x0b6241acb5dd526a))
(constraint (= (f #x024aed22eec7b3d9) #x024aed22eec7b3d8))
(constraint (= (f #x2cbdd0226e6d9d7c) #x2cbdd0226e6d9d7d))
(constraint (= (f #x4dec148ab9b95a8e) #x09bd829157372b51))
(constraint (= (f #x4b35bbe4dc4a90c8) #x4b35bbe4dc4a90c9))
(constraint (= (f #x9768eac899cd5e1e) #x02ed1d591339abc3))
(constraint (= (f #x6dec874b68edee76) #x0dbd90e96d1dbdce))
(constraint (= (f #x64757a1a4bc39ae2) #x0c8eaf434978735c))
(constraint (= (f #x5dec30e1cd1cee2b) #x0bbd861c39a39dc5))
(constraint (= (f #x2a4be98adbeda7cb) #x05497d315b7db4f9))
(constraint (= (f #xc1a44d1a704ceb57) #x083489a34e099d6a))
(constraint (= (f #xe91e7be19bb8dc84) #xe91e7be19bb8dc85))
(constraint (= (f #x3276607616a52548) #x3276607616a52549))
(constraint (= (f #x1c2d696e6a2e54a6) #x0385ad2dcd45ca94))
(constraint (= (f #x8badd9190adeeb78) #x8badd9190adeeb79))
(constraint (= (f #x541de9bda084eb9a) #x0a83bd37b4109d73))
(constraint (= (f #x04c80864195073d7) #x0099010c832a0e7a))
(constraint (= (f #x2b561345cc5c0e01) #x2b561345cc5c0e00))
(constraint (= (f #xa8c4c09cbc16dec1) #xa8c4c09cbc16dec0))
(constraint (= (f #xe06b615e3d2c863d) #xe06b615e3d2c863c))
(constraint (= (f #x90a71e7b3da991c7) #x0214e3cf67b53238))
(constraint (= (f #x48c35cbb4e87c3ed) #x48c35cbb4e87c3ec))
(constraint (= (f #x4e912368e125edb4) #x4e912368e125edb5))
(constraint (= (f #x152d3a6d2020475a) #x02a5a74da40408eb))
(constraint (= (f #x3c8596eb4d337d49) #x3c8596eb4d337d48))
(constraint (= (f #x85803e1c1a315e28) #x85803e1c1a315e29))
(constraint (= (f #xe580b0d75eabbe86) #x0cb0161aebd577d0))
(constraint (= (f #x744ac933ebdcccec) #x744ac933ebdccced))
(constraint (= (f #xec5623922c339a8e) #x0d8ac47245867351))
(constraint (= (f #xd4e39d9248503646) #x0a9c73b2490a06c8))
(constraint (= (f #xc993905c0072a798) #xc993905c0072a799))
(constraint (= (f #x943ddb0dad9e443e) #x0287bb61b5b3c887))
(constraint (= (f #xd0c7674ea874541e) #x0a18ece9d50e8a83))
(constraint (= (f #x50dbc7c6a500e5a5) #x50dbc7c6a500e5a4))
(constraint (= (f #x7054bddba1230096) #x0e0a97bb74246012))
(constraint (= (f #x88963576dd07d2c2) #x0112c6aedba0fa58))
(constraint (= (f #xe366e9498ca91043) #x0c6cdd2931952208))
(constraint (= (f #x48eee95e8e73b8a6) #x091ddd2bd1ce7714))
(constraint (= (f #xa8840280e5eb1de8) #xa8840280e5eb1de9))
(constraint (= (f #x6bb8d4b5cd6e1654) #x6bb8d4b5cd6e1655))
(constraint (= (f #x521eb23b13eee2a3) #x0a43d647627ddc54))
(constraint (= (f #x5c4d92ae3e028cc1) #x5c4d92ae3e028cc0))
(constraint (= (f #x4c6621c951b5112e) #x098cc4392a36a225))
(constraint (= (f #x3ae3879c8d5d39b1) #x3ae3879c8d5d39b0))
(constraint (= (f #x2e142d2c0c923d6e) #x05c285a5819247ad))
(constraint (= (f #xe6aa88eec5cc65e9) #xe6aa88eec5cc65e8))
(constraint (= (f #x5b0e70bd68dabdd5) #x5b0e70bd68dabdd4))
(constraint (= (f #x096306261827aa99) #x096306261827aa98))
(constraint (= (f #xa8bd3ba05cc90e59) #xa8bd3ba05cc90e58))
(constraint (= (f #x61558e1109ebcdde) #x0c2ab1c2213d79bb))
(constraint (= (f #x942ea9dea8230262) #x0285d53bd504604c))
(constraint (= (f #x85e51ceeae1c74d4) #x85e51ceeae1c74d5))
(constraint (= (f #x91807683c556b96e) #x02300ed078aad72d))
(constraint (= (f #xe7d32908721c2964) #xe7d32908721c2965))
(check-synth)
