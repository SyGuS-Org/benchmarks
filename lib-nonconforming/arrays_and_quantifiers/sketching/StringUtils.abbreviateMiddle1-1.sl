; org.apache.commons.lang3.StringUtils
; public static String abbreviateMiddle(final String str, final String middle, final int length)

; inputs
(declare-var |str.size| Int)
(declare-var |str| (Array Int Int))
(declare-var |middle.size| Int)
(declare-var |middle| (Array Int Int))
(declare-var |length| Int)



(synth-fun |return.size|
  (
    (|str.size| Int)
    (|str| (Array Int Int))
    (|middle.size| Int)
    (|middle| (Array Int Int))
    (|length| Int)
  )
  Int)

; precondition
(define-fun pre 
  (
    (|str.size| Int)
    (|middle.size| Int)
  )
  Bool
  (and (>= |str.size| 0) (>= |middle.size| 0)))

; postcondition when string is short

(constraint (=>
  (pre |str.size| |middle.size|) (ite (or (<= |str.size| |length|) (<= |length| (+ |middle.size| 2)))
  (= (|return.size| |str.size| |str| |middle.size| |middle| |length|) |str.size|)
  (= (|return.size| |str.size| |str| |middle.size| |middle| |length|) |length|))))




(check-synth)
