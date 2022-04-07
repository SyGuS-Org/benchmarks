; org.apache.commons.lang3.StringUtils
; public static boolean containsNone(final CharSequence cs, final char... searchChars)

; inputs
(declare-var |seq.size| Int)
(declare-var |seq| (Array Int Int))
(declare-var |searchChars.size| Int)
(declare-var |searchChars| (Array Int Int))

; sketch
(synth-fun |hole|
  (
    (|seq.size| Int)
    (|seq| (Array Int Int))
    (|searchChars.size| Int)
    (|searchChars| (Array Int Int))
  )
  Bool
)

; return value
(define-fun |return|
  (
    (|seq.size| Int)
    (|seq| (Array Int Int))
    (|searchChars.size| Int)
    (|searchChars| (Array Int Int))
  )
  Bool
  (|hole| |seq.size| |seq| |searchChars.size| |searchChars|)
)

; precondition
(define-fun pre 
  (
    (|seq.size| Int)
    (|seq| (Array Int Int))
    (|searchChars.size| Int)
    (|searchChar| (Array Int Int))
  )
  Bool
  (and (>= |seq.size| 0) (>= |searchChars.size| 0))
)

; postcondition
(constraint 
  (=>
    (pre |seq.size| |seq| |searchChars.size| |searchChars|)
    (ite
      (|return| |seq.size| |seq| |searchChars.size| |searchChars|)
      (forall ((index1 Int) (index2 Int))
        (=>
          (and (>= index1 0) (< index1 |seq.size|) (>= index2 0) (< index2 |searchChars.size|))
          (not (= (select |seq| index1) (select |searchChars| index2)))
        )
      )
           (not (forall ((index1 Int) (index2 Int))
        (=>
          (and (>= index1 0) (< index1 |seq.size|) (>= index2 0) (< index2 |searchChars.size|))
          (not (= (select |seq| index1) (select |searchChars| index2)))
        )
      )
    ))
  )
)

(check-synth)
