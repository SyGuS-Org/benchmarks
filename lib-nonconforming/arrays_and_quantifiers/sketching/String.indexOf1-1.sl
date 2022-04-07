; java.lang.String.indexOf
; public int indexOf(int)

; inputs
(declare-var index Int)
(declare-var index! Int)
(declare-var str (Array Int Int))
(declare-var ch Int)
(declare-var loc Int)
(declare-var loc! Int)

; sketch
(synth-fun |hole|
  (
    (index Int)
    (str (Array Int Int))
    (ch Int)
  )
  Int)



(define-fun trans ((index Int) (str (Array Int Int))(ch Int)(loc Int)(index! Int)(loc! Int) ) Bool
(and
  (= index! (+ index 1))
  (ite (> loc (- 1)) (= loc! loc)
    (= loc! (hole index str ch)))))


; precondition
(define-fun pre 
  (
    (index Int)
    (loc Int)
  )
  Bool
  (and (= index 0) (= loc (- 1))(= loc! (- 1))))

; postcondition when ch is found

(define-fun post ((index Int) (str (Array Int Int))(ch Int)(loc Int)) Bool
  (and (>= index 0)
  (ite (forall ((i Int)) (=> (and (< i index)(>= i 0)) (not (= (select str i) ch))))
    (= loc (- 1))
    (= (select str loc) ch ))))

; postcondition when ch is not found

(constraint (=> (pre index loc)(post index str ch loc )))
(constraint (=> (< index 2)(=> (and (post index str ch loc) (trans index str ch loc index! loc!)) (post index! str ch loc!))))

(check-synth)
