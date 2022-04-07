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





; sketch
(synth-fun |hole-char|
  (
    (index Int)
    (strSize Int)
    (|str| (Array Int Int))
    (suffixSize Int)
    (|suffix| (Array Int Int))
  )
  Int
  )



(constraint (ite
  (and (append strSize |str| suffixSize|suffix|) (<= index strSize)) 
    (= (|hole-char| index strSize |str| suffixSize|suffix|)
    (select |str| index)) 
    (ite (<= index strSize)
    (= (|hole-char| index strSize |str| suffixSize|suffix|)(select |suffix| (- index strSize)))
    (= 1 1))))


(check-synth)
