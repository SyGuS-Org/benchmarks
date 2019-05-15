(set-logic BV)
(define-fun ehad ((x (_ BitVec 64))) (_ BitVec 64) (bvlshr x #x0000000000000001))
(define-fun arba ((x (_ BitVec 64))) (_ BitVec 64) (bvlshr x #x0000000000000004))
(define-fun shesh ((x (_ BitVec 64))) (_ BitVec 64) (bvlshr x #x0000000000000010))
(define-fun smol ((x (_ BitVec 64))) (_ BitVec 64) (bvshl x #x0000000000000001))
(define-fun im ((x (_ BitVec 64)) (y (_ BitVec 64)) (z (_ BitVec 64))) (_ BitVec 64) (ite (= x #x0000000000000001) y z))
(synth-fun f ((x (_ BitVec 64))) (_ BitVec 64)
    ((Start (_ BitVec 64)))
    ((Start (_ BitVec 64) (#x0000000000000000 #x0000000000000001 x (bvnot Start) (smol Start) (ehad Start) (arba Start) (shesh Start) (bvand Start Start) (bvor Start Start) (bvxor Start Start) (bvadd Start Start) (im Start Start Start)))))
(constraint (= (f #x686939c80678ccda) #xcbcb631bfcc39993))
(constraint (= (f #x68d2e80c87a75089) #xcb968bf9bc2c57bb))
(constraint (= (f #x5c6ae045b87609e9) #xd1ca8fdd23c4fb0b))
(constraint (= (f #x7d97ec9b6e9e31ce) #xc13409b248b0e719))
(constraint (= (f #xcd9cb07319cd7013) #x9931a7c6731947f7))
(constraint (= (f #x90cddeeea15139be) #xb7991088af576321))
(constraint (= (f #x21c5819d52cb8e28) #xef1d3f31569a38eb))
(constraint (= (f #x4799cee0b6e77e9c) #xdc33188fa48c40b1))
(constraint (= (f #x2a3a2ce5d9bd26ae) #xeae2e98d13216ca9))
(constraint (= (f #xe06c6387e04ed4d9) #x8fc9ce3c0fd89593))
(constraint (= (f #x8268abcec24a0eee) #xbecbaa189edaf889))
(constraint (= (f #x6e4570d8ec07e747) #xc8dd479389fc0c5d))
(constraint (= (f #x865ecd80a31610c9) #xbcd0993fae74f79b))
(constraint (= (f #x4baa2564b00e7307) #xda2aed4da7f8c67d))
(constraint (= (f #xa446d6d9d5d87456) #xaddc94931513c5d5))
(constraint (= (f #xe4e5511c968391ed) #x8d8d5771b4be3709))
(constraint (= (f #xe293de04d786e2c0) #x8eb610fd943c8e9f))
(constraint (= (f #x0294292216b40e02) #xfeb5eb6ef4a5f8ff))
(constraint (= (f #xa685e06a1366dac9) #xacbd0fcaf64c929b))
(constraint (= (f #x532e0ce8d136875d) #xd668f98b9764bc51))
(constraint (= (f #x0e2870d8dcc7445e) #xf8ebc793919c5dd1))
(constraint (= (f #xe80c65a0b6ecdb4d) #x8bf9cd2fa4899259))
(constraint (= (f #x1e0c18ed255b6100) #xf0f9f3896d524f7f))
(constraint (= (f #x4cadeeabdecb28cb) #xd9a908aa109a6b9b))
(constraint (= (f #xe5e442da67eee5c1) #x8d0dde92cc088d1f))
(constraint (= (f #x298c3431ed426e11) #xeb39e5e7095ec8f7))
(constraint (= (f #x425a5301bd30eed4) #xded2d67f21678895))
(constraint (= (f #x79ed3572b69a1e34) #xc3096546a4b2f0e5))
(constraint (= (f #x8ceb24968c71ad07) #xb98a6db4b9c7297d))
(constraint (= (f #x5929d2c8a6d30ce1) #xd36b169bac96798f))
(constraint (= (f #x861e858091ee3083) #xbcf0bd3fb708e7bf))
(constraint (= (f #x83c8118948708e88) #xbe1bf73b5bc7b8bb))
(constraint (= (f #x789c72287b523b94) #xc3b1c6ebc256e235))
(constraint (= (f #x5207c93e130d0160) #xd6fc1b60f6797f4f))
(constraint (= (f #xcce2a6244ac8e465) #x998eacedda9b8dcd))
(constraint (= (f #xe154d8e071131ade) #x8f55938fc7767291))
(constraint (= (f #x70aad7bb2a3ee2da) #xc7aa94226ae08e93))
(constraint (= (f #x81185b42276b5e81) #xbf73d25eec4a50bf))
(constraint (= (f #xe82984beed83940e) #x8beb3da0893e35f9))
(constraint (= (f #x6ad6ba70c1ce37e2) #xca94a2c79f18e40f))
(constraint (= (f #xaba7bbec4eb75b66) #xaa2c2209d8a4524d))
(constraint (= (f #x3dd9ebeed041d6e1) #xe1130a0897df148f))
(constraint (= (f #x46338e96a2605b0c) #xdce638b4aecfd279))
(constraint (= (f #xbcae5ab14690a7b8) #xa1a8d2a75cb7ac23))
(constraint (= (f #x5c05d15da19532ad) #xd1fd17512f3566a9))
(constraint (= (f #x6767b4dc390cb3ee) #xcc4c2591e379a609))
(constraint (= (f #x7008cdbe0ace0297) #xc7fb9920fa98feb5))
(constraint (= (f #x9b81aeec17ad15ee) #xb23f2889f4297509))
(constraint (= (f #xc65a69011b45eec8) #x9cd2cb7f725d089b))
(constraint (= (f #xaa15acee0ec4ccae) #xaaf52988f89d99a9))
(constraint (= (f #xeb0728ea278a2e4d) #x8a7c6b8aec3ae8d9))
(constraint (= (f #x31edbbce57e8c7a2) #xe7092218d40b9c2f))
(constraint (= (f #xa28541e413c588a5) #xaebd5f0df61d3bad))
(constraint (= (f #x17c973e369959db1) #xf41b460e4b353127))
(constraint (= (f #x3eb81c88e457b6b2) #xe0a3f1bb8dd424a7))
(constraint (= (f #xe9ed7132e9a6c6d7) #x8b0947668b2c9c95))
(constraint (= (f #xebadd30c79b51440) #x8a291679c32575df))
(constraint (= (f #x45daa4d399e48ecb) #xdd12ad96330db89b))
(constraint (= (f #x9042b38c6dd51b3e) #xb7dea639c9157261))
(constraint (= (f #xc7ee08ece7c1b6b8) #x9c08fb898c1f24a3))
(constraint (= (f #x87d15ce20c38394a) #xbc17518ef9e3e35b))
(constraint (= (f #x9a96810291c70311) #xb2b4bf7eb71c7e77))
(constraint (= (f #xebae5ac5db480991) #x8a28d29d125bfb37))
(constraint (= (f #x09cbcc858dba97e1) #xfb1a19bd3922b40f))
(constraint (= (f #x3354020a58b9dc54) #xe655fefad3a311d5))
(constraint (= (f #xa84e5a7ccb823325) #xabd8d2c19a3ee66d))
(constraint (= (f #xd877835e48aacc3c) #x93c43e50dbaa99e1))
(constraint (= (f #xaed9a97c41d4d285) #xa8932b41df1596bd))
(constraint (= (f #xaa4ced5a44be4ba4) #xaad98952dda0da2d))
(constraint (= (f #x7e466d2856eeb0a9) #xc0dcc96bd488a7ab))
(constraint (= (f #x3ea12eddba477030) #xe0af689122dc47e7))
(constraint (= (f #xce7e0d2eed190617) #x98c0f96889737cf5))
(constraint (= (f #xb9208a3347e7c7eb) #xa36fbae65c0c1c0b))
(constraint (= (f #x2eed0e85715d3703) #xe88978bd4751647f))
(constraint (= (f #x8d767b1e91ee85d3) #xb944c270b708bd17))
(constraint (= (f #xe5559a3813dc378a) #x8d5532e3f611e43b))
(constraint (= (f #xa1366a61102d7819) #xaf64cacf77e943f3))
(constraint (= (f #x8317c3e1132acee2) #xbe741e0f766a988f))
(constraint (= (f #x6424e6826259b7ce) #xcded8cbeced32419))
(constraint (= (f #x20626d4781202a17) #xefcec95c3f6feaf5))
(constraint (= (f #x7e4bdebc8ee4551b) #xc0da10a1b88dd573))
(constraint (= (f #x532b70539b46947a) #xd66a47d6325cb5c3))
(constraint (= (f #xe01764c97418a6be) #x8ff44d9b45f3aca1))
(constraint (= (f #x59694e97679d0d5e) #xd34b58b44c317951))
(constraint (= (f #x0db75ee77447eeb4) #xf924508c45dc08a5))
(constraint (= (f #x44a5ed2575e94230) #xddad096d450b5ee7))
(constraint (= (f #x2906ec2389053874) #xeb7c89ee3b7d63c5))
(constraint (= (f #x7dc6860626b011b5) #xc11cbcfceca7f725))
(constraint (= (f #xeb5e8de11ae68a48) #x8a50b90f728cbadb))
(constraint (= (f #x76e6ad1bc0cb2612) #xc48ca9721f9a6cf7))
(constraint (= (f #x350eb19b93bba2c1) #xe578a73236222e9f))
(constraint (= (f #xd0dae249a88758e9) #x97928edb2bbc538b))
(constraint (= (f #xe82dc7e04a1be810) #x8be91c0fdaf20bf7))
(constraint (= (f #x435ed0371a692ba9) #xde5097e472cb6a2b))
(constraint (= (f #xbe34ccd8ea5a1e3a) #xa0e599938ad2f0e3))
(constraint (= (f #x85e8ba31e0ae6528) #xbd0ba2e70fa8cd6b))
(constraint (= (f #x0ee020e76ce43844) #xf88fef8c498de3dd))
(constraint (= (f #xbe0329eae4349479) #xa0fe6b0a8de5b5c3))
(constraint (= (f #xc1be8b0ea5aa3d7d) #x9f20ba78ad2ae141))
(constraint (= (f #x92e523e4d4a40d16) #xb68d6e0d95adf975))
(check-synth)
