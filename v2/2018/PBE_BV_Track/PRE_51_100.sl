(set-logic BV)
(define-fun ehad ((x (_ BitVec 64))) (_ BitVec 64) (bvlshr x #x0000000000000001))
(define-fun arba ((x (_ BitVec 64))) (_ BitVec 64) (bvlshr x #x0000000000000004))
(define-fun shesh ((x (_ BitVec 64))) (_ BitVec 64) (bvlshr x #x0000000000000010))
(define-fun smol ((x (_ BitVec 64))) (_ BitVec 64) (bvshl x #x0000000000000001))
(define-fun im ((x (_ BitVec 64)) (y (_ BitVec 64)) (z (_ BitVec 64))) (_ BitVec 64) (ite (= x #x0000000000000001) y z))
(synth-fun f ((x (_ BitVec 64))) (_ BitVec 64)
    ((Start (_ BitVec 64)))
    ((Start (_ BitVec 64) (#x0000000000000000 #x0000000000000001 x (bvnot Start) (smol Start) (ehad Start) (arba Start) (shesh Start) (bvand Start Start) (bvor Start Start) (bvxor Start Start) (bvadd Start Start) (im Start Start Start)))))
(constraint (= (f #x71de46e8dbc83596) #x71de46e8dbc83594))
(constraint (= (f #xb216ccac4ded90dd) #x4de93353b2126f22))
(constraint (= (f #x7e10e8be5ecb1ca6) #x7e10e8be5ecb1ca4))
(constraint (= (f #x8367eebe833eed75) #x7c9811417cc1128a))
(constraint (= (f #xee62d0873d1cae0e) #xee62d0873d1cae0c))
(constraint (= (f #x44b1aeb3b1c4be4e) #x44b1aeb3b1c4be4c))
(constraint (= (f #xb4d5eb7934ca8324) #xb4d5eb7934ca8326))
(constraint (= (f #x9c0149d14eca4109) #x63feb62eb135bef6))
(constraint (= (f #xebe84c17cb3629e3) #x1417b3e834c9d61c))
(constraint (= (f #xb613a3b5a1c96bee) #xb613a3b5a1c96bec))
(constraint (= (f #x7548eb5e7beee354) #x7548eb5e7beee356))
(constraint (= (f #x22eb105e8d006eba) #x22eb105e8d006eb8))
(constraint (= (f #xb581a0b55e91c57d) #x4a7e5f4aa16e3a82))
(constraint (= (f #x7786727e87eaab0b) #x88798d81781554f4))
(constraint (= (f #x2ed81475cc16c02a) #x2ed81475cc16c028))
(constraint (= (f #x451cdca0ee5adb56) #x451cdca0ee5adb54))
(constraint (= (f #xeab24c8003a6e705) #x154db37ffc5918fa))
(constraint (= (f #x1a1e249149d6216e) #x1a1e249149d6216c))
(constraint (= (f #xb3c02e861b208d6e) #xb3c02e861b208d6c))
(constraint (= (f #x0e840701d3323a16) #x0e840701d3323a14))
(constraint (= (f #x57b84989e76248c0) #x57b84989e76248c2))
(constraint (= (f #xcb1eda990813ebd8) #xcb1eda990813ebda))
(constraint (= (f #xa5b1cedc96e8bacb) #x5a4e312369174534))
(constraint (= (f #x8b34c0e162a249be) #x8b34c0e162a249bc))
(constraint (= (f #xd6ecd854a1e5e88d) #x291327ab5e1a1772))
(constraint (= (f #x10c9a1e4513c7159) #xef365e1baec38ea6))
(constraint (= (f #x520e198d680c1844) #x520e198d680c1846))
(constraint (= (f #x216e887d110208a5) #xde917782eefdf75a))
(constraint (= (f #x1b1e55450916ee33) #xe4e1aabaf6e911cc))
(constraint (= (f #x5cc8db97227eac77) #xa3372468dd815388))
(constraint (= (f #x5de8c34ea20d7dea) #x5de8c34ea20d7de8))
(constraint (= (f #xee8684c8ed238dee) #xee8684c8ed238dec))
(constraint (= (f #x4356e741696bc630) #x4356e741696bc632))
(constraint (= (f #x7ee82193ede5eb60) #x7ee82193ede5eb62))
(constraint (= (f #xd54d37c253cbb131) #x2ab2c83dac344ece))
(constraint (= (f #xe468e657de1ae171) #x1b9719a821e51e8e))
(constraint (= (f #xa4de7a28c566ea52) #xa4de7a28c566ea50))
(constraint (= (f #xd1e8b1e1000ad3b9) #x2e174e1efff52c46))
(constraint (= (f #x940ed95edb70a98c) #x940ed95edb70a98e))
(constraint (= (f #xe7b44b329311b6b1) #x184bb4cd6cee494e))
(constraint (= (f #x198a4426c7702741) #xe675bbd9388fd8be))
(constraint (= (f #x325eecb4db2c055d) #xcda1134b24d3faa2))
(constraint (= (f #x7456d0aadcbc4300) #x7456d0aadcbc4302))
(constraint (= (f #x7698e59c11e9a596) #x7698e59c11e9a594))
(constraint (= (f #x3c67d27a055e9c56) #x3c67d27a055e9c54))
(constraint (= (f #x4b0e1431a1e6463c) #x4b0e1431a1e6463e))
(constraint (= (f #x35eeec7580bcc5e2) #x35eeec7580bcc5e0))
(constraint (= (f #xe3780e936eaa1a69) #x1c87f16c9155e596))
(constraint (= (f #xe1889abdb701701e) #xe1889abdb701701c))
(constraint (= (f #x6ceea8e21aca5691) #x9311571de535a96e))
(constraint (= (f #x0ab8067d08887a92) #x0ab8067d08887a90))
(constraint (= (f #x76bbec7aecd98276) #x76bbec7aecd98274))
(constraint (= (f #x6464edeec3316c0b) #x9b9b12113cce93f4))
(constraint (= (f #xc5eec1a8963e5ba6) #xc5eec1a8963e5ba4))
(constraint (= (f #xedbeaeb2edec4863) #x1241514d1213b79c))
(constraint (= (f #x2edd857eed9b34d8) #x2edd857eed9b34da))
(constraint (= (f #x440e8d1e3a1ae6e5) #xbbf172e1c5e5191a))
(constraint (= (f #x076c2a9b8630ee51) #xf893d56479cf11ae))
(constraint (= (f #x7e8b52251e6972ce) #x7e8b52251e6972cc))
(constraint (= (f #xd1dce4247aa69ab8) #xd1dce4247aa69aba))
(constraint (= (f #x011362ad10325100) #x011362ad10325102))
(constraint (= (f #xc6d94221193d1ce7) #x3926bddee6c2e318))
(constraint (= (f #x437905e4b0c30bb0) #x437905e4b0c30bb2))
(constraint (= (f #x6960a0533d6ca7ce) #x6960a0533d6ca7cc))
(constraint (= (f #x9cb05dddbe27bb96) #x9cb05dddbe27bb94))
(constraint (= (f #x54c0e717e24021d4) #x54c0e717e24021d6))
(constraint (= (f #x0e0d64190364356b) #xf1f29be6fc9bca94))
(constraint (= (f #x5ac056b8e78b6c07) #xa53fa947187493f8))
(constraint (= (f #x7c84dab006bbec43) #x837b254ff94413bc))
(constraint (= (f #x7c3ced416921b2ec) #x7c3ced416921b2ee))
(constraint (= (f #xa759e13e86306aaa) #xa759e13e86306aa8))
(constraint (= (f #x7daa25e4738532cb) #x8255da1b8c7acd34))
(constraint (= (f #x8e0be22bce107dac) #x8e0be22bce107dae))
(constraint (= (f #xb8da334980056b55) #x4725ccb67ffa94aa))
(constraint (= (f #xbca239732d855647) #x435dc68cd27aa9b8))
(constraint (= (f #x2ed08e08d6c40227) #xd12f71f7293bfdd8))
(constraint (= (f #x61657bcb682e90a0) #x61657bcb682e90a2))
(constraint (= (f #xd5e28b4e7e46502e) #xd5e28b4e7e46502c))
(constraint (= (f #x8e8c7368e8c98c96) #x8e8c7368e8c98c94))
(constraint (= (f #xedd5704367102431) #x122a8fbc98efdbce))
(constraint (= (f #x67e84cd54e37eeee) #x67e84cd54e37eeec))
(constraint (= (f #x7357e23729bedd30) #x7357e23729bedd32))
(constraint (= (f #x74a3299ca44c6ab1) #x8b5cd6635bb3954e))
(constraint (= (f #x0c396eeca19e55a1) #xf3c691135e61aa5e))
(constraint (= (f #x3b731e5bc326a027) #xc48ce1a43cd95fd8))
(constraint (= (f #x8704dcbdd7eda918) #x8704dcbdd7eda91a))
(constraint (= (f #xc11e5118c217ee4b) #x3ee1aee73de811b4))
(constraint (= (f #x4aa7cb46325bde3d) #xb55834b9cda421c2))
(constraint (= (f #x4c2c2e9632087009) #xb3d3d169cdf78ff6))
(constraint (= (f #xe96ea4550e90e922) #xe96ea4550e90e920))
(constraint (= (f #xc756a30385a0d80b) #x38a95cfc7a5f27f4))
(constraint (= (f #x9ae230691bc33e88) #x9ae230691bc33e8a))
(constraint (= (f #xc54e0e2e35a2b876) #xc54e0e2e35a2b874))
(constraint (= (f #x278cc9aedd82ce87) #xd8733651227d3178))
(constraint (= (f #x3dea25e6daccea94) #x3dea25e6daccea96))
(constraint (= (f #x88c80050e58287ae) #x88c80050e58287ac))
(constraint (= (f #xe641a4901b0440eb) #x19be5b6fe4fbbf14))
(constraint (= (f #x0a6ee14c4eb648e0) #x0a6ee14c4eb648e2))
(constraint (= (f #x1eca1264e718a87e) #x1eca1264e718a87c))
(constraint (= (f #x051e01e0cc179192) #x051e01e0cc179190))
(check-synth)
