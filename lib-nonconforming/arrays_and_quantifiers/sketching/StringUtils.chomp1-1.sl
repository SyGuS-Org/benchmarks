; org.apache.commons.lang3.StringUtils
; public static String chomp(final String str)

; inputs
(declare-var |str.size| Int)
(declare-var |str| (Array Int Int))

; helper
(define-fun ends_on_cr_or_lf
  (
    (|str| (Array Int Int))
    (|str.size| Int)

  ) Bool
  (or
    (and (>= |str.size| 1) (= (select |str| (- |str.size| 1)) 13))
    (and (>= |str.size| 1) (= (select |str| (- |str.size| 1)) 10))
  )
)

(define-fun ends_on_crlf
  (
    (|str| (Array Int Int))
    (|str.size| Int)

  ) Bool
  (and
    (>= |str.size| 2)
    (= (select |str| (- |str.size| 2)) 13)
    (= (select |str| (- |str.size| 1)) 10)
  )
)


(synth-fun |hole-size|
  (
    (|str.size| Int)
    (|str| (Array Int Int))
  )
  Int)




(define-fun |return.size|
  (
    (|str.size| Int)
    (|str| (Array Int Int))
  )
  Int
  (|hole-size| |str.size| |str|))

; precondition
(define-fun pre 
  (
    (|str.size| Int)
    (|str| (Array Int Int))
  )
  Bool
  true)



(constraint (ite (ends_on_crlf  |str| |str.size|)
(= (|return.size| |str.size| |str|) (- |str.size| 2))
(= (|return.size| |str.size| |str|)(- |str.size| 1))

))


(check-synth)
