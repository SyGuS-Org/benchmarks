; org.apache.commons.lang3.StringUtils
; static String appendIfMissing(final String str, final CharSequence suffix)

; inputs
(declare-var strSize Int)
(declare-var |str| (Array Int Int))
(declare-var suffixSize Int)
(declare-var |suffix| (Array Int Int))
(declare-var index Int)

; helper
(define-fun append
  (
    (strSize Int)
    (|str| (Array Int Int))
    (suffixSize Int)
    (|suffix| (Array Int Int))
  )
  Bool
  (exists ((i Int)) 
    (not (= (select |str| (+ (- strSize suffixSize) i)) (select |suffix| i)))
  ))


(synth-fun |hole-size|
  (
    (strSize Int)
    (|str| (Array Int Int))
    (suffixSize Int)
    (|suffix| (Array Int Int))
  )
  Int
)


; postcondition when suffix is appended

(constraint (ite 
  (append strSize |str| suffixSize|suffix|)
  (= (|hole-size| strSize |str| suffixSize|suffix|) (+ strSize suffixSize))
  (= (|hole-size| strSize |str| suffixSize |suffix|) strSize)))



(check-synth)
