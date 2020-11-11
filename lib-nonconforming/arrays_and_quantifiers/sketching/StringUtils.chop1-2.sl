; org.apache.commons.lang3.StringUtils
; public static String chop(final String str)

; inputs
(declare-var |str.size| Int)
(declare-var |str| (Array Int Int))

;sketch
(synth-fun |hole-char|
  (
    (|i| Int)
    (|str.size| Int)
    (|str| (Array Int Int))
  )
  Int)



; helper
(define-fun ends_on_crlf
  (
    (|str| (Array Int Int))
    (|str.size| Int)
  )
  Bool
  (and
    (>= |str.size| 2)
    (= (select |str| (- |str.size| 2)) 13)
    (= (select |str| (- |str.size| 1)) 10)
  )
)

(define-fun |hole-size|
  (
    (|str.size| Int)
    (|str| (Array Int Int))
  )
  Int

  (ite (ends_on_crlf |str| |str.size|)
  (- |str.size| 2)
  (ite (>= |str.size| 1)
  (- |str.size| 1) 
  |str.size|)))


; postcondition when string ends on crlf


(constraint (ite
  (ends_on_crlf |str| |str.size|)
  (forall ((index Int))
    (=>
      (and (>= index 0) (< index (|hole-size| |str.size| |str|)))
      (= (hole-char index |str.size| |str|) (select |str| index))
    )
  )
  (forall ((index Int)) (= (hole-char index |str.size| |str|) (select |str| index)))))

; postcondition when string does not end on crlf



(check-synth)
