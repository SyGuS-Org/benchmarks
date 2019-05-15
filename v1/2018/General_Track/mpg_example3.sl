(set-logic LIA)

(synth-fun eq2 ( (x Int) (y Int) (z Int) ) Int
    ((Start Int (x
                 y
	  	 z
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


(define-fun two-times ((b1 Int )) Int ( plus2 b1 b1 ))  
(define-fun three-times ((b1 Int )) Int ( plus3 b1 b1 b1 ))  
(define-fun five-times  ((b1 Int )) Int ( plus5 b1 b1 b1 b1 b1 ))
(define-fun six-times  ((b1 Int )) Int ( plus6 b1 b1 b1 b1 b1 b1 ))
(define-fun seven-times ((b1 Int )) Int ( plus7 b1 b1 b1 b1 b1 b1 b1 ))
(define-fun nine-times  ((b1 Int )) Int ( plus9 b1 b1 b1 b1 b1 b1 b1 b1 b1))
(define-fun ten-times  ((b1 Int )) Int ( plus9 b1 b1 b1 b1 b1 b1 b1 b1 (plus2 b1 b1)))
(define-fun minus ((b1 Int)) Int ( - 0  b1 ))

(declare-var x Int ) 
(declare-var y Int ) 
(declare-var z Int ) 

; ite 3z >= 5
;  ite 2x <= y
;    3x - 5y +7z +9
;    2x -9z +5
; else 
; ite 2z <= -y +2x
;   - 6x + 3y + 4
;    9x + 9y -z + 5      


( constraint (  iteB  (>=  ( three-times z)  5  ) 
		       ( iteB  (  <=  ( two-times x )  y  ) 
		  	      (  =  ( eq2 x y z ) ( plus4  ( three-times x)  ( minus ( five-times y )) (seven-times z ) 9 ) )
			        (  =  ( eq2 x y z ) ( plus4 x x  (minus ( nine-times z) ) 5 ) )  
			    )
  		      ( iteB  (  <=  ( two-times z ) ( plus3 (minus y) x x ) ) 
			      (  =  ( eq2 x y z ) ( plus3  (minus ( six-times x) ) ( three-times y )  4 ) )
			      (  =  ( eq2 x y z )  ( plus3 ( nine-times  (plus2 x y ) )  (minus z ) 5 ) ) 
			   )
	   
  )   
)

(check-synth)

