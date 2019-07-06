(set-logic LIA)

(synth-fun eq2 ( (x Int) (y Int) (z Int) (z1 Int) ) Int
    ((Start Int (x
                 y
	  	           z
                 z1
                 0
                 1
                 (+ Start Start)
                 (- Start Start)
                 (ite StartBool Start Start)))
     (StartBool Bool ((and StartBool StartBool)
                      (or  StartBool StartBool)
                      (not StartBool)
                      (<=  Start Start)
                      (=   Start Start)
                      (>=  Start Start)))))

(define-fun iteB (( b1 Bool ) (b2 Bool ) (b3 Bool )) Bool ( or ( and b1 b2 ) ( and (not b1 ) b3 ) ) )
(define-fun plus2 ((b1 Int) (b2 Int)) Int ( + b1 b2))
(define-fun plus3 ((b1 Int) (b2 Int) (b3 Int)) Int ( +  ( + b1 b2) b3))
(define-fun plus4 ((b1 Int) (b2 Int) (b3 Int) (b4 Int)) Int ( +  ( plus3  b1 b2 b3) b4))
(define-fun plus5 ((b1 Int) (b2 Int) (b3 Int) (b4 Int) (b5 Int)) Int (+  ( plus4 b1 b2 b3 b4) b5))
(define-fun plus6 ((b1 Int) (b2 Int) (b3 Int) (b4 Int) (b5 Int) (b6 Int) ) Int (+  ( plus5 b1 b2 b3 b4  b5) b6  ))
(define-fun plus7 ((b1 Int) (b2 Int) (b3 Int) (b4 Int) (b5 Int) (b6 Int) (b7 Int )) Int (+  ( plus6 b1 b2 b3 b4  b5 b6 ) b7  ))
(define-fun plus8 ((b1 Int) (b2 Int) (b3 Int) (b4 Int) (b5 Int) (b6 Int) (b7 Int) (b8 Int )) Int (+  ( plus7 b1 b2 b3 b4  b5 b6 b7 ) b8  ))
(define-fun plus9 ((b1 Int) (b2 Int) (b3 Int) (b4 Int) (b5 Int) (b6 Int) (b7 Int) (b8 Int ) (b9 Int)  ) Int (+  ( plus8 b1 b2 b3 b4 b5 b6 b7 b8 ) b9 ))

(define-fun or3 ((b1 Bool) (b2 Bool) (b3 Bool)) Bool ( or ( or b1 b2) b3))


(define-fun one-times ((b1 Int )) Int b1 )  
(define-fun two-times ((b1 Int )) Int ( plus2 b1 b1 ))  
(define-fun three-times ((b1 Int )) Int ( plus3 b1 b1 b1 ))  
(define-fun four-times ((b1 Int )) Int ( plus4 b1 b1 b1 b1 ))  
(define-fun five-times  ((b1 Int )) Int ( plus5 b1 b1 b1 b1 b1 ))
(define-fun six-times  ((b1 Int )) Int ( plus6 b1 b1 b1 b1 b1 b1 ))
(define-fun seven-times ((b1 Int )) Int ( plus7 b1 b1 b1 b1 b1 b1 b1 ))
(define-fun nine-times  ((b1 Int )) Int ( plus9 b1 b1 b1 b1 b1 b1 b1 b1 b1))
(define-fun ten-times  ((b1 Int )) Int ( plus9 b1 b1 b1 b1 b1 b1 b1 b1 (plus2 b1 b1)))
(define-fun eleven-times  ((b1 Int )) Int ( plus8 b1 b1 b1 b1 b1 b1 (plus3 b1 b1 b1) (plus2 b1 b1)))

(define-fun minus ((b1 Int)) Int ( - 0  b1 ))


(declare-var x Int ) 
(declare-var y Int ) 
(declare-var z Int ) 
(declare-var z1 Int)

; ite 2x+ z - z1 >= -y
;  ite x + z1 <= y
;    10x + 20y + 15z - 99
;    9y + 25z1 - 11
; else 
; ite x + 3z + z1 <= -9
;    11x + 15y + 30z + 22z1 + 11
;    16x + 18z + 5z1  - 55      


( constraint (  iteB  (>=  ( plus3 ( two-times x ) z ( minus z1) )   ( minus y )  ) 
		         ( iteB  (  <=  ( plus2 x z1 )   y ) 
		  	        (  =  ( eq2 x y z  z1 ) ( plus4  ( ten-times x) ( two-times (ten-times y )) ( three-times ( five-times z) ) -99 ) ) 
			        (  =  ( eq2 x y z  z1 ) ( plus3  (nine-times y )  (five-times (five-times z1)) -11 ) ) 
			      )
             ( iteB (  <=  ( plus3  x  ( three-times z) z1 ) -9 ) 
			      (  =  ( eq2 x y z z1 )  ( plus5 ( eleven-times x) ( five-times (three-times y ) ) (three-times (ten-times z ) ) (two-times ( eleven-times z1 )) 11 ) ) 
			      (  =  ( eq2 x y z z1 )  ( plus4  (four-times (four-times x)) ( three-times (six-times z )) (five-times z1) -55 ) ) 
			   )
	     ) 
  )   


(check-synth)

