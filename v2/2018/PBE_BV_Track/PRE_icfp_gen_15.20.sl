(set-logic BV)
(define-fun ehad ((x (_ BitVec 64))) (_ BitVec 64) (bvlshr x #x0000000000000001))
(define-fun arba ((x (_ BitVec 64))) (_ BitVec 64) (bvlshr x #x0000000000000004))
(define-fun shesh ((x (_ BitVec 64))) (_ BitVec 64) (bvlshr x #x0000000000000010))
(define-fun smol ((x (_ BitVec 64))) (_ BitVec 64) (bvshl x #x0000000000000001))
(define-fun im ((x (_ BitVec 64)) (y (_ BitVec 64)) (z (_ BitVec 64))) (_ BitVec 64) (ite (= x #x0000000000000001) y z))
(synth-fun f ((x (_ BitVec 64))) (_ BitVec 64)
    ((Start (_ BitVec 64)))
    ((Start (_ BitVec 64) (#x0000000000000000 #x0000000000000001 x (bvnot Start) (smol Start) (ehad Start) (arba Start) (shesh Start) (bvand Start Start) (bvor Start Start) (bvxor Start Start) (bvadd Start Start) (im Start Start Start)))))
(constraint (= (f #x0252BB22D5359F2A) #x0000000000000001))
(constraint (= (f #x3BE459F3DC356FAA) #x0000000000000001))
(constraint (= (f #xB2E8B7A146007376) #x0000000000000001))
(constraint (= (f #x5EC18A29EF6CBA16) #x0000000000000001))
(constraint (= (f #xCB19D0187A1E8EEE) #x0000000000000001))
(constraint (= (f #x000000000001E648) #x0000000000000000))
(constraint (= (f #x0000000000014A92) #x0000000000000001))
(constraint (= (f #x000000000001BF3C) #x0000000000000000))
(constraint (= (f #x0000000000013954) #x0000000000000000))
(constraint (= (f #x000000000001EA00) #x0000000000000000))
(constraint (= (f #x74FEA751817F156D) #xFFFFFFFFFFFFFFFE))
(constraint (= (f #xA8F6CB7E807F6651) #xFFFFFFFFFFFFFFFE))
(constraint (= (f #x955C6779C981C367) #xFFFFFFFFFFFFFFFE))
(constraint (= (f #x53E92440E746D32D) #xFFFFFFFFFFFFFFFE))
(constraint (= (f #xC8C59FA6651B72B7) #xFFFFFFFFFFFFFFFE))
(constraint (= (f #x00000000000166E5) #xFFFFFFFFFFFFFFFE))
(constraint (= (f #x000000000001A68D) #xFFFFFFFFFFFFFFFE))
(constraint (= (f #x0000000000014567) #xFFFFFFFFFFFFFFFE))
(constraint (= (f #x0000000000013265) #xFFFFFFFFFFFFFFFE))
(constraint (= (f #x000000000001AA7F) #xFFFFFFFFFFFFFFFE))
(constraint (= (f #xD1024D2E6257F62F) #x2EFDB2D19DA809D0))
(constraint (= (f #x074490A3D053CA0F) #xF8BB6F5C2FAC35F0))
(constraint (= (f #xFD74606B5E664E8F) #x028B9F94A199B170))
(constraint (= (f #x89A68BA30BF55C0F) #x7659745CF40AA3F0))
(constraint (= (f #x33625C35220817CF) #xCC9DA3CADDF7E830))
(constraint (= (f #x0000000000019BAF) #xFFFFFFFFFFFE6450))
(constraint (= (f #x000000000001FBCF) #xFFFFFFFFFFFE0430))
(constraint (= (f #x000000000001804F) #xFFFFFFFFFFFE7FB0))
(constraint (= (f #x000000000001FE0F) #xFFFFFFFFFFFE01F0))
(constraint (= (f #x000000000001632F) #xFFFFFFFFFFFE9CD0))
(constraint (= (f #x7933021C6140ED19) #xFFFFFFFFFFFFFFFE))
(constraint (= (f #x86749743C6D13BB2) #x0000000000000001))
(constraint (= (f #x236E32E896DAA121) #xFFFFFFFFFFFFFFFE))
(constraint (= (f #xD0FDD8617A9FBF2F) #x2F02279E856040D0))
(constraint (= (f #x052CA896D37FD7AA) #x0000000000000001))
(constraint (= (f #x9A746F19AA7424EB) #xFFFFFFFFFFFFFFFE))
(constraint (= (f #x10B2EA4EDA15923D) #xFFFFFFFFFFFFFFFE))
(constraint (= (f #x27775A515247BA4B) #xFFFFFFFFFFFFFFFE))
(constraint (= (f #xCF47291A0B1DE11C) #x0000000000000000))
(constraint (= (f #x82C9F375ED180DA4) #x0000000000000000))
(constraint (= (f #x000000000001B514) #x0000000000000000))
(constraint (= (f #x000000000001E45E) #x0000000000000001))
(constraint (= (f #x1E6BBF6AEC0077A5) #xFFFFFFFFFFFFFFFE))
(constraint (= (f #x85C3904727124E3D) #xFFFFFFFFFFFFFFFE))
(constraint (= (f #x2870DFAC9B06916D) #xFFFFFFFFFFFFFFFE))
(constraint (= (f #xC250932FE7574C2F) #x3DAF6CD018A8B3D0))
(constraint (= (f #x0000000000019C0F) #xFFFFFFFFFFFE63F0))
(constraint (= (f #x0000000000010CEB) #xFFFFFFFFFFFFFFFE))
(constraint (= (f #x0000000000012ACF) #xFFFFFFFFFFFED530))
(constraint (= (f #x0000000000011A2F) #xFFFFFFFFFFFEE5D0))
(constraint (= (f #x45734A8AC03BBCA7) #xFFFFFFFFFFFFFFFE))
(constraint (= (f #xF5686665E36B8D9F) #xFFFFFFFFFFFFFFFE))
(constraint (= (f #x0000000000016E35) #xFFFFFFFFFFFFFFFE))
(constraint (= (f #x000000000001E5ED) #xFFFFFFFFFFFFFFFE))
(constraint (= (f #x0000000000014707) #xFFFFFFFFFFFFFFFE))
(constraint (= (f #x0000000000013697) #xFFFFFFFFFFFFFFFE))
(constraint (= (f #x000000000001184B) #xFFFFFFFFFFFFFFFE))
(constraint (= (f #x0000000000018FDF) #xFFFFFFFFFFFFFFFE))
(constraint (= (f #x00000000000163AF) #xFFFFFFFFFFFE9C50))
(constraint (= (f #x0000000000015F2D) #xFFFFFFFFFFFFFFFE))
(constraint (= (f #xEE70A58679EEC1BF) #xFFFFFFFFFFFFFFFE))
(constraint (= (f #x0000000000015707) #xFFFFFFFFFFFFFFFE))
(constraint (= (f #xB1EC35F59DD502BF) #xFFFFFFFFFFFFFFFE))
(constraint (= (f #x312FA2B4B852EAAF) #xCED05D4B47AD1550))
(constraint (= (f #x9B35B1F893B7183F) #xFFFFFFFFFFFFFFFE))
(check-synth)
