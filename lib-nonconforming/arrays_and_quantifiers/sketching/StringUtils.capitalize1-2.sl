; org.apache.commons.lang3.StringUtils
; public static String capitalize(final String str)

; inputs
(declare-var |str.size| Int)
(declare-var |str| (Array Int Int))
(declare-var index Int)



(synth-fun |hole-size|
  (
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

; postcondition

(constraint (=>
  (pre |str.size| |str|)
  (= (hole-size |str.size| |str|) |str.size|)))



(check-synth)
