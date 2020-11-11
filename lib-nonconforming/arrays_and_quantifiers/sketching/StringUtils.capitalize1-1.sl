; org.apache.commons.lang3.StringUtils
; public static String capitalize(final String str)

; inputs
(declare-var |str.size| Int)
(declare-var |str| (Array Int Int))
(declare-var index Int)

; sketch
(synth-fun |hole-char|
  (
    (|i| Int)
    (|str.size| Int)
    (|str| (Array Int Int))
  )
  Int)



; precondition
(define-fun pre 
  (
    (|str.size| Int)
    (|str| (Array Int Int))
  )
  Bool
  (and (>= index 0)(>= str.size 0)))

; post

(constraint (ite
  (and (pre |str.size| |str|)(>= index 0) (< index str.size))
  (= (|hole-char| index |str.size| |str|)(- (select |str| 0) 32))
  (= (|hole-char| index |str.size| |str|)(select |str| 0))))



(check-synth)
