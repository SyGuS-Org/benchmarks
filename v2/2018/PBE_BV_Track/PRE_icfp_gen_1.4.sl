(set-logic BV)
(define-fun ehad ((x (_ BitVec 64))) (_ BitVec 64) (bvlshr x #x0000000000000001))
(define-fun arba ((x (_ BitVec 64))) (_ BitVec 64) (bvlshr x #x0000000000000004))
(define-fun shesh ((x (_ BitVec 64))) (_ BitVec 64) (bvlshr x #x0000000000000010))
(define-fun smol ((x (_ BitVec 64))) (_ BitVec 64) (bvshl x #x0000000000000001))
(define-fun im ((x (_ BitVec 64)) (y (_ BitVec 64)) (z (_ BitVec 64))) (_ BitVec 64) (ite (= x #x0000000000000001) y z))
(synth-fun f ((x (_ BitVec 64))) (_ BitVec 64)
    ((Start (_ BitVec 64)))
    ((Start (_ BitVec 64) (#x0000000000000000 #x0000000000000001 x (bvnot Start) (smol Start) (ehad Start) (arba Start) (shesh Start) (bvand Start Start) (bvor Start Start) (bvxor Start Start) (bvadd Start Start) (im Start Start Start)))))
(constraint (= (f #xA33D4C359BD2848F) #xA33D4C359BD2848F))
(constraint (= (f #x5608281ABA0588BD) #x5608281ABA0588BD))
(constraint (= (f #x880F8C3AD066FA2B) #x880F8C3AD066FA2B))
(constraint (= (f #xE0CCF465597CA3B5) #xE0CCF465597CA3B5))
(constraint (= (f #x94AB8444284DB885) #x94AB8444284DB885))
(constraint (= (f #x901C43786D97E944) #xFFFFFFFFFFFFFFFE))
(constraint (= (f #xFB12BD70CCFA99C4) #xFFFFFFFFFFFFFFFE))
(constraint (= (f #x5AB8E9611EC0E670) #xFFFFFFFFFFFFFFFE))
(constraint (= (f #xC9C08D9046AF08C6) #xFFFFFFFFFFFFFFFE))
(constraint (= (f #x9D4A87EF2E807632) #xFFFFFFFFFFFFFFFE))
(constraint (= (f #x0000000000000003) #x0000000000000003))
(constraint (= (f #xB198000000000001) #x0000000000000001))
(constraint (= (f #x8574000000000001) #x0000000000000001))
(constraint (= (f #xC267000000000001) #x0000000000000001))
(constraint (= (f #x2543000000000001) #x0000000000000001))
(constraint (= (f #xDD2A000000000001) #x0000000000000001))
(constraint (= (f #xDDE8E7B76E1CCFE2) #xFFFFFFFFFFFFFFFE))
(constraint (= (f #x0475C230E4EBF3B3) #x0475C230E4EBF3B3))
(constraint (= (f #x32CF09E43B7D3393) #x32CF09E43B7D3393))
(constraint (= (f #x2B0B30FC1F2463FE) #xFFFFFFFFFFFFFFFE))
(constraint (= (f #xADE87EAF3F7B89CB) #xADE87EAF3F7B89CB))
(constraint (= (f #x1FCF9633524DF927) #x1FCF9633524DF927))
(constraint (= (f #x633C2B6BA3FF379E) #xFFFFFFFFFFFFFFFE))
(constraint (= (f #xB4FC7E3A5D2EC9CC) #xFFFFFFFFFFFFFFFE))
(constraint (= (f #xC8DE4D1CF80B1FDF) #xC8DE4D1CF80B1FDF))
(constraint (= (f #x93428D181F72EABE) #xFFFFFFFFFFFFFFFE))
(constraint (= (f #x23CF000000000001) #x0000000000000001))
(constraint (= (f #xB90FEE5A28795915) #xB90FEE5A28795915))
(constraint (= (f #x769044B6CA8EAAFD) #x769044B6CA8EAAFD))
(constraint (= (f #xDCAEDCAE88828083) #xDCAEDCAE88828083))
(constraint (= (f #x44A280FDF5CC4929) #x44A280FDF5CC4929))
(check-synth)
