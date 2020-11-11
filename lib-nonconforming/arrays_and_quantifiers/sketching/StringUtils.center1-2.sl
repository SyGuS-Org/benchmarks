; org.apache.commons.lang3.StringUtils
; public static String center(String str, final int size, final char padChar)

; inputs
(declare-var |str.size| Int)
(declare-var |str| (Array Int Int))
(declare-var |size| Int)
(declare-var |padChar| Int)
(declare-var |index| Int)

; sketch
(synth-fun |hole-char|
  (
    (|i| Int)
    (|str.size| Int)
    (|str| (Array Int Int))
    (|size| Int)
    (|padChar| Int)
  )
  Int)


(constraint (ite
  (>= |str.size| |size|)
  (= (|hole-char| index |str.size| |str| |size| |padChar|) (select |str| index))
  (ite (or (<= index (div (- |size| |str.size| ) 2))
             (> index (+ (div (- |size| |str.size| ) 2) |str.size|)))
      (= (|hole-char| index |str.size| |str| |size| |padChar|) |padChar|)
     (= (|hole-char| index |str.size| |str| |size| |padChar|) (select |str| (- index |str.size|))))))


(check-synth)
