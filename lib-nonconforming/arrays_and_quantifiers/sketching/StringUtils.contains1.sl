; org.apache.commons.lang3.StringUtils
; public static boolean contains(final CharSequence seq, final int searchChar)

; inputs
(declare-var |seq.size| Int)
(declare-var |seq| (Array Int Int))
(declare-var |searchChar| Int)

; sketch
(synth-fun |hole|
  (
    (|seq.size| Int)
    (|seq| (Array Int Int))
    (|searchChar| Int)
  )
  Bool
)


; precondition
(define-fun pre 
  (
    (|seq.size| Int)
    (|seq| (Array Int Int))
    (|searchChar| Int)
  )
  Bool
  (>= |seq.size| 0)
)

; postcondition
(constraint
  (=>
    (pre |seq.size| |seq| |searchChar|)
    (ite 
      (exists ((index Int)) (and (>= index 0) (< index |seq.size|) (= (select |seq| index) |searchChar|)))
      (|hole| |seq.size| |seq| |searchChar|)
      (not (|hole| |seq.size| |seq| |searchChar|))
    )
  )
)

(check-synth)
