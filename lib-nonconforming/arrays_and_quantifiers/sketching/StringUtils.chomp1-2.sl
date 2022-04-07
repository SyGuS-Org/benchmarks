; org.apache.commons.lang3.StringUtils
; public static String chomp(final String str)

; inputs
(declare-var |str.size| Int)
(declare-var |str| (Array Int Int))
(declare-var index Int)

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


(synth-fun |hole-char|
  (
    (|i| Int)
    (|str.size| Int)
    (|str| (Array Int Int))
  )
  Int)

(define-fun |return|
  (
    (|i| Int)
    (|str.size| Int)
    (|str| (Array Int Int))
  )
  Int
  (|hole-char| |i| |str.size| |str|))


(define-fun |hole-size|
  (
    (|str.size| Int)
    (|str| (Array Int Int))
  )
  Int
(+ (- (ite (ends_on_crlf str str.size) 2 1)) str.size))


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



(constraint (ite (or 
      (not (ends_on_cr_or_lf str str.size))
      (and (>= 0 index ) (< index (|return.size| |str.size| str))))
        (= (|return| index |str.size| |str|) (select |str| index))
      (= (|return| index |str.size| |str|) 0))
     )


(check-synth)
