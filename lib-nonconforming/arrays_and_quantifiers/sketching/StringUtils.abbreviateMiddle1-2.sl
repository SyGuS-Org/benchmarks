; org.apache.commons.lang3.StringUtils
; public static String abbreviateMiddle(final String str, final String middle, final int length)

; inputs
(declare-var |str.size| Int)
(declare-var |str| (Array Int Int))
(declare-var |middle.size| Int)
(declare-var |middle| (Array Int Int))
(declare-var |length| Int)

; sketch
(synth-fun |hole-char|
  (
    (|i| Int)
    (|str.size| Int)
    (|str| (Array Int Int))
    (|middle.size| Int)
    (|middle| (Array Int Int))
    (|length| Int)
  )
  Int)

(define-fun |return|
  (
    (|i| Int)
    (|str.size| Int)
    (|str| (Array Int Int))
    (|middle.size| Int)
    (|middle| (Array Int Int))
    (|length| Int)
  )
  Int
  (|hole-char| |i| |str.size| |str| |middle.size| |middle| |length|))



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
  (and (pre |str.size| |middle.size|) (or (<= |str.size| |length|) (<= |length| (+ |middle.size| 2))))
  (forall ((index Int)) (= (|return| index |str.size| |str| |middle.size| |middle| |length|) (select |str| index)))))


(constraint (=>
  (and (pre |str.size| |str| |length|) (and (> |str.size| |length|) (> |length| (+ |middle.length| 2))))
  (forall ((index Int)) (= (|return| index |str.size| |str| |middle.size| |middle| |length|)
    (ite (<= index (- |str.size| 4)) (select |str| index) 46)))))

(check-synth)
