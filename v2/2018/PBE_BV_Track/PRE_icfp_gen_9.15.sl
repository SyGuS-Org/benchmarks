(set-logic BV)
(define-fun ehad ((x (_ BitVec 64))) (_ BitVec 64) (bvlshr x #x0000000000000001))
(define-fun arba ((x (_ BitVec 64))) (_ BitVec 64) (bvlshr x #x0000000000000004))
(define-fun shesh ((x (_ BitVec 64))) (_ BitVec 64) (bvlshr x #x0000000000000010))
(define-fun smol ((x (_ BitVec 64))) (_ BitVec 64) (bvshl x #x0000000000000001))
(define-fun im ((x (_ BitVec 64)) (y (_ BitVec 64)) (z (_ BitVec 64))) (_ BitVec 64) (ite (= x #x0000000000000001) y z))
(synth-fun f ((x (_ BitVec 64))) (_ BitVec 64)
    ((Start (_ BitVec 64)))
    ((Start (_ BitVec 64) (#x0000000000000000 #x0000000000000001 x (bvnot Start) (smol Start) (ehad Start) (arba Start) (shesh Start) (bvand Start Start) (bvor Start Start) (bvxor Start Start) (bvadd Start Start) (im Start Start Start)))))
(constraint (= (f #x045E053446B25FE4) #x0000045E053446B2))
(constraint (= (f #xEE842078FB4A876E) #x00006E842078FB4A))
(constraint (= (f #x47C040A89A7ACC70) #x000047C040A89A7A))
(constraint (= (f #x5DA97D682666C6F4) #x00005DA97D682666))
(constraint (= (f #x0BC8FEE23DE6C1E6) #x00000BC8FEE23DE6))
(constraint (= (f #xC055062D481BFB6A) #x00004055062D481B))
(constraint (= (f #x5B36251FC929AB6C) #x00005B36251FC929))
(constraint (= (f #x4DF1AF2B4BFFC426) #x00004DF1AF2B4BFF))
(constraint (= (f #x04566885E717653C) #x000004566885E717))
(constraint (= (f #x33FEC3EAA30F0C5C) #x000033FEC3EAA30F))
(constraint (= (f #x8C45F9D51E30C42F) #x000008C45F9D51E3))
(constraint (= (f #xF52A7EDC5C34F131) #x00000F52A7EDC5C3))
(constraint (= (f #xFEA6A9DAA3A23B45) #x00000FEA6A9DAA3A))
(constraint (= (f #x6736DEE1DC265E53) #x000006736DEE1DC2))
(constraint (= (f #xE5BA14A3ADDAC88B) #x00000E5BA14A3ADD))
(constraint (= (f #xFFFF0000FFFF0002) #x00007FFF0000FFFF))
(constraint (= (f #xFFFFFFFFFFFFFFF2) #x0000000000000000))
(constraint (= (f #xFFFFFFFFFFFFFFF4) #x0000000000000000))
(constraint (= (f #xFFFFFFFFFFFFFFF6) #x0000000000000000))
(constraint (= (f #xFFFFFFFFFFFFFFFE) #x0000000000000000))
(constraint (= (f #xFFFFFFFFFFFFFFFC) #x0000000000000000))
(constraint (= (f #x0000000000000001) #x0000000000000000))
(constraint (= (f #x66CBEC5C477F941D) #x0000000000000000))
(constraint (= (f #xE92349A4D9B5038D) #x0000000000000000))
(constraint (= (f #xA12049689879557F) #x0000000000000000))
(constraint (= (f #xFBDE47BE5BA31159) #x0000000000000000))
(constraint (= (f #xB01C291101F50311) #x0000000000000000))
(constraint (= (f #xFFFFFFFFFFFFFFF5) #x0000000000000000))
(constraint (= (f #xFFFFFFFFFFFFFFF3) #x0000000000000000))
(constraint (= (f #xFFFFFFFFFFFFFFF7) #x0000000000000000))
(constraint (= (f #x77C503A607D52ADF) #x0000000000000000))
(constraint (= (f #x1575609728A856A2) #x00001575609728A8))
(constraint (= (f #xBBC04BA560BAD7DB) #x00000BBC04BA560B))
(constraint (= (f #x74042A599AD1FB8A) #x000074042A599AD1))
(constraint (= (f #xA9F94950C0A26066) #x000029F94950C0A2))
(constraint (= (f #xE239B70E68527B2A) #x00006239B70E6852))
(constraint (= (f #x05508219292502F1) #x0000000000000000))
(constraint (= (f #xB68773976B62448B) #x00000B68773976B6))
(constraint (= (f #x1A787F094D0264BD) #x000001A787F094D0))
(constraint (= (f #xA30562C454536C03) #x0000000000000000))
(constraint (= (f #xFFFFFFFFFFFFFFF0) #x0000000000000000))
(constraint (= (f #x7FFFFFFFFFFFFFF6) #x00007FFFFFFFFFFF))
(constraint (= (f #x7FFFFFFFFFFFFFF4) #x00007FFFFFFFFFFF))
(constraint (= (f #xFFFFFFFFFFFFFFFE) #x0000000000000000))
(constraint (= (f #xFFFFFFFFFFFFFFFA) #x0000000000000000))
(constraint (= (f #xBD6B57B6B77FEBD6) #x00003D6B57B6B77F))
(constraint (= (f #xFFFFFFFFFFFFFFFC) #x0000000000000000))
(constraint (= (f #xFFFFFFFFFFFFFFF9) #x0000000000000000))
(constraint (= (f #xF109D5DA9029DA82) #x00007109D5DA9029))
(constraint (= (f #x1A90EEAEDC49A6F4) #x00001A90EEAEDC49))
(check-synth)
